<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include ('includes/header.php');
include ('includes/database.php');

$cookieName = "LoggedIn";
unset($_COOKIE[$cookieName]);
setcookie("$cookieName",'',time() - 1000);


session_destroy();
echo "<p class = 'textCenter'>You have logged off!</p>";
?>

<p class = "textCenter"><a href ="home.php">Back to Home!</a></p>
<?php 
include ('includes/footer.php');
?>