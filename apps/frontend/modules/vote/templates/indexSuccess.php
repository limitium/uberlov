<h1>Votes List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Profile</th>
      <th>Value</th>
      <th>Is up</th>
      <th>Toward</th>
      <th>Location</th>
      <th>Comment</th>
      <th>Profit</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($votes as $vote): ?>
    <tr>
      <td><a href="<?php echo url_for('vote/edit?id='.$vote->getId()) ?>"><?php echo $vote->getId() ?></a></td>
      <td><?php echo $vote->getProfileId() ?></td>
      <td><?php echo $vote->getValue() ?></td>
      <td><?php echo $vote->getIsUp() ?></td>
      <td><?php echo $vote->getToward() ?></td>
      <td><?php echo $vote->getLocationId() ?></td>
      <td><?php echo $vote->getCommentId() ?></td>
      <td><?php echo $vote->getProfitId() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('vote/new') ?>">New</a>
