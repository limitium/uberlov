<table>
  <tbody>
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

<a href="<?php echo url_for('route/export?id='.$route->getId()) ?>">Save to OZI</a>