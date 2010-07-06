<table>
  <tbody>
    <tr>
      <th>Id:</th>
      <td><?php echo $profit->getId() ?></td>
    </tr>
    <tr>
      <th>Location:</th>
      <td><?php echo $profit->getLocationId() ?></td>
    </tr>
    <tr>
      <th>Begin:</th>
      <td><?php echo $profit->getDate() ?></td>
    </tr>
    <tr>
      <th>Cordage:</th>
      <td><?php echo $profit->getCordage() ?></td>
    </tr>
    <tr>
      <th>Description:</th>
      <td><?php echo $profit->getDescription() ?></td>
    </tr>
    <tr>
      <th>Created at:</th>
      <td><?php echo $profit->getCreatedAt() ?></td>
    </tr>
    <tr>
      <th>Updated at:</th>
      <td><?php echo $profit->getUpdatedAt() ?></td>
    </tr>
    <tr>
      <th>Created by:</th>
      <td><?php echo $profit->getCreatedBy() ?></td>
    </tr>
    <tr>
      <th>Updated by:</th>
      <td><?php echo $profit->getUpdatedBy() ?></td>
    </tr>
  </tbody>
</table>

<hr />

<a href="<?php echo url_for('profit/edit?id='.$profit->getId()) ?>">Edit</a>
&nbsp;
<a href="<?php echo url_for('profit/index') ?>">List</a>
