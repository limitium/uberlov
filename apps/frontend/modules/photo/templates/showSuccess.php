<table>
  <tbody>
    <tr>
      <th>Id:</th>
      <td><?php echo $photo->getId() ?></td>
    </tr>
    <tr>
      <th>Name:</th>
      <td><?php echo $photo->getName() ?></td>
    </tr>
    <tr>
      <th>Toward:</th>
      <td><?php echo $photo->getToward() ?></td>
    </tr>
    <tr>
      <th>Location:</th>
      <td><?php echo $photo->getLocationId() ?></td>
    </tr>
    <tr>
      <th>Created by:</th>
      <td><?php echo $photo->getCreatedBy() ?></td>
    </tr>
    <tr>
      <th>Updated by:</th>
      <td><?php echo $photo->getUpdatedBy() ?></td>
    </tr>
  </tbody>
</table>

<hr />

<a href="<?php echo url_for('photo/edit?id='.$photo->getId()) ?>">Edit</a>
&nbsp;
<a href="<?php echo url_for('photo/index') ?>">List</a>
