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
        !filter_has_var(INPUT_POST, 'description') ||
        !filter_has_var(INPUT_POST, 'skill_proficiency') ||
        !filter_has_var(INPUT_POST, 'language') ||
        !filter_has_var(INPUT_POST, 'tool_proficiency') ||
        !filter_has_var(INPUT_POST, 'feature') ||
        !filter_has_var(INPUT_POST, 'usual_class')) 
        {   
    echo "<p class = 'textCenter'>There were problems retrieving background details. </p>";
    require_once 'includes/footer.php';
    $conn->close();
    die();
}

//get every variable and trim/sanatize/filter the information
$newBackground = $conn->real_escape_string(trim(filter_input(INPUT_POST, "name", FILTER_SANITIZE_STRING)));
$newDescription = $conn->real_escape_string(trim(filter_input(INPUT_POST, "description", FILTER_SANITIZE_STRING)));
$newSkill = $conn->real_escape_string(trim(filter_input(INPUT_POST, "skill_proficiency", FILTER_SANITIZE_STRING)));
$newLanguage = $conn->real_escape_string(trim(filter_input(INPUT_POST, "language", FILTER_SANITIZE_STRING)));
$newTool = $conn->real_escape_string(trim(filter_input(INPUT_POST, "tool_proficiency", FILTER_SANITIZE_STRING)));
$newFeature = $conn->real_escape_string(trim(filter_input(INPUT_POST, "feature", FILTER_SANITIZE_STRING)));
$newUsual = $conn->real_escape_string(trim(filter_input(INPUT_POST, "usual_class", FILTER_SANITIZE_STRING)));


//getting books and adding every single piece of information based on given information from last code
$sql = "UPDATE background SET description='$newDescription', skill_proficiency='$newSkill', language='$newLanguage', tool_proficiency='$newTool', feature='$newFeature', usual_class='$newUsual' WHERE background = '$newBackground'";


//make sure it ran succesfull, if so tell the user or give user the error
if ($conn->query($sql) === TRUE) {
    echo "<p class = 'textCenter'>New Background was edited successfully</p>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// close the connection.
$conn->close();

//display a confirmation message and a link to display details of the new book
echo "<p class = 'textCenter'><a href='background.php'>Back to the Backgrounds!</a></p>";
require_once 'includes/footer.php';
