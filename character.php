<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include ('includes/header.php');
include ('includes/database.php');

?>
<div class="wrapper">
<h1>Your Character so far!</h1>
<form action="character.php" method="get">
    <h2>Make name!</h2>
    <input name="characterName" type="text" size="50" placeholder="Enter name here and push enter!"/>
</form>
<?php
if(filter_has_var(INPUT_GET, 'characterName')) 
    {
        $_SESSION['characterName'] = filter_input(INPUT_GET, "characterName", FILTER_SANITIZE_STRING);
    }
if(isset($_SESSION['characterName']))
{
    echo "<h2>" . $_SESSION['characterName'] . "<h2>";
}
else
{
    echo "<h2>No Name yet!<h2>";
}
?>
<div>
<div> <?php 
if(isSet($_SESSION['userClass']))
{
$sql = "SELECT * FROM class WHERE class = '". $_SESSION['userClass'] ."'";
$query = @$conn->query($sql);
$row = mysqli_fetch_assoc($query);
}
if(isSet($_SESSION['userClass'])){echo"<p>You, mighty one, are a " . $_SESSION['userClass'] . " - " . $row['description'] . ". </p>";} else { echo "No class set yet!";} ?> 
</div>
<div> <?php 
if(isSet($_SESSION['userBackground']))
{
$sql = "SELECT * FROM background WHERE background = '". $_SESSION['userBackground'] ."'";
$query = @$conn->query($sql);
$row = mysqli_fetch_assoc($query);
}
if(isSet($_SESSION['userBackground'])){echo"<p>You have a background as a/an " . $_SESSION['userBackground'] . " - " . $row['description'] . ". </p>";} else { echo "No Background set yet!";}?>
</div>
<div> <?php
if(isSet($_SESSION['userRace']))
{
$sql = "SELECT * FROM race WHERE species = '". $_SESSION['userRace'] ."'";
$query = @$conn->query($sql);
$row = mysqli_fetch_assoc($query);
}
if(isSet($_SESSION['userRace'])){echo"<p>But, most of all, you are a/an " . $_SESSION['userRace'] . ", capable of wonderous deeds and destined for greatness.</p>";} else { echo "No Race set yet!";}?> 
    <p>You are a mighty adventurer indeed!</p>
</div>
<h2>Your Ability Scores (With your added Race Modifiers)!</h2>
<table class="center">

            <tr>
                <th>Strength</th>
                <th>Dexterity</th>
                <th>Constitution</th>
                <th>Intelligence</th>
                <th>Wisdom</th>
                <th>Charisma</th>
            </tr>
            <tr>
                <td style="background-color: white; "><?php if(isset($_SESSION['str']) && isset($_SESSION['userRace'])){echo ($_SESSION['str'] + $row['str']);} elseif(isset($_SESSION['str']) && !isset($_SESSION['userRace'])) {echo $_SESSION['str'];} else{ echo "Not set yet!";} ?></td>
                <td style="background-color: white; "><?php if(isset($_SESSION['dex']) && isset($_SESSION['userRace'])){echo ($_SESSION['dex'] + $row['dex']);} elseif(isset($_SESSION['dex']) && !isset($_SESSION['userRace'])) {echo $_SESSION['dex'];} else{ echo "Not set yet!";} ?></td>
                <td style="background-color: white; "><?php if(isset($_SESSION['con']) && isset($_SESSION['userRace'])){echo ($_SESSION['con'] + $row['con']);} elseif(isset($_SESSION['con']) && !isset($_SESSION['userRace'])) {echo $_SESSION['con'];} else{ echo "Not set yet!";} ?></td>
                <td style="background-color: white; "><?php if(isset($_SESSION['int']) && isset($_SESSION['userRace'])){echo ($_SESSION['int'] + $row['inte']);} elseif(isset($_SESSION['int']) && !isset($_SESSION['userRace'])) {echo $_SESSION['int'];} else{ echo "Not set yet!";} ?></td>
                <td style="background-color: white; "><?php if(isset($_SESSION['wis']) && isset($_SESSION['userRace'])){echo ($_SESSION['wis'] + $row['wis']);} elseif(isset($_SESSION['wis']) && !isset($_SESSION['userRace'])) {echo $_SESSION['wis'];} else{ echo "Not set yet!";} ?></td>
                <td style="background-color: white; "><?php if(isset($_SESSION['cha']) && isset($_SESSION['userRace'])){echo ($_SESSION['cha'] + $row['cha']);} elseif(isset($_SESSION['cha']) && !isset($_SESSION['userRace'])) {echo $_SESSION['cha'];} else{ echo "Not set yet!";} ?></td>
            </tr>
            <?php
            if(isset($_SESSION['str']) && isset($_SESSION['dex']) && isset($_SESSION['con']) && isset($_SESSION['int']) && isset($_SESSION['wis']) && isset($_SESSION['cha']))
            {
            echo "<tr><th>Str Modifier</th><th>Dex Modifier</th><th>Con Modifier</th><th>Int Modifier</th><th>Wis Modifier</th><th>Cha Modifier</th>";
            echo "<tr>";
                echo"<td style='background-color: white;'> ";
                if(isset($_SESSION['str']) && isset($row['str'])){echo floor(((($_SESSION['str'] + $row['str']) - 10) / 2));} 
                else
                { 
                    echo "Select a race to get modifiers!</td>";   
                }
                echo "<td style='background-color: white;'>";
                if(isset($_SESSION['dex']) && isset($row['dex'])){echo floor(((($_SESSION['dex'] + $row['dex']) - 10) /2));} 
                else
                {
                    echo "Select a race to get modifiers!</td>";                       
                }
                echo "<td style='background-color: white;'>";
                if(isset($_SESSION['con']) && isset($row['con'])){echo floor(((($_SESSION['con'] + $row['con']) - 10) / 2));} 
                else
                {
                    echo "Select a race to get modifiers!</td>";                       
                }
                echo "<td style='background-color: white;'>";
                if(isset($_SESSION['int']) && isset($row['inte'])){echo floor(((($_SESSION['int'] + $row['inte']) - 10) /2));} 
                else
                {
                    echo "Select a race to get modifiers!</td>";                       
                }
                echo "<td style='background-color: white;'>";
                if(isset($_SESSION['wis']) && isset($row['wis'])){echo floor(((($_SESSION['wis'] + $row['wis']) - 10) /2));} 
                else
                {
                    echo "Select a race to get modifiers!</td>";                       
                }
                echo "<td style='background-color: white;'>";
                if(isset($_SESSION['cha']) && isset($row['cha'])){echo floor(((($_SESSION['cha'] + $row['cha']) - 10) /2));} 
                else
                {
                    echo "Select a race to get modifiers!</td>";                       
                }
            echo "</tr>";
            }
            ?>
        </table>
</div>
<br>

</div>
<br>
<?php 
include ('includes/footer.php');
?>