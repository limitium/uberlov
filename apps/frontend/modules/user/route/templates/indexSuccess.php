<h1>Route List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($route_list as $route): ?>
    <tr>
      <td><a href="<?php echo url_for('route/show?id='.$route->getId()) ?>"><?php echo $route->getId() ?></a></td>
      <td><?php echo $route->getName() ?></td>
      <td><?php echo $route->getDescription() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('route/new') ?>">New</a>
