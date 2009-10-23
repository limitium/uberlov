<p>score: 18</p>
<p><?php echo $location->getName() ?></p>
<p><?php echo $location->getDescription() ?></p>
<p>comments 12 / <b>5</b></p>


<hr />

<a href="<?php echo url_for('location/edit?id='.$location->getId()) ?>">Edit</a>
&nbsp;
<a href="<?php echo url_for('location/index') ?>">List</a>
