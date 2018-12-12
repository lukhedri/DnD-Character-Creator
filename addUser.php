<?php
include ('includes/header.php');
include ('includes/database.php');
?>
<div class='wrapper'>
    <div class='textCenter'>
        <br>
<h2>Create an Account!</h2>
<form action="insertUser.php" method="post" class="center">
            <table cellspacing="3" cellpadding="5" class='center'>
        <tr>
            <td style="text-align: left; background-color: #EC2125; font-size: 100%; width: 150px">First Name: </td>
            <td><input name="newUserFirstName" type="text"  style="font-size: 100%; border: none" size="50" required /></td>
        </tr>
        <tr>
            <td style="text-align: left; background-color: #EC2125; font-size: 100%; width: 150px">Last Name: </td>
            <td><input name="newUserLastName" type="text"  style="font-size: 100%; border: none" size="50" required /></td>
        </tr>
        <tr>
            <td style="text-align: left; background-color: #EC2125; font-size: 100%; width: 150px">Username: </td>
            <td><input name="newUserUsername" type="text" style="font-size: 100%; border: none" size="50" required /></td>
        </tr>
        <tr>
            <td style="text-align: left; background-color: #EC2125; font-size: 100%; width: 150px">Password: </td>
            <td><input name="newUserPassword" type="password"  style="font-size: 100%; border: none" size="50" required /></td>
        </tr>
        
    </table>
    <div>
        <input type="submit" value="Create!" class="generalButton" />
        <input type="button" value="Cancel"  class="generalButton" onclick="window.location.href='home.php'" />
    </div>
    </div>
    <br>
</div>
</form>

<?php
require_once 'includes/footer.php';