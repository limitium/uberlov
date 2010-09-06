<h1>Talks List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Message</th>
      <th>Talk section</th>
      <th>Created by</th>
      <th>Updated by</th>
      <th>Created at</th>
      <th>Updated at</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($talks as $talk): ?>
    <tr>
      <td><a href="<?php echo url_for('talk/show?id='.$talk->getId()) ?>"><?php echo $talk->getId() ?></a></td>
      <td><?php echo $talk->getName() ?></td>
      <td><?php echo $talk->getMessage() ?></td>
      <td><?php echo $talk->getTalkSectionId() ?></td>
      <td><?php echo $talk->getCreatedBy() ?></td>
      <td><?php echo $talk->getUpdatedBy() ?></td>
      <td><?php echo $talk->getCreatedAt() ?></td>
      <td><?php echo $talk->getUpdatedAt() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('talk/new') ?>">New</a>
