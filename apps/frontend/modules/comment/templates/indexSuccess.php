<h1>Comment locations List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Message</th>
      <th>Toward</th>
      <th>Location</th>
      <th>Profit</th>
      <th>Root</th>
      <th>Lft</th>
      <th>Rgt</th>
      <th>Level</th>
      <th>Created at</th>
      <th>Updated at</th>
      <th>Created by</th>
      <th>Updated by</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($comment_locations as $comment_location): ?>
    <tr>
      <td><a href="<?php echo url_for('comment/edit?id='.$comment_location->getId()) ?>"><?php echo $comment_location->getId() ?></a></td>
      <td><?php echo $comment_location->getMessage() ?></td>
      <td><?php echo $comment_location->getToward() ?></td>
      <td><?php echo $comment_location->getLocationId() ?></td>
      <td><?php echo $comment_location->getProfitId() ?></td>
      <td><?php echo $comment_location->getRootId() ?></td>
      <td><?php echo $comment_location->getLft() ?></td>
      <td><?php echo $comment_location->getRgt() ?></td>
      <td><?php echo $comment_location->getLevel() ?></td>
      <td><?php echo $comment_location->getCreatedAt() ?></td>
      <td><?php echo $comment_location->getUpdatedAt() ?></td>
      <td><?php echo $comment_location->getCreatedBy() ?></td>
      <td><?php echo $comment_location->getUpdatedBy() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('comment/new') ?>">New</a>
