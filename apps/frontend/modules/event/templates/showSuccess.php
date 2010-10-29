<table>
  <tbody>
    <tr>
      <th>Id:</th>
      <td><?php echo $fish_event->getId() ?></td>
    </tr>
    <tr>
      <th>Name:</th>
      <td><?php echo $fish_event->getName() ?></td>
    </tr>
    <tr>
      <th>Description:</th>
      <td><?php echo $fish_event->getDescription() ?></td>
    </tr>
    <tr>
      <th>Location:</th>
      <td><?php echo $fish_event->getLocationId() ?></td>
    </tr>
  </tbody>
</table>

<hr />

<a href="<?php echo url_for('event/edit?id='.$fish_event->getId()) ?>">Edit</a>
&nbsp;
<a href="<?php echo url_for('event/index') ?>">List</a>
