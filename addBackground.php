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
?>

<h2>Add a Custom Race</h2>
<form action="insertBackground.php" method="post">
    <table cellspacing="0" cellpadding="3" style="border: 1px solid silver; padding:5px; margin-bottom: 10px">
        <tr>
            <td style="text-align: right; width: 100px">Name: </td>
            <td><input name="background" type="text" size="100" required /></td>
        </tr>
        <tr>
            <td style="text-align: right; vertical-align: top">Description:</td>
            <td><textarea name="description" rows="6" cols="65"></textarea></td>
        </tr>
        <tr>
            <td style="text-align: right">Skill Proficiency: </td>
            <td><input name="skill_proficiency" type="text" size="40" required /></td>
        </tr>
        <tr>
            <td style="text-align: right">Languages: </td>
            <td><input name="language" type="number" required /></td>
        </tr>
        <tr>
            <td style="text-align: right">Tool Proficiency: </td>
            <td><input name="tool_proficiency" type="text" required /></td>
        </tr>
        <tr>
            <td style="text-align: right">Feature: </td>
            <td><input name="feature" type="text" required /></td>
        </tr>
        <tr>
            <td style="text-align: right">Usual Class: </td>
            <td><input name="usual_class" type="text" required /></td>
        </tr>       
    </table>
    <div class="bookstore-button">
        <input type="submit" value="Add Background" />
        <input type="button" value="Cancel" onclick="window.location.href='background.php'" />
    </div>
</form>

<?php
require_once 'includes/footer.php';