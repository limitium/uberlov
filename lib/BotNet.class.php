<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BotNet
 *
 * @author Администратор
 */
class BotNet {

//    public $start = 1278288000;
    public $start = 1308288000; //17 june 2011
    public $spamer = "spamer";
    public $activeBots;
    public $totalBots;
    private static $instance;

    /**
     *
     * @return BotNet 
     */
    public static function create() {
        if (!self::$instance) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    private function __construct() {
        $this->start = time() - 40 * 24 * 60 * 60;
        $this->totalBots = Doctrine_Query::create()
                ->from('Bot')
                ->count();

        $this->activeBots = Doctrine_Query::create()
                ->from('Bot b')
                ->leftJoin('b.Profile p')
                ->leftJoin('b.NickMap')
                ->innerJoin('b.BotData')
                ->execute();
    }

    public function fillOutBots($count, $from=0) {
        $nicks = Doctrine_Query::create()
                ->from('BotNick')
                ->offset($this->totalBots)
                ->limit($count)
                ->orderBy('id')
                ->execute();

        $data = Doctrine_Query::create()
                ->from('BotData')
                ->offset($this->activeBots->count())
                ->limit($count)
                ->orderBy('id')
                ->execute();

        if ($nicks->count() < $count || $data->count() < $count) {
            throw new Exception('Not enought bot data');
        }

        $times = $this->getNonLinarTimes($count, $from);
        $nicksIterator = $nicks->getIterator();
        $dataIterator = $data->getIterator();
        for ($i = 0; $i < $count; $i++) {
            $botData = null;
            if (rand(0, 10000) / 10000 < 0.65) {
                $botData = $dataIterator->current();
                $dataIterator->next();
            }

            $this->addBot($nicksIterator->current(), date("Y-m-d H:i:s", $times[$i]), $botData);
            $nicksIterator->next();
        }
    }

    private function addBot(BotNick $nick, $dateBorn, BotData $data=null) {
        $bot = new sfGuardUser();
        $botProfile = new sfGuardUserProfile();
        $botProfile->setUser($bot);
        $Bot = new Bot();

        $bot->username = $nick->nick;
        $bot->email_address = ($data ? $data->uid : md5($nick->nick . "uberlov mail")) . "@uberlov.ru";
        $bot->created_at = $dateBorn;
        $bot->updated_at = $dateBorn;
        $bot->last_login = $dateBorn;

        if (!empty($data)) {
            if (isset($data->userpic) && strstr($data->userpic, 'jpg')) {
                $userpic = new sfThumbnail(48, 48, false);
                $userpic->loadFile("Z:/home/ht/www/images/userpic/bot/" . $data->userpic);
                $name = md5($data->uid . 'userpic fuck yea') . '.png';
                $userpic->save(sfConfig::get('sf_user_pic_dir') . $name, 'image/png');
                $botProfile->userpic = $name;
            }
            if (isset($data->name)) {
                $names = explode(" ", $data->name);
                $bot->last_name = isset($names[1]) ? $names[1] : "";
                $bot->first_name = isset($names[0]) ? $names[0] : "";
            }
            $Bot->setBotDataId($data->id);
            $this->activeBots->add($bot);
        }
        $botProfile->sex = 1;
        $botProfile->validate_at = $dateBorn;
        $botProfile->created_at = $dateBorn;
        $botProfile->updated_at = $dateBorn;

        $bot->save();
        $botProfile->save();
        $Bot->setBotNickId($nick->id);
        $Bot->setProfileId($botProfile->id);
        $Bot->save();

        $this->totalBots++;
    }

    private function getNonLinarTimes($count, $from=0, $to=0) {
        if (!$from) {
            $from = $this->start;
        }
        if (!$to) {
            $to = time() + 5200000;
        }
        $d = $to - $from;
        $times = array();
        for ($i = 0; $i < $count; $i++) {
            $times[] = round(atan(sqrt(rand(0, 10000) / 10000)) * $d + $from);
        }
        sort($times);
        return $times;
    }

    private function getRandomDate($from=0, $to=0) {
        if (!$from) {
            $from = $this->start;
        }
        if (!$to) {
            $to = time();
        }
        return date("Y-m-d H:i:s", rand($from, $to));
    }

    /**
     *
     * @return Bot 
     */
    public function getRandomBot() {
        return $this->activeBots[rand(0, $this->activeBots->count() - 1)];
    }

    private function getBotByNick($nick) {
        if (!$nick) {
            return $this->getRandomBot();
        }
        $nick = $nick;
        foreach ($this->activeBots as $bot) {
            foreach ($bot->getNickMap() as $nickMap) {
                if ($nickMap->nick == $nick) {
                    return $bot;
                }
            }
        }

        $bot = $this->getRandomBot();

        $nm = new NickMap();
        $nm->nick = $nick;
        $nm->setBot($bot);
        $nm->save();

        return $bot;
    }

    public function attachTo($object, Bot $bot, $from = 0) {
        $botBorn = $bot->getProfile()->getDateTimeObject('created_at')->format('U');
        if (!$from || $from < $botBorn) {
            $from = $botBorn;
        }

        foreach (array('created_by', 'updated_by') as $f) {
            if (isset($object->$f)) {
                Doctrine_Query::create()->update($object->getTable()->getComponentName())
                        ->set($f, $bot->getProfile()->id)
                        ->where('id = ?', $object->id)
                        ->execute();
                $object->$f = $bot->getProfile()->id;
            }
        }

        $date = $this->getRandomDate($from);
        foreach (array('created_at', 'updated_at') as $f) {
            if (isset($object->$f)) {
                Doctrine_Query::create()->update($object->getTable()->getComponentName())
                        ->set($f, "'$date'")
                        ->where('id = ?', $object->id)
                        ->execute();
                $object->$f = $date;
            }
        }
    }

    private function updateBot(Bot $bot) {
        if (rand(0, 100) < 30) {
            $f = new Friend();
            $f->setAccepter($bot->getProfile());
            $f->setRequester($this->getRandomBot()->getProfile());
            if (rand(0, 100) < 85) {
                $f->setAccepted(1);
            }
            try {
                $f->save();
            } catch (Exception $e) {
                fb($e->getMessage());
            }
        }

        $maxVoters = rand(0, 5);
        $voters = $maxVoters - round(atan(sqrt(rand(0, 10000) / 10000)) * $maxVoters);
        for ($i = 0; $i < $voters; $i++) {
            $v = new VoteProfile();
            $v->setProfile($bot->getProfile());
            $v->setValue($this->getRandomBot()->getProfile()->getForce());
            $v->setVoter($this->getRandomBot()->getProfile());
            $v->save();
        }
    }

    public function updateObjectVotes($object) {
        $max = $object instanceof Location ? 22 : 11;
        $maxVoters = rand(0, $max);
        $voters = $maxVoters - round(atan(sqrt(rand(0, 10000) / 10000)) * $maxVoters);
        $voteType = "Vote" . ($object instanceof Comment ? "Comment" : get_class($object));
        $voteSetter = $object->getTable()->getTableName() . "_id";
        for ($i = 0; $i < $voters; $i++) {
            $v = new $voteType();
            $v->$voteSetter = $object->id;
            $v->setValue($this->getRandomBot()->getProfile()->getForce());
            $v->setVoter($this->getRandomBot()->getProfile());
            $v->save();
        }
    }

    public function publishedByBot($object, $field, $from=0) {
        $data = trim(strip_tags($object->$field));
        preg_match("/^\%(.+)?\%.*/i", $data, $match);
        $nick = isset($match[1]) ? $match[1] : "";

        $text = $nick ? str_replace("%$nick%", "", $object->$field) : $object->$field;
        //@todo: change it!;

        Doctrine_Query::create()->update($object->getTable()->getComponentName())
                ->set($field, "?", array($text))
                ->where('id = ?', $object->id)
                ->execute();
        $object->$field = $text;

        $bot = $this->getBotByNick($nick);
        $this->attachTo($object, $bot, $from);

        $this->updateObjectVotes($object);
        $this->updateBot($bot);
    }

    public function spammed($object, $field, $from=0) {
        if (sfContext::getInstance()->getUser()->getUsername() == $this->spamer) {
            $this->publishedByBot($object, $field, $from);
        }
    }

}

