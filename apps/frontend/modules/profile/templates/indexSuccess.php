<h1>Profiles List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Nick name</th>
      <th>First name</th>
      <th>Last name</th>
      <th>Description</th>
      <th>Created at</th>
      <th>Updated at</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($profiles as $profile): ?>
    <tr>
      <td><a href="<?php echo url_for('profile/show?id='.$profile->getId()) ?>"><?php echo $profile->getId() ?></a></td>
      <td><?php echo $profile->getNickName() ?></td>
      <td><?php echo $profile->getFirstName() ?></td>
      <td><?php echo $profile->getLastName() ?></td>
      <td><?php echo $profile->getDescription() ?></td>
      <td><?php echo $profile->getCreatedAt() ?></td>
      <td><?php echo $profile->getUpdatedAt() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('profile/new') ?>">New</a>
