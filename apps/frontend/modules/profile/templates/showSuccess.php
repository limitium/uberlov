<table>
  <tbody>
    <tr>
      <th>Id:</th>
      <td><?php echo $profile->getId() ?></td>
    </tr>
    <tr>
      <th>Nick name:</th>
      <td><?php echo $profile->getNickName() ?></td>
    </tr>
    <tr>
      <th>First name:</th>
      <td><?php echo $profile->getFirstName() ?></td>
    </tr>
    <tr>
      <th>Last name:</th>
      <td><?php echo $profile->getLastName() ?></td>
    </tr>
    <tr>
      <th>Description:</th>
      <td><?php echo $profile->getDescription() ?></td>
    </tr>
    <tr>
      <th>Created at:</th>
      <td><?php echo $profile->getCreatedAt() ?></td>
    </tr>
    <tr>
      <th>Updated at:</th>
      <td><?php echo $comments ?></td>
    </tr>
    <tr>
      <th>Updated at:</th>
      <td><?php echo $reports ?></td>
    </tr>
    <tr>
      <th>Updated at:</th>
      <td><?php echo $locations ?></td>
    </tr>
  </tbody>
</table>

<hr />

<a href="<?php echo url_for('profile/edit?id='.$profile->getId()) ?>">Edit</a>
&nbsp;
<a href="<?php echo url_for('profile/index') ?>">List</a>
