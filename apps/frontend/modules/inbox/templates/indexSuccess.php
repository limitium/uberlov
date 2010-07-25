<h1>Inboxs List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Message</th>
      <th>Profile</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($inboxs as $inbox): ?>
    <tr>
      <td><a href="<?php echo url_for('inbox/edit?id='.$inbox->getId()) ?>"><?php echo $inbox->getId() ?></a></td>
      <td><?php echo $inbox->getName() ?></td>
      <td><?php echo $inbox->getMessage() ?></td>
      <td><?php echo $inbox->getProfileId() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('inbox/new') ?>">New</a>
