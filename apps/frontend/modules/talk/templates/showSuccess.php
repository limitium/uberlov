<table>
  <tbody>
    <tr>
      <th>Id:</th>
      <td><?php echo $talk->getId() ?></td>
    </tr>
    <tr>
      <th>Name:</th>
      <td><?php echo $talk->getName() ?></td>
    </tr>
    <tr>
      <th>Message:</th>
      <td><?php echo $talk->getMessage() ?></td>
    </tr>
    <tr>
      <th>Talk section:</th>
      <td><?php echo $talk->getTalkSectionId() ?></td>
    </tr>
    <tr>
      <th>Created by:</th>
      <td><?php echo $talk->getCreatedBy() ?></td>
    </tr>
    <tr>
      <th>Updated by:</th>
      <td><?php echo $talk->getUpdatedBy() ?></td>
    </tr>
    <tr>
      <th>Created at:</th>
      <td><?php echo $talk->getCreatedAt() ?></td>
    </tr>
    <tr>
      <th>Updated at:</th>
      <td><?php echo $talk->getUpdatedAt() ?></td>
    </tr>
  </tbody>
</table>

<hr />

<a href="<?php echo url_for('talk/edit?id='.$talk->getId()) ?>">Edit</a>
&nbsp;
<a href="<?php echo url_for('talk/index') ?>">List</a>
