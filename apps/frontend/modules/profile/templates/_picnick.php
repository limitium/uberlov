<span class="picNick">
<?php $size = isset($size)?$size:32; ?>
<a class="userpic" href="<?php echo url_for('profile/show?id=' . $profile->getId()); ?>"><?php echo image_tag($profile->getUserpic() ? '/images/userpic/' . $profile->getUserpic() : 'http://www.gravatar.com/avatar/' . md5($profile->getEmail()) . '?d=wavatar&s='.$size,array('width'=>$size,'height'=>$size,'alt'=>$profile->getNickName())); ?><b class="s<?php echo $size; ?>"></b></a><?php echo link_to($profile->getNickName(), 'profile/show?id=' . $profile->getId()); ?>
</span>