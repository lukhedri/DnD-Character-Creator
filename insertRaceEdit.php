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
if (!filter_has_var(INPUT_POST, 'name') ||
        !filter_has_var(INPUT_POST, 'variant') ||
        !filter_has_var(INPUT_POST, 'strength') ||
        !filter_has_var(INPUT_POST, 'dexterity') ||
        !filter_has_var(INPUT_POST, 'constitution') ||
        !filter_has_var(INPUT_POST, 'intelegence') ||
        !filter_has_var(INPUT_POST, 'wisdom') ||
        !filter_has_var(INPUT_POST, 'charisma') ||
        !filter_has_var(INPUT_POST, 'choose')||
        !filter_has_var(INPUT_POST, 'features')||
        !filter_has_var(INPUT_POST, 'darkVision')||
        !filter_has_var(INPUT_POST, 'size')) {   
    echo "There were problems retrieving race details.";
    require_once 'includes/footer.php';
    $conn->close();
    die();
}

//get every variable and trim/sanatize/filter the information
$newRace = $conn->real_escape_string(trim(filter_input(INPUT_POST, "name", FILTER_SANITIZE_STRING)));
$newVariant = $conn->real_escape_string(trim(filter_input(INPUT_POST, "variant", FILTER_SANITIZE_STRING)));
$newStr = $conn->real_escape_string(trim(filter_input(INPUT_POST, "strength", FILTER_SANITIZE_STRING)));
$newDex = $conn->real_escape_string(trim(filter_input(INPUT_POST, "dexterity", FILTER_SANITIZE_STRING)));
$newCon = $conn->real_escape_string(trim(filter_input(INPUT_POST, "constitution", FILTER_SANITIZE_STRING)));
$newInt = $conn->real_escape_string(trim(filter_input(INPUT_POST, "intelegence", FILTER_SANITIZE_STRING)));
$newWis = $conn->real_escape_string(trim(filter_input(INPUT_POST, "wisdom", FILTER_SANITIZE_STRING)));
$newCha = $conn->real_escape_string(trim(filter_input(INPUT_POST, "charisma", FILTER_SANITIZE_STRING)));
$newChoose = $conn->real_escape_string(trim(filter_input(INPUT_POST, "choose", FILTER_SANITIZE_STRING)));
$newFeature= $conn->real_escape_string(trim(filter_input(INPUT_POST, "features", FILTER_SANITIZE_STRING)));
$newDarkVision = $conn->real_escape_string(trim(filter_input(INPUT_POST, "darkVision", FILTER_SANITIZE_STRING)));
$newSize = $conn->real_escape_string(trim(filter_input(INPUT_POST, "size", FILTER_SANITIZE_STRING)));
$newRaceTest = 1;

//determine the id of the newly added book

//getting books and adding every single piece of information based on given information from last code
$sql = "UPDATE race SET variant='$newVariant', str='$newStr', dex='$newDex', con='$newCon', inte='$newInt', wis='$newWis', cha='$newCha', choose='$newChoose', wis='$newWis', cha='$newCha', choose='$newChoose', features='$newFeature', darkvision='$newDarkVision', size='$newSize' WHERE species = '$newRace'";


//make sure it ran succesfull, if so tell the user or give user the error
if ($conn->query($sql) === TRUE) {
    echo "<p class = 'textCenter'>New Race was edited successfully</p>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// close the connection.
$conn->close();

//display a confirmation message and a link to display details of the new book
echo "<p class = 'textCenter'><a href='race.php'>Back to the Races!</a></p>";
require_once 'includes/footer.php';
//, wis='$newWis', cha='$newCha', choose='$newChoose', features='$newFeature', darkvision='$newDarkVision', size='$newSize' 