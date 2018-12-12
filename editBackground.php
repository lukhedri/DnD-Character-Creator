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
if(!filter_has_var(INPUT_GET, 'editBackground')) {
    echo "Can not edit since there were problems retrieving background";
    include ('includes/footer.php');
    exit;
}
$background = filter_input(INPUT_GET, "editBackground", FILTER_SANITIZE_STRING);
$sql = "SELECT * FROM background WHERE background = '$background'";

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

<h2>Edit <?php echo $row['background']; ?> Background!</h2>
<form action="insertBackgroundEdit.php" method="post">
    <table cellspacing="0" cellpadding="3" style="border: 1px solid silver; padding:5px; margin-bottom: 10px">
        <tr>
            <td style="text-align: right; vertical-align: top">Description: </td>
            <td><textarea name="description" rows="6" cols="65" placeholder = "<?php echo $row['description']; ?>"></textarea></td>
        </tr>
        <tr>
            <td style="text-align: right">Skill Proficiency: </td>
            <td><input name="skill_proficiency" type="text" required placeholder = "<?php echo $row['skill_proficiency']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right">Language: </td>
            <td><input name="language" type="number" required placeholder = "<?php echo $row['language']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right">Tool Proficiency: </td>
            <td><input name="tool_proficiency" type="text" required placeholder = "<?php echo $row['tool_proficiency']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right">Feature: </td>
            <td><input name="feature" type="text" required placeholder = "<?php echo $row['feature']; ?>"/></td>
        </tr>
        <tr>
            <td style="text-align: right">Usual Class: </td>
            <td><input name="usual_class" type="number" required placeholder = "<?php echo $row['usual_class']; ?>"/></td>
        </tr>
    </table>
    <input name="name" type="hidden" size="100" value = "<?php echo $row['background']; ?>"/>
    <div class="bookstore-button">
        <input type="submit" value="Edit Background!" />
        <input type="button" value="Cancel" onclick="window.location.href='background.php'" />
    </div>
</form>

<?php
require_once 'includes/footer.php';