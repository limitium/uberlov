<p>
<?php // Support for sfDoctrineGuardPlugin's getReferer is nice if the user's session is ?>
<?php // still active when they confirm, as is often the case now ?>
<?php echo link_to(__("Continue",array(),'sfForkedApply'),  $sf_user->getReferer('@homepage')) ?>
</p>
