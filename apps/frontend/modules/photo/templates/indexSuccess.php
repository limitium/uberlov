<h1>Photos List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Toward</th>
      <th>Location</th>
      <th>Created by</th>
      <th>Updated by</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($photos as $photo): ?>
    <tr>
      <td><a href="<?php echo url_for('photo/show?id='.$photo->getId()) ?>"><?php echo $photo->getId() ?></a></td>
      <td><?php echo $photo->getName() ?></td>
      <td><?php echo $photo->getToward() ?></td>
      <td><?php echo $photo->getLocationId() ?></td>
      <td><?php echo $photo->getCreatedBy() ?></td>
      <td><?php echo $photo->getUpdatedBy() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('photo/new') ?>">New</a>
