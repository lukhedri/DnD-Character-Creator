<?php

/*
 * Author: Luke Hedrick
 * Date: 11/28/2018
 * File: deletebook.php
 * Description: removes a book from data base
 *
 */
require_once 'includes/header.php';
require_once('includes/database.php');

//if there were problems retrieving book id, the script must end.
if(!filter_has_var(INPUT_GET, 'deleteRace')) {
    echo "Deletion cannot continue since there were problems retrieving race";
    include ('includes/footer.php');
    exit;
}

//add your code here
$race = filter_input(INPUT_GET, "deleteRace", FILTER_SANITIZE_STRING);
//delete the row from books where the id is the ID given to the code
$sql = "DELETE FROM race WHERE species = '$race'";
//check if it has run soucessfull and error handle based on that
if ($conn->query($sql) === TRUE) {
    echo "<p class = 'textCenter'>Race was removed successfully</p>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

//close database connection
$conn->close();

//display a confirmation message
echo "<p class = 'textCenter'><a href='race.php'>Back to the Races!</a></p>";
require_once 'includes/footer.php';