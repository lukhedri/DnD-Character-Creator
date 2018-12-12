<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include ('includes/header.php');

include ('includes/database.php');
?>
<html>
    <head>
        <link href="CSS/style.css" rel = "stylesheet" type = "text/css">
    </head>
    <body>
        <div>
        <div class='wrapper'>
            <br>
            <h1 class="textCenter">
                Welcome to The Creator of Adventuring Heroes!
                <br></h1>
            <h3 class="textCenter"><i>A D&D 5th Edition Character Creator</i></h3>
<p>This site will walk you through the creation of your first D&D 5th Edition Character!</p>
            <p>Creating a character for D&D is completed through <b>4 simple steps</b>.</p>
            <p>As you complete the four steps by choosing a class, race, and background (in any particular order) and roll your specific ability scores,
                your selections will appear here!</p>
            <p>Make sure to check back here every now and again to make sure you have completed everything!</p>
            <p>Click the navbar above to start creating your character!</p>
            <p>Confused? Puzzled? Bewildered? Check the FAQ page for some answers to burning questions!</p>
            <br>
            
        <div style = "overflow: auto">
            <div class = "center" style = "overflow: auto">
                <div class ="checks" <?php
                if (isset($_SESSION['userClass'])) {
                    echo "style = 'text-align: center; top: 50%; background-color: black; color : white;'";
                }
                ?> 

                     >
                         <?php
                         if (isset($_SESSION['userClass'])) {
                             echo "You have chosen the class: " . $_SESSION['userClass'] . "!";
                         } else {
                             echo "No Class Yet!";
                         }
                         ?>
                </div> 
                <div class ="checks" <?php
                if (isset($_SESSION['userBackground'])) {
                    echo "style = 'text-align: center; top: 50%; background-color: black; color : white;'";
                }
                ?> 

                     >
                         <?php
                         if (isset($_SESSION['userBackground'])) {
                             echo "You have chosen the background of: " . $_SESSION['userBackground'] . "!";
                         } else {
                             echo "No Background Yet!";
                         }
                         ?>
                </div>
                <div class ="checks" <?php
                if (isset($_SESSION['userRace'])) {
                    echo "style = 'text-align: center; top: 50%; background-color: black; color : white;;'";
                }
                ?> 

                     >
                         <?php
                         if (isset($_SESSION['userRace'])) {
                             echo "You have chosen the race of: " . $_SESSION['userRace'] . "!";
                         } else {
                             echo "No Race Yet!";
                         }
                         ?>
                </div> 
                <div class ="checks" <?php
                    if (isset($_SESSION['abilitySet'])) {
                    echo "style = 'text-align: center; top: 50%; background-color: black; color : white;'";
                }
                ?> 

                     >
                         <?php
                         if (isset($_SESSION['abilitySet'])) {
                             echo "Your Abilities have been set!";
                         } else {
                             echo "No Abilities Yet!";
                         }
                         ?></div>
            </div>


            <div style = "overflow: auto; padding-left: 0px;">
                <?php
                echo "<div class = 'center' style='margin: 0 auto; text-align: center'><form action='' method='POST'><input type='submit' name = 'reset' value='RESET'></input></form></div>";
                if (isset($_POST['reset']) && ($_POST['reset'] == "RESET")) {
                    $_POST['reset'] = null;
                    session_unset();
                    session_destroy();
                    header("Refresh:0");
                }
                ?>
            </div>
        </div>
        </div>
            <br>
            
    </body>
</html>
<?php 
include ('includes/footer.php');
?>