<h1>Profits List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Location</th>
      <th>Begin</th>
      <th>Water state</th>
      <th>Lure</th>
      <th>Bait</th>
      <th>Additive</th>
      <th>Weather</th>
      <th>Cordage</th>
      <th>Description</th>
      <th>Created at</th>
      <th>Updated at</th>
      <th>Created by</th>
      <th>Updated by</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($profits as $profit): ?>
    <tr>
      <td><a href="<?php echo url_for('profit/show?id='.$profit->getId()) ?>"><?php echo $profit->getId() ?></a></td>
      <td><?php echo $profit->getLocationId() ?></td>
      <td><?php echo $profit->getBegin() ?></td>
      <td><?php echo $profit->getWaterState() ?></td>
      <td><?php echo $profit->getLure() ?></td>
      <td><?php echo $profit->getBait() ?></td>
      <td><?php echo $profit->getAdditive() ?></td>
      <td><?php echo $profit->getWeather() ?></td>
      <td><?php echo $profit->getCordage() ?></td>
      <td><?php echo $profit->getDescription() ?></td>
      <td><?php echo $profit->getCreatedAt() ?></td>
      <td><?php echo $profit->getUpdatedAt() ?></td>
      <td><?php echo $profit->getCreatedBy() ?></td>
      <td><?php echo $profit->getUpdatedBy() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('profit/new') ?>">New</a>
