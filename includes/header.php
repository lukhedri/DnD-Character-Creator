<?php
        $cookieName = "LoggedIn";
if(isset($_COOKIE[$cookieName]))
{
   session_start(); 
}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>

<html>
    <head>
        <link type="text/css" rel="stylesheet" href="CSS/style.css" />
    </head>
    <body>
        <ul>
            <li><a href="home.php" >Home</a></li>
        <li><a href="class.php">Class</a></li>
        <li><a href="background.php">Background</a></li>
        <li><a href="race.php">Races</a></li>
        <li><a href="ability.php">Ability Scores</a></li>
        <?php 

        if(isset($_COOKIE[$cookieName]))
        {
            echo "<li><a href='userSignout.php'>Sign Out</a></li>";
        }
        else    
        {
            echo "<li><a href='userSignin.php'>Sign In</a></li>";
        }
        ?>
        <li><a href="addUser.php">Create an account!</a></li>
        <li><a href="character.php">Your Character</a></li>
        <img style="width: 110px; height: 45px; float: right;"src="images/DDTransparentLogo.png" alt=""/>;
        </ul>
        
    <body>
</html>