<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include ('includes/header.php');
include ('includes/database.php');

if (isset($_GET['terms'])) {
    $term_string = filter_input(INPUT_GET, "terms", FILTER_SANITIZE_STRING);
    $terms = explode(" ", $term_string);
    //creating sql code to search from books
    $sql = "SELECT * FROM race WHERE";
    //each term from the exploded array terms is going to be tested for all collums of the code
    foreach ($terms as $term) {
        $sql .= " CONCAT(species,variant,str,dex,con,inte,wis,cha,choose,features,darkvision,size) LIKE '%$term%' OR";
    }
    $sql = rtrim($sql, "OR");
} else {
    $sql = "SELECT * FROM race";
}

$query = $conn->query($sql);
//error handling
if (!$query) {
    $errno = $conn->errno;
    $errmsg = $conn->error;
    echo "selection failed with : ($errno) $errmsg <bs/>\n";
    $conn->close();
    exit;
}
?>
<div class="wrapper">
<div class="textCenter">
<h1 class="textCenter">
    Race
</h1>
<h2 class="textCenter">
    <i>"Who are you?"</i> <br></h2>
    <p>Different races garner different bonuses to stats and special abilities! </p>
<p>They also change your visage and perhaps even your interactions with other NPCs.</p> 
    <p>Choose a race from this list, or add your own!</p>
    
</div>

<?php
if (filter_has_var(INPUT_POST, 'raceSel')) {
    $_SESSION['userRace'] = $_POST['raceSel'];
}
if (isset($_SESSION['userRace'])) {
    echo "<h3 class='textCenter'>Your currently selected Race is: <i> " . $_SESSION['userRace'] . "</i>. Fantasic choice!</h3>";
} else {
    echo "<h3 class='textCenter'>You have not selected a Race, yet!</h3>";
}
?>
<form action="race.php" method="get" class="center">
    <input type="text" name="terms" size="40" required />&nbsp;&nbsp;
    <input type="submit" name="Submit" class="generalButton" id="Submit" value="Search Races" />
</form>
<br>
</div>
<br>
<table class = "tableNorm" cellspacing="10">
    <tr>
        <th class="titles">Race</th>
        <th class="titles">Variant</th>
        <th class="titles">Strength</th>
        <th class="titles">Dexterity</th>
        <th class="titles">Constitution</th>
        <th class="titles">Intelligence</th>
        <th class="titles">Wisdom</th>
        <th class="titles">Charisma</th>
        <th class="titles">Choose</th>      
        <th class="titles">Features</th>
        <th class="titles">Darkvision</th>
        <th class="titles">size</th>
        <?php echo"<th class='titles'>";
        if (session_status() != PHP_SESSION_NONE) 
        { 
            echo "Press to select a race!</th>";
        }
        else
        {
            echo "Sign in to Select a race! </th>";
        }
        ?>
        <th class="titels">Edit!</th>
        <th class="titles">Delete!</th>
    </tr>

    <?php
    while ($row = $query->fetch_assoc()) {

        echo "<tr>";
        //echo "<td><a href='classDetails.php?id=", $row['class'],">", $row['class'], "</a></td>";
        echo "<td>", $row['species'], "</td>";
        echo "<td>", $row['variant'], "</td>";
        echo "<td> +", $row['str'], "</td>";
        echo "<td> +", $row['dex'], "</td>";
        echo "<td> +", $row['con'], "</td>";
        echo "<td> +", $row['inte'], "</td>";
        echo "<td> +", $row['wis'], "</td>";
        echo "<td> +", $row['cha'], "</td>";
        echo "<td> Any +", $row['choose'], "</td>";
        echo "<td>", $row['features'], "</td>";
        echo "<td>";
        if($row['darkvision'] == 1) { echo'Yes';}else { echo "No";} 
        echo "</td>";
        echo "<td>", $row['size'], "</td>";
        echo "<td>";
        if (session_status() != PHP_SESSION_NONE) {echo "<form action='' method='POST'><input name ='raceSel' type = 'submit' class='generalButton' value = '" . $row['species'] . "' ></input></form></td>";} else { echo "</td>";}
        echo "<td>";
        if($row['custom'] == 1 || isset($_SESSION['currentUserAdmin'])){ echo "<form action='editRace.php' method='GET'><button name ='editRace' type = 'submit' class='generalButton' value = '" . $row['species'] . "' >Edit!</button></form> </td>";} else {echo "</td>";}
        echo "<td>";
        if($row['custom'] == 1 || isset($_SESSION['currentUserAdmin'])){ echo "<form action='deleteRace.php' method='GET'><button name ='deleteRace' type = 'submit' class='generalButton' onclick='return confirm('Are you sure you want to delete the race?')' value = '" . $row['species'] . "' >Delete!</button></form> </td>";} else {echo "</td>";}
        echo "</td>";
        
    }
    

    function debug_to_console($data) {
        $output = $data;
        if (is_array($output)) {
            $output = implode(',', $output);
        }
        echo "<script>console.log( 'Debug Objects: " . $output . "' );</script>";
        //debug_to_console( "Test" );
    }
    ?>
</table>
<br>
<div class="textCenter">
  <?php
if(session_status() != PHP_SESSION_NONE)
{
echo "<form action='addRace.php'>
    <button class='generalButton'>Add Custom Race!</button>
    </form>";
}
    ?>
</div>
<?php 
include ('includes/footer.php');
?>