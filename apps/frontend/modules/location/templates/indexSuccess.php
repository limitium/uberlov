<h1>Location List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Description</th>
      <th>Location type</th>
      <th>Lat</th>
      <th>Lng</th>
      <th>Created at</th>
      <th>Updated at</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($location_list as $location): ?>
    <tr>
      <td><a href="<?php echo url_for('location/show?id='.$location->getId()) ?>"><?php echo $location->getId() ?></a></td>
      <td><?php echo $location->getName() ?></td>
      <td><?php echo $location->getDescription() ?></td>
      <td><?php echo $location->getLatitude() ?></td>
      <td><?php echo $location->getLongitude() ?></td>
      <td><?php echo $location->getCreatedAt() ?></td>
      <td><?php echo $location->getUpdatedAt() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('location/new') ?>">New</a>
