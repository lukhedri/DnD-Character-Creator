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
    $sql = "SELECT * FROM background WHERE";
    //each term from the exploded array terms is going to be tested for all collums of the code
    foreach ($terms as $term) {
        $sql .= " CONCAT(background,description,skill_proficiency,language,tool_proficiency,feature,usual_class) LIKE '%$term%' OR";
    }
    $sql = rtrim($sql, "OR");
} else {
    $sql = "SELECT * FROM background";
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
    Background
</h1>
<h2 class="textCenter">
    <i>"Where are you from?"</i> <br></h2>
    <p>Backgrounds tell a story about where your character comes from.</p>
    <p>Each will give you proficiencies in skills, languages and even tools!</p> 
        <p>Choose one of the premade ones, or make your own!</p>
    
</div>    

<?php
if (filter_has_var(INPUT_POST, 'backgroundSel')) {
    $_SESSION['userBackground'] = $_POST['backgroundSel'];
}
if (isset($_SESSION['userBackground'])) {
    echo "<h3 class='textCenter'>Your currently selected background is: <i> " . $_SESSION['userBackground'] . "</i>. Great choice!</h3>";
} else {
    echo "<h3 class='textCenter'>You have not selected a Background, yet!</h3>";
}
?>
<form action="background.php" method="get" class="center">
    <input type="text" name="terms" size="40" required />&nbsp;&nbsp;
    <input type="submit" name="Submit" class="generalButton" id="Submit" value="Search backgrounds" />
</form>
<br>
</div>
<br>
<table class = "tableNorm" cellspacing="10">
    <tr>
        <th class="titles">Background</th>
        <th class="titles">Description</th>
        <th class="titles">Skill Proficiencies</th>
        <th class="titles">Languages Known</th>
        <th class="titles">Tool Proficiencies</th>
        <th class="titles">Feature</th>
        <th class="titles">Often used with...</th>
        <?php echo"<th class='titles'>";
        if (session_status() != PHP_SESSION_NONE) 
        { 
            echo "Press to select a background!</th>";
        }
        else
        {
            echo "Sign in to Select a background! </th>";
        }
        ?>
        <th class="titles">Edit?</th>
        <th class="titles">Delete?</th>
    </tr>

    <?php
    while ($row = $query->fetch_assoc()) {

        echo "<tr>";
        echo "<td>", $row['background'], "</td>";
        echo "<td>", $row['description'], ".</td>";
        echo "<td>", $row['skill_proficiency'], "</td>";
        echo "<td>", $row['language'], "</td>";
        echo "<td>", $row['tool_proficiency'], "</td>";
        echo "<td>", $row['feature'], "</td>";
        echo "<td>", $row['usual_class'], "</td>";
        echo "<td>";
        if (session_status() != PHP_SESSION_NONE) {echo "<form action='' method='POST'><button name ='backgroundSel' type = 'submit' value = '" . $row['background'] . "' class='generalButton' >Select!</button></form></td>"; } else {echo "</td>";}
        echo "<td>";
        if($row['custom'] == 1 || isset($_SESSION['currentUserAdmin'])){ echo "<form action='editBackground.php' method='GET'><button name ='editBackground' type = 'submit'  value = '" . $row['background'] . "' class='generalButton' >Edit!</button></form> </td>";} else {echo "</td>";}
        echo "<td>";
        if($row['custom'] == 1 || isset($_SESSION['currentUserAdmin'])){ echo "<form action='deleteBackground.php' method='GET'><button name ='deleteBackground' type = 'submit' class='generalButton'onclick='return confirm('Are you sure you want to delete the background?')' value = '" . $row['background'] . "' >Delete!</button></form> </td>";} else {echo "</td>";}
        echo "</tr>";
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
echo "<form action='addBackground.php'>
    <button class='generalButton'>Add Custom Background!</button>
    </form>";
}
    ?>
</div>
<?php 
include ('includes/footer.php');
?>