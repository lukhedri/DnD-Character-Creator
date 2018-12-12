<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include ('includes/header.php');
include ('includes/database.php');

        if (
        filter_has_var(INPUT_POST, 'strength') ||
        filter_has_var(INPUT_POST, 'dexterity') ||
        filter_has_var(INPUT_POST, 'constitution') ||
        filter_has_var(INPUT_POST, 'intelligence') ||
        filter_has_var(INPUT_POST, 'wisdom') ||
        filter_has_var(INPUT_POST, 'charisma'))
        {   
        $newStr = (filter_input(INPUT_POST, "strength", FILTER_SANITIZE_NUMBER_INT));
        $newDex = $conn->real_escape_string(trim(filter_input(INPUT_POST, "dexterity", FILTER_SANITIZE_STRING)));
        $newCon = $conn->real_escape_string(trim(filter_input(INPUT_POST, "constitution", FILTER_SANITIZE_STRING)));
        $newInt = $conn->real_escape_string(trim(filter_input(INPUT_POST, "intelligence", FILTER_SANITIZE_STRING)));
        $newWis = $conn->real_escape_string(trim(filter_input(INPUT_POST, "wisdom", FILTER_SANITIZE_STRING)));
        $newCha = $conn->real_escape_string(trim(filter_input(INPUT_POST, "charisma", FILTER_SANITIZE_STRING)));
        }
        if(
        filter_has_var(INPUT_GET, 'r1') ||
        filter_has_var(INPUT_GET, 'r2') ||
        filter_has_var(INPUT_GET, 'r3') ||
        filter_has_var(INPUT_GET, 'r4') ||
        filter_has_var(INPUT_GET, 'r5') ||
        filter_has_var(INPUT_GET, 'r6'))
        {
            $r1 = filter_input(INPUT_GET, "r1", FILTER_SANITIZE_NUMBER_INT);
            $r2 = filter_input(INPUT_GET, "r2", FILTER_SANITIZE_NUMBER_INT);
            $r3 = filter_input(INPUT_GET, "r3", FILTER_SANITIZE_NUMBER_INT);
            $r4 = filter_input(INPUT_GET, "r4", FILTER_SANITIZE_NUMBER_INT);
            $r5 = filter_input(INPUT_GET, "r5", FILTER_SANITIZE_NUMBER_INT);
            $r6 = filter_input(INPUT_GET, "r6", FILTER_SANITIZE_NUMBER_INT);
        }
        
?>

<html>
    <head>
        
    </head>
    <body>
        <div class='wrapper'>
            <div>
        <h1>Ability Score Roller</h1>
        <p>D&D 5th Edition relies on 6 so-called "Ability Scores".</p>
        <p> They are, in no particular order, Strength, Dexterity, Constitution, Intelligence, Wisdom, and Charisma.</p>
        <p> Normally, you'd have to roll for your stats yourself, but, just for you, we've implemented a system which does it for you!</p>
        <p>To roll your ability scores (referred to as stats by players), click the button and then view the outputted 6 rolls. 
        <p>You can then input these stats into any ability you so desire! That is to say, you do not have to use any one roll for any one skill.
        <p> It is good practice, however, to place your highest rolls into the ability scores your class most often uses! This can be viewed on the class page table. </p>  
        <table class='center'>

            <tr>
                <th>Roll 1</th>
                <th>Roll 2</th>
                <th>Roll 3</th>
                <th>Roll 4</th>
                <th>Roll 5</th>
                <th>Roll 6</th>
            </tr>
            <tr>
                <td style="background-color: white; " id = "roll1" ><?php if(isset($r1)){echo $r1;}else{ echo "0";} ?></th>
                <td style="background-color: white; " id = "roll2" ><?php if(isset($r2)){echo $r2;}else{ echo "0";} ?></th>
                <td style="background-color: white; " id = "roll3" ><?php if(isset($r3)){echo $r3;}else{ echo "0";} ?></th>
                <td style="background-color: white; " id = "roll4" ><?php if(isset($r4)){echo $r4;}else{ echo "0";} ?></th>
                <td style="background-color: white; " id = "roll5" ><?php if(isset($r5)){echo $r5;}else{ echo "0";} ?></th>
                <td style="background-color: white; " id = "roll6" ><?php if(isset($r6)){echo $r6;}else{ echo "0";} ?></th>
            </tr>
            
        </table>
        <br>
        <button class="generalButton" onclick="rollStats()">Roll stats!</button>
        <br>
        <p class = 'textCenter'>Use this to select where you want your rolls!</p>
        <form action="ability.php" method="post">
    <table cellspacing="0" cellpadding="3" class='abcenter'>
        <tr>
            <td style="text-align: left; background-color: #EC2125; font-size: 100%">Strength: </td>
            <td>
            <?php 
            if(isset($r1))
            {
            echo "<select name = 'strength' required>";
               echo "<option></option>";
               echo "<option value = '$r1'>$r1</option>";
               echo "<option value = '$r2'>$r2</option>";
               echo "<option value = '$r3'>$r3</option>";
               echo "<option value = '$r4'>$r4</option>";
               echo "<option value = '$r5'>$r5</option>";
               echo "<option value = '$r6'>$r6</option>";
            echo "</select>";
            }
                else {
                        echo "Roll stats first!";
                    }
            ?>
            </td>
        </tr>
        <tr>
            <td style="text-align: left; background-color: #EC2125; font-size: 100%">Dexterity: </td>
            <td><?php 
            if(isset($r1))
            {
            echo "<select name = 'dexterity' required>";
               echo "<option></option>";
               echo "<option value = '$r1'>$r1</option>";
               echo "<option value = '$r2'>$r2</option>";
               echo "<option value = '$r3'>$r3</option>";
               echo "<option value = '$r4'>$r4</option>";
               echo "<option value = '$r5'>$r5</option>";
               echo "<option value = '$r6'>$r6</option>";
            echo "</select>";
            }
                else {
                        echo "Roll stats first!";
                    }
            ?></td>
        </tr>
        <tr>
            <td style="text-align: left; background-color: #EC2125; font-size: 100%">Constitution: </td>
            <td><?php 
            if(isset($r1))
            {
            echo "<select name = 'constitution' required>";
               echo "<option></option>";
               echo "<option value = '$r1'>$r1</option>";
               echo "<option value = '$r2'>$r2</option>";
               echo "<option value = '$r3'>$r3</option>";
               echo "<option value = '$r4'>$r4</option>";
               echo "<option value = '$r5'>$r5</option>";
               echo "<option value = '$r6'>$r6</option>";
            echo "</select>";
            }
                else {
                        echo "Roll stats first!";
                    }
            ?></td>
        </tr>
        <tr>
            <td style="text-align: left; background-color: #EC2125; font-size: 100%">Intelligence: </td>
            <td><?php 
            if(isset($r1))
            {
            echo "<select name = 'intelligence' required>";
               echo "<option></option>";
               echo "<option value = '$r1'>$r1</option>";
               echo "<option value = '$r2'>$r2</option>";
               echo "<option value = '$r3'>$r3</option>";
               echo "<option value = '$r4'>$r4</option>";
               echo "<option value = '$r5'>$r5</option>";
               echo "<option value = '$r6'>$r6</option>";
            echo "</select>";
            }
                else {
                        echo "Roll stats first!";
                    }
            ?></td>
        </tr>
        <tr>
            <td style="text-align: left; background-color: #EC2125; font-size: 100%">Wisdom: </td>
            <td><?php 
            if(isset($r1))
            {
            echo "<select name = 'wisdom' required>";
               echo "<option></option>";
               echo "<option value = '$r1'>$r1</option>";
               echo "<option value = '$r2'>$r2</option>";
               echo "<option value = '$r3'>$r3</option>";
               echo "<option value = '$r4'>$r4</option>";
               echo "<option value = '$r5'>$r5</option>";
               echo "<option value = '$r6'>$r6</option>";
            echo "</select>";
            }
                else {
                        echo "Roll stats first!";
                    }
            ?></td>
        </tr>
        <tr>
            <td style="text-align: left; background-color: #EC2125; font-size: 100%">Charisma: </td>
            <td><?php 
            if(isset($r1))
            {
            echo "<select name = 'charisma' required>";
               echo "<option></option>";
               echo "<option value = '$r1'>$r1</option>";
               echo "<option value = '$r2'>$r2</option>";
               echo "<option value = '$r3'>$r3</option>";
               echo "<option value = '$r4'>$r4</option>";
               echo "<option value = '$r5'>$r5</option>";
               echo "<option value = '$r6'>$r6</option>";
            echo "</select>";
            }
                else {
                        echo "Roll stats first!";
                    }
            ?></td>
        </tr>
    </table>
            <br>
            
    <div>
        <input type="submit" value="Lock in My Scores!" class="generalButton" />
        <input type="button" value="Cancel" class="generalButton" onclick="window.location.href='ability.php'" />
    </div>
        </form>
        <p>Current abilities!</p>
       
        <table class='center'>

            <tr>
                <th>Strength</th>
                <th>Dexterity</th>
                <th>Constitution</th>
                <th>Intelligence</th>
                <th>Wisdom</th>
                <th>Charisma</th>
            </tr>
            <tr>
                <td style="background-color: white;"><?php if(isset($newStr)){echo $newStr;} elseif(isset($_SESSION['str'])){echo $_SESSION['str'];} else{ echo "n/a";} ?></th>
                <td style="background-color: white;"><?php if(isset($newDex)){echo $newDex;} elseif(isset($_SESSION['dex'])){echo $_SESSION['dex'];} else{ echo "n/a";} ?></th>
                <td style="background-color: white;"><?php if(isset($newCon)){echo $newCon;} elseif(isset($_SESSION['con'])){echo $_SESSION['con'];} else{ echo "n/a";} ?></th>
                <td style="background-color: white;"><?php if(isset($newInt)){echo $newInt;} elseif(isset($_SESSION['int'])){echo $_SESSION['int'];} else{ echo "n/a";} ?></th>
                <td style="background-color: white;"><?php if(isset($newWis)){echo $newWis;} elseif(isset($_SESSION['wis'])){echo $_SESSION['wis'];} else{ echo "n/a";} ?></th>
                <td style="background-color: white;"><?php if(isset($newCha)){echo $newCha;} elseif(isset($_SESSION['cha'])){echo $_SESSION['cha'];} else{ echo "n/a";} ?></th>
            </tr>
            
        </table>
        <?php
        if(isset($newStr) && isset($newDex) && isset($newCon) && isset($newInt) && isset($newWis) && isset($newCha) && session_status() != PHP_SESSION_NONE)
        {
        $_SESSION['str'] = $newStr;
        $_SESSION['dex'] = $newDex;
        $_SESSION['con'] = $newCon;
        $_SESSION['int'] = $newInt;
        $_SESSION['wis'] = $newWis;
        $_SESSION['cha'] = $newCha;
        $_SESSION['abilitySet'] = true;
        }
        ?>
        
        
        
        
            </div>
            <br>
        </div>
        
        <script type="text/javascript" src ="newApp.js"></script>   
    </body>
    <?php include ('includes/footer.php'); ?>
</html>