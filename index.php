<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Send Comment</title>
    <link href="css/styleFirst.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script src="js/js.js"></script>

</head>
<body>
<div class="main">
    <h1>Send your comment</h1>
    <form enctype="multipart/form-data" action="controller.php" method="post" onsubmit="return validate()">
        <table class="indexTable">
            <tr>
                <td><input name="name" id="name" class="name" size="50px"></td>
                <td><label for="name">Name</label></td>
            </tr>
            <tr>
                <td><input type="email" name="email" id="email" class="email" size="50px"></td>
                <td><label for="email">Email</label></td>
            </tr>
            <tr>
                <td><textarea name="comment" id="comment" class="comment" cols="45"></textarea></td>
                <td><label for="comment">Comment</label></td>
            </tr>
            <tr>
                <td><input type="file" name="file" accept="image/*" id="file"></td>
                <td><label for="file">File</label></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <input type="submit" name="submit">
                </td>
            </tr>
        </table>
    </form>
    <h1><a href="listComment.php">Chek List</a></h1>
</div>


</body>
<script>
//    $(document).on('submit', 'form', function () {

function validate() {
    var UserName = document.getElementById("name");
    var UserEmal = document.getElementById("email");
    var UserComment = document.getElementById("comment");

    if(!UserName.value){
        UserName.style.border = "2px solid red";
        return false;
    }
    if(!UserEmal.value){
        UserEmal.style.border = "2px solid red";
        return false;
    }
    if(!UserComment.value){
        UserComment.style.border = "2px solid red";
        return false;
    }

    return true;
}



</script>
</html>