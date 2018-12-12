<?php

/*
 * Author: Luke Hedrick
 * Date: 11/28/2018
 * File: insertbook.php
 * Description: Takes information from addbook and makes a book in the database that can be searhed later
 *
 */
include ('includes/header.php');
include ('includes/database.php');


//if the script did not received post data, display an error message and then terminite the script immediately
if (!filter_has_var(INPUT_POST, 'newUserFirstName') ||
        !filter_has_var(INPUT_POST, 'newUserLastName') ||
        !filter_has_var(INPUT_POST, 'newUserUsername') ||
        !filter_has_var(INPUT_POST, 'newUserPassword')) {   
    echo "There were problems retrieving user details.";
    require_once 'includes/footer.php';
    $conn->close();
    die();
}

//get every variable and trim/sanatize/filter the information
$newUserFirstName = $conn->real_escape_string(trim(filter_input(INPUT_POST, "newUserFirstName", FILTER_SANITIZE_STRING)));
$newUserLastName = $conn->real_escape_string(trim(filter_input(INPUT_POST, "newUserLastName", FILTER_SANITIZE_STRING)));
$newUserUsername = $conn->real_escape_string(trim(filter_input(INPUT_POST, "newUserUsername", FILTER_SANITIZE_STRING)));
$newUserPassword = $conn->real_escape_string(trim(filter_input(INPUT_POST, "newUserPassword", FILTER_SANITIZE_STRING)));

$sql = "SELECT * FROM users WHERE username = '$newUserUsername'";
$conn->query($sql);
$get_rows = mysqli_affected_rows($conn);
if($get_rows >= 1)
{
    echo "User already exists! Please try again.";
    echo "<p><a href='addUser.php'>Sign up page!</a></p>";
    require_once 'includes/footer.php';
    $conn->close();
    die();
}
$sql = "INSERT INTO users "
        . "VALUES ('0','$newUserFirstName','$newUserLastName','$newUserUsername','$newUserPassword')";


//make sure it ran succesfull, if so tell the user or give user the error
if ($conn->query($sql) === TRUE) {
    echo "<br>";
    echo "<div class='textCenter'>";
    echo "<p class = 'textCenter'>New user was added successfully </p>";
    echo "<br>";
    echo "<br>";
    
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
$id = $conn->insert_id;
// close the connection.
$conn->close();

//display a confirmation message and a link to display details of the new book
echo "<p class = 'textCenter'><a href='home.php'>Back to home!</a></p>";
?>
<script type="text/javascript">
window.onload = function() {
   document.forms["autoSignin"].submit();
}
</script>
<form name = "autoSignin" action="insertSignin.php" method="post">
    <input name="signinUsername" value="<?php echo $newUserUsername;?>" type = "hidden"/>
    <input name="signinPassword" value="<?php echo $newUserPassword;?>" type = "hidden"/>
    <input name="Submit1" type="submit" value="submit" />
</form>

        <?php
require_once 'includes/footer.php';
?>
