<?php
include ('includes/header.php');
include ('includes/database.php');
?>
<div class='wrapper'>
    <div class='textCenter'>
        <br>
        <h2>Sign In, Adventurer!</h2>
        <form action="insertSignin.php" method="post" class="center">
            <table cellspacing="3" cellpadding="5" class='center'>
                <tr>
                    <td style="text-align: left; background-color: #EC2125; font-size: 100%">Username:</td>
                    <td><input name="signinUsername" type="text" style="font-size: 100%; border: none" required /></td>
                </tr>
                <tr>
                    <td style="text-align: left; background-color: #EC2125; font-size: 100%">Password:</td>
                    <td><input name="signinPassword" type="password" style="font-size: 100%; border: none" required /></td>
                </tr>
            </table>
            <br>
            <div>
                <input type="submit" value="Sign In!" class="generalButton"/>
                <input type="button" value="Cancel" onclick="window.location.href = 'home.php'" class="generalButton"/>
                <br>
                <br>
            </div>
        </form>
    </div>
</div>

<?php
require_once 'includes/footer.php';
