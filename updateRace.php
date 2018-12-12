<?php
/*
 * Author: Louie Zhu
 * Date: Jun 27, 2015
 * File: addbook.php
 * Description: This script displays a form to accept a new book's details.
 * 
*/
include ('includes/header.php');
include ('includes/database.php');
if(!filter_has_var(INPUT_GET, 'currentRace')) {
    echo "problem getting race";
    include ('includes/footer.php');
    exit;
}


//add your code here
$currentRace = filter_input(INPUT_GET, "currentRace", FILTER_SANITIZE_STRING);
//delete the row from books where the id is the ID given to the code
//check if it has run soucessfull and error handle based on that
$sql = "SELECT * FROM race WHERE species = '$currentRace'";

//close database connection
$conn->close();

?>

<h2>Add a Custom Race</h2>
<form action="insertRace.php" method="post">
    <table cellspacing="0" cellpadding="3" style="border: 1px solid silver; padding:5px; margin-bottom: 10px">
        <tr>
            <td style="text-align: right; width: 100px">Name: </td>
            <td><input name="name" type="text" size="100" required /><?php $result_row['species'] ?></td>
        </tr>
        <tr>
            <td style="text-align: right">Variant: </td>
            <td><input name="variant" type="text" size="40" required /> <?php $result_row['variant'] ?></td>
        </tr>
        <tr>
            <td style="text-align: right">Strength: </td>
            <td><input name="strength" type="number" required /> <?php $result_row['strength'] ?></td>
        </tr>
        <tr>
            <td style="text-align: right">Dexterity: </td>
            <td><input name="dexterity" type="number" required /> <?php $result_row['dexterity'] ?></td>
        </tr>
        <tr>
            <td style="text-align: right">Constitution: </td>
            <td><input name="constitution" type="number" required /> <?php $result_row['constitution'] ?></td>
        </tr>
        <tr>
            <td style="text-align: right">Intelligence: </td>
            <td><input name="intelegence" type="number" required /><?php $result_row['intelegence'] ?></td>
        </tr>
        <tr>
            <td style="text-align: right">Wisdom: </td>
            <td><input name="wisdom" type="number" required /><?php $result_row['wisdom'] ?></td>
        </tr>
        <tr>
            <td style="text-align: right">Charisma: </td>
            <td><input name="charisma" type="number" required /><?php $result_row['charisma'] ?></td>
        </tr>
                <tr>
            <td style="text-align: right">Choose: </td>
            <td><input name="choose" type="number" required /><?php $result_row['choose'] ?></td>
        </tr>
        <tr>
            <td style="text-align: right; vertical-align: top">features:</td>
            <td><textarea name="features" rows="6" cols="65"><?php $result_row['features'] ?></textarea></td>
        </tr>
        <tr>
            <td style="text-align: right">Darkvision?: </td>
            <td><input name="darkVision" type="number" required /><?php $result_row['darkVision'] ?></td>
        </tr>
        <tr>
            <td style="text-align: right">Size: </td>
            <td><input name="size" type="text" required /><?php $result_row['size'] ?></td>
        </tr>
        
    </table>
    <div class="bookstore-button">
        <input type="submit" value="Add Race" />
        <input type="button" value="Cancel" onclick="window.location.href='race.php'" />
    </div>
</form>

<?php
require_once 'includes/footer.php';