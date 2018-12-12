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
if (    !filter_has_var(INPUT_POST, 'signinUsername') ||
        !filter_has_var(INPUT_POST, 'signinPassword')) {   
    echo "There were problems retrieving user details.";
    require_once 'includes/footer.php';
    $conn->close();
    die();
}

//get every variable and trim/sanatize/filter the information
$UserUsername = $conn->real_escape_string(trim(filter_input(INPUT_POST, "signinUsername", FILTER_SANITIZE_STRING)));
$UserPassword = $conn->real_escape_string(trim(filter_input(INPUT_POST, "signinPassword", FILTER_SANITIZE_STRING)));

//determine the id of the newly added book

//getting books and adding every single piece of information based on given information from last code
$sql = "SELECT * FROM users WHERE username ='$UserUsername' AND password = '$UserPassword'";
$query = $conn->query($sql);
//error handling
if (!$query) {
    $errno = $conn->errno;
    $errmsg = $conn->error;
    echo "Did not find user : ($errno) $errmsg <bs/>\n";
    echo "<p><a href='userSignin.php'>Back to Sign in!</a></p>";
    $conn->close();
    exit;
}
if (!$row = $query->fetch_assoc()) {
    $conn->close();
    echo "<br>";
    echo "<div class='textCenter'>";
    echo "User was not found! We apologize!";
    echo "<br>";
    echo "<br>";
    echo "<input type='button' value='Retry?'  class='generalButton' onclick=\"window.location.href='userSignin.php'\">";
    echo "</div>";
    require 'includes/footer.php';
    die;
}
else
{
    $cookieName = "LoggedIn";
    setcookie($cookieName,'test', time() + (86400));
    session_start();
    $_SESSION['currentUserFirstname'] = $row['firstname'];
    $_SESSION['currentUserLastname'] = $row['lastname'];
    $_SESSION['currentUserUsername'] = $row['username'];
    if($row['id'] == 1)
    {
        $_SESSION['currentUserAdmin'] = true;
        echo "Admin sign on successful <br>";
    }
    echo "<p class = 'textCenter'>Signed in successfully! Welcome " . $_SESSION['currentUserFirstname']. "</p>";
}
$conn->close();

//display a confirmation message and a link to display details of the new book
echo "<p class = 'textCenter'><a href='home.php'>Back to home!</a></p>";
require_once 'includes/footer.php';
