{"status":"ok",
"id":<?php echo $profile->getId() ?>,
"nick":"<?php echo $profile->getNickName() ?>",
"userpic":"<?php echo $profile->getUserpic() ? '/images/userpic/' . $profile->getUserpic() : 'http://www.gravatar.com/avatar/' . md5($profile->getEmail()) . '?d=wavatar&s=32'; ?>"}
