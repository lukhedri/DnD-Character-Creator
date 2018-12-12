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
    $sql = "SELECT * FROM class WHERE";
    //each term from the exploded array terms is going to be tested for all collums of the code
    foreach ($terms as $term) {
        $sql .= " CONCAT(class,description,hit_die,main_stats,usual_races,spellcasting,specialty,gear_proficiency) LIKE '%$term%' OR";
    }
    $sql = rtrim($sql, "OR");
} else {
    $sql = "SELECT * FROM class";
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
        <h1>Class</h1>
        <h2><i>"What do you do?"</i> <br> </h2>
        Classes determine what your character does when push comes to shove.
        <p>Picking a class will decide what feats your character can have, the spells they can cast, and the weapons/armors they can use!</p>
        <p>Classes have a variety of important details. You can view them by clicking on their names.</p>
        <p>We have endeavored to put the most pertinent info in this table to help you choose what's best for you!</p>
        <p>Got something specific to look for? Search it!</p>
    </div>


    <?php
    if (filter_has_var(INPUT_POST, 'classSel')) {
        $_SESSION['userClass'] = $_POST['classSel'];
    }
    if (isset($_SESSION['userClass'])) {
        echo "<h3 class='textCenter'>Your currently selected Class is:<i> " . $_SESSION['userClass'] . "</i>. Good choice!</h3>";
    } else {
        echo "<h3 class='textCenter'>You have not selected a Class, yet!</h3>";
    }
    ?>
    <form action="class.php" method="get" class="center">
        <input type="text" name="terms" size="40" required />&nbsp;&nbsp;
        <input type="submit" name="Submit" class="generalButton" id="Submit" value="Search Class" />
    </form>

    <br>
</div>
<br>
<table class = "tableNorm" cellspacing="10">
    <tr>
        <th class="titles">Class</th>
        <th class="titles">Description</th>
        <th class="titles">Hit die</th>
        <th class="titles">Most Useful Stats</th>
        <th class="titles">Associated Races</th>
        <th class="titles">Spellcasting?</th>
        <th class="titles">What Are They Good At?</th>
        <th class="titles">Proficiencies</th>
            <?php
            echo"<th class='titles'>";
            if (session_status() != PHP_SESSION_NONE) {
                echo "Press to select class!</th>";
            } else {
                echo "Sign in to Select a class! </th>";
            }
            ?>
    </tr>

<?php
$classVal = 1;
while ($row = $query->fetch_assoc()) {

    echo "<tr>";
    echo "<td><a href='classDetails.php?id=", $row['class'], "&spellCasting=",$row['spellcasting'],"&pageno=1'>", $row['class'], "</a></td>";
    echo "<td>", $row['description'], ".</td>";
    echo "<td>", $row['hit_die'], "</td>";
    echo "<td>", $row['main_stats'], "</td>";
    echo "<td>", $row['usual_races'], "</td>";
    echo "<td>", $row['spellcasting'], "</td>";
    echo "<td>", $row['specialty'], ".</td>";
    echo "<td>", $row['gear_proficiency'], "</td>";
    echo "<td> ";
    if (session_status() != PHP_SESSION_NONE) {
        echo "<form action='' method='POST'><input name ='classSel' type = 'submit' value = '" . $row['class'] . "' class='generalButton'></input></form></td>";
    } else {
        echo "</td>";
    }
    echo "</tr>";
    $classVal++;
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
<?php
include ('includes/footer.php');
?>