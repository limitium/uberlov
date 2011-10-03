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

    public $start = 1278288000;
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
        $this->totalBots = Doctrine_Query::create()
                ->from('IsBot')
                ->count();

        $this->activeBots = Doctrine_Query::create()
                ->from('IsBot b')
                ->leftJoin('b.Profile p')
                ->leftJoin('b.NickMap')
                ->where('i.active = 1')
                ->execute();
    }

    public function fillOutBots($count, $from=0) {
        $nicks = Doctrine_Query::create()
                ->from('BotNick')
                ->offset($this->totalBots)
                ->limit($count)
                ->execute();

        $data = Doctrine_Query::create()
                ->from('BotData')
                ->offset($this->activeBots->count())
                ->limit($count)
                ->execute();

        if ($nicks->count() < $count || $data->count() < $count) {
            throw new Exception('Not enought bot data');
        }

        $times = $this->getNonLinarTimes($count, $from);
        $nicksIterator = $nicks->getIterator();
        $dataIterator = $data->getIterator();
        for ($i = 0; $i < $count; $i++) {
            $botData = array();
            if (rand(0, 10000) / 10000 < 0.6) {
                $botData = $dataIterator->current();
                $data->next();
            }

            $this->addBot($nicksIterator->current(), date("Y-m-d H:i:s", $times[$i]), $botData);
            $nicksIterator->next();
        }
    }

    private function addBot($nick, $dateBorn, $data=array()) {
        $bot = new sfGuardUser();
        $botProfile = new sfGuardUserProfile();
        $botProfile->setUser($bot);
        $isBot = new IsBot();

        $bot->username = $nick;
        $bot->is_active = true;
        $bot->email_address = (isset($data['uid']) ? $data['uid'] : md5($nick . "uberlov mail")) . "@uberlov.ru";
        $bot->created_at = $dateBorn;
        $bot->updated_at = $dateBorn;
        $bot->last_login = $dateBorn;

        if (!empty($data)) {
            if (isset($data['userpic']) && strstr($data['userpic'], 'jpg')) {
                $userpic = new sfThumbnail(48, 48, false);
                $userpic->loadFile("Z:/home/ht/www/images/userpic/bot/" . $data['userpic']);
                $name = md5($data['uid'] . 'userpic fuck yea') . '.png';
                $userpic->save(sfConfig::get('sf_user_pic_dir') . $name, 'image/png');
                $botProfile->userpic = $name;
            }
            if (isset($data['name'])) {
                $names = explode(" ", $data['name']);
                $bot->last_name = isset($names[1]) ? $names[1] : "";
                $bot->first_name = isset($names[0]) ? $names[0] : "";
            }
            $isBot->setActive(true);
            $this->activeBots->add($bot);
        }
        $botProfile->sex = 1;
        $botProfile->validate_at = $dateBorn;
        $botProfile->created_at = $dateBorn;
        $botProfile->updated_at = $dateBorn;

        $bot->save();
        $botProfile->save();
        $isBot->setProfileId($botProfile->id);
        $isBot->save();

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

    private function getRandomBot() {
        return $this->activeBots[rand(0, $this->activeBots->count() - 1)];
    }

    private function getBotByNick($nick) {
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
        return $bot;
    }

    public function attachTo($object, $nick, $from = 0) {
        $bot = $this->getBotByNick($nick);
        if (!$from) {
            $from = $bot->getProfile()->getDateTimeObject('created_at')->format('U');
        }

        foreach (array('created_by', 'updated_by') as $f) {
            if (isset($object->f)) {
                Doctrine_Query::create()->update($object->getTable()->getComponentName())
                        ->set($f, $bot->getProfile()->id)->execute();
            }
        }

        $date = $this->getRandomDate($from);
        foreach (array('created_at', 'updated_at') as $f) {
            if (isset($object->f)) {
                Doctrine_Query::create()->update($object->getTable()->getComponentName())
                        ->set($f, $date)->execute();
            }
        }
    }

    public function publishedByBot($object, $field, $from=0) {
        preg_match("/^\%(.+)?\%/i", $object->$field, $match);
        $nick = $match[0];
        $object->$field = substr($object->$field, strlen($object->$field) + 2);
        $this->attachTo($object, $nick, $from);
    }

}

