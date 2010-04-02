<h1>Profits List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Location</th>
      <th>Profile</th>
      <th>Time</th>
      <th>Description</th>
      <th>Created at</th>
      <th>Updated at</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($profits as $profit): ?>
    <tr>
      <td><a href="<?php echo url_for('profit/show?id='.$profit->getId()) ?>"><?php echo $profit->getId() ?></a></td>
      <td><?php echo $profit->getLocationId() ?></td>
      <td><?php echo $profit->getProfileId() ?></td>
      <td><?php echo $profit->getTime() ?></td>
      <td><?php echo $profit->getDescription() ?></td>
      <td><?php echo $profit->getCreatedAt() ?></td>
      <td><?php echo $profit->getUpdatedAt() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('profit/new') ?>">New</a>
