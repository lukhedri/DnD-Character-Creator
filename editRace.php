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

if(!filter_has_var(INPUT_GET, 'editRace')) {
    echo "Can not edit since there were problems retrieving race";
    include ('includes/footer.php');
    exit;
}
$race = filter_input(INPUT_GET, "editRace", FILTER_SANITIZE_STRING);
$sql = "SELECT * FROM race WHERE species = '$race'";

$query = $conn->query($sql);
//error handling
if (!$query) {
    $errno = $conn->errno;
    $errmsg = $conn->error;
    echo "selection failed with : ($errno) $errmsg <bs/>\n";
    $conn->close();
    exit;
}
if (!$row = $query->fetch_assoc()) {
    $conn->close();
    require 'includes/footer.php';
    die("no edit found.");
}
if(!isset($_SESSION['currentUserAdmin']) && $row['custom'] != 1)
{
   echo "Con not access unless admin or if trying to access custom class";
   include('includes/footer.php');
   exit;
}
?>

<h2>Edit <?php echo $row['species']; ?> Race!</h2>
<form action="insertRaceEdit.php" method="post">
    <table cellspacing="0" cellpadding="3" style="border: 1px solid silver; padding:5px; margin-bottom: 10px">
        <tr>
            <td style="text-align: right">Variant: </td>
            <td><input name="variant" type="text" size="40" required placeholder = "<?php echo $row['variant']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right">Strength: </td>
            <td><input name="strength" type="number" required placeholder = "<?php echo $row['str']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right">Dexterity: </td>
            <td><input name="dexterity" type="number" required placeholder = "<?php echo $row['dex']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right">Constitution: </td>
            <td><input name="constitution" type="number" required placeholder = "<?php echo $row['con']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right">Intelegence: </td>
            <td><input name="intelegence" type="number" required placeholder = "<?php echo $row['inte']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right">Wisdom: </td>
            <td><input name="wisdom" type="number" required placeholder = "<?php echo $row['wis']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right">Charisma: </td>
            <td><input name="charisma" type="number" required placeholder = "<?php echo $row['cha']; ?>"/></td>
        </tr>
                <tr>
            <td style="text-align: right">Choose: </td>
            <td><input name="choose" type="number" required placeholder = "<?php echo $row['choose']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right; vertical-align: top">features: </td>
            <td><textarea name="features" rows="6" cols="65" placeholder = "<?php echo $row['features']; ?>"></textarea></td>
        </tr>
        <tr>
            <td style="text-align: right">Dark Vision: </td>
            <td><input name="darkVision" type="number" required placeholder = "<?php echo $row['darkvision']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right">Size: </td>
            <td><input name="size" type="text" required placeholder = "<?php echo $row['size']; ?>"/></td>
        </tr>
        
    </table>
    <input name="name" type="hidden" size="100" value = "<?php echo $row['species']; ?>"/>
    <div class="bookstore-button">
        <input type="submit" value="Edit Race!" />
        <input type="button" value="Cancel" onclick="window.location.href='race.php'" />
    </div>
</form>

<?php
require_once 'includes/footer.php';