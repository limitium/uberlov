<table>
  <tbody>
    <tr>
      <th>Id:</th>
      <td><?php echo $route->getid() ?></td>
    </tr>
    <tr>
      <th>Name:</th>
      <td><?php echo $route->getname() ?></td>
    </tr>
    <tr>
      <th>Description:</th>
      <td><?php echo $route->getdescription() ?></td>
    </tr>
  </tbody>
</table>

<hr />

<a href="<?php echo url_for('route/edit?id='.$route->getId()) ?>">Edit</a>
&nbsp;
<a href="<?php echo url_for('route/index') ?>">List</a>
