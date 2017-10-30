<?php
$connect = mysqli_connect("localhost", "root", "", "scalar")
or die('Error connect DB server');

$query = "SELECT * FROM commend";
$result = mysqli_query($connect, $query);
$dump = mysqli_fetch_all($result);

mysqli_close($connect);


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List Comment</title>
    <link href="css/styleFirst.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <script type="text/javascript" src="js/jquery-latest.js"></script>
    <script type="text/javascript" src="js/jquery.tablesorter.js"></script>
    <script type="text/javascript" src="js/jquery.tablesorter.pager.js"></script>
    <script type="text/javascript" src="js/js.js"></script>

</head>
<body>

<h1><a href="index.php">Send comment</a></h1>

<table id="myTable" class="tablesorter">
    <thead>
    <tr>
        <th>Date</th>
        <th>Name</th>
        <th>Email</th>
        <th>Comment</th>
        <th>File</th>
        <th>ID</th>
        <th>Browser</th>
    </tr>
    </thead>
    <?php foreach ($dump as $v) { ?>
        <tr>
            <td><?php echo $v[7] ?></td>
            <td><?php echo $v[1] ?></td>
            <td><?php echo $v[2] ?></td>
            <td><?php echo $v[3] ?></span></td>
            <td><img class="image" src="img/<?php echo $v[4] ?>"></td>
            <td><?php echo $v[5] ?></td>
            <td><?php echo $v[6] ?></td>
        </tr>
    <?php } ?>
</table>

<div id="pager" class="pager">
    <form>
        <img width="10" src="img/no-translate-detected_318-73640.jpg" class="first">
        <img width="10" src="img/no-translate-detected_318-85985.jpg" class="prev">
        <input type="text" class="pagedisplay">
        <img width="10" src="img/no-translate-detected_318-85964.jpg" class="next">
        <img width="10" src="img/no-translate-detected_318-72463.jpg" class="last">
        <select class="pagesize">
            <option value="5">5</option>
            <option value="10">10</option>
            <option value="20">20</option>
            <option value="25">25</option>
        </select>
    </form>
</div>
</body>
</html>