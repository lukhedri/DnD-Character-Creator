<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include ('includes/header.php');
include ('includes/database.php');


if (!filter_has_var(INPUT_GET, "id") || !filter_has_var(INPUT_GET, "spellCasting") || !filter_has_var(INPUT_GET, "pageno")) {
    $conn->close();
    require_once ('includes/footer.php');
    die("Your request cannot be processed since there was a problem retrieving class.");
}

//retrieve book id from a query string variable.
$class = filter_input(INPUT_GET, "id", FILTER_SANITIZE_STRING);
$spellCasting = filter_input(INPUT_GET, "spellCasting", FILTER_SANITIZE_STRING);
if (isset($_GET['pageno'])) {
    $pageno = filter_input(INPUT_GET, "pageno", FILTER_SANITIZE_NUMBER_INT);
} else {
    $pageno = 1;
}
$no_of_records_per_page = 5;
$offset = ($pageno-1) * $no_of_records_per_page; 
$total_pages_sql = "SELECT COUNT(*) FROM $class";
$result = mysqli_query($conn,$total_pages_sql);
$total_rows = mysqli_fetch_array($result)[0];
$total_pages = ceil($total_rows / $no_of_records_per_page);

$sql = "SELECT * FROM $class LIMIT $offset, $no_of_records_per_page";
$res_data = mysqli_query($conn,$sql);

//Handle errors
if (!$res_data) {
    $errno = $conn->errno;
    $error = $conn->error;
    $conn->close();
    require 'includes/footer.php';
    die("Selection failed: ($errno) $error.");
}

?>
<table>
    <tr>
        <th>Level:</th>
        <th>Features Gained:</th>
        <th>First Feature:</th>
        <th>Other Features:</th>
        <th>Proficiency Bonus:</th>

        <?php
        if($spellCasting == "YES")
        {
        echo "<th>Cantrips</th>";
        echo "<th>Spell Slots 1:</th>";
        echo "<th>Spell Slots 2:</th>";
        echo "<th>Spell Slots 3:</th>";
        echo "<th>Spell Slots 4:</th>";
        echo "<th>Spell Slots 5:</th>";
        echo "<th>Spell Slots 6:</th>";
        echo "<th>Spell Slots 7:</th>";
        echo "<th>Spell Slots 8:</th>";
        echo "<th>Spell Slots 9:</th>";
        }
        ?>
    </tr>
        <?php
while ($row = mysqli_fetch_array($res_data)) {
    echo "<tr>";
    echo "<td>", $row['level'], "</td>";
    echo "<td>", $row['feature'], "</td>";
    echo "<td>", $row['feat_desc_1'], "</td>";
    echo "<td>", $row['feat_desc_2'], "</td>";
    echo "<td>", $row['proficiency'], "</td>";
if($spellCasting == "YES")
    {
    echo "<td>", $row['cantrips'], "</td>";
    echo "<td>", $row['spell_slots_1'], "</td>";
    echo "<td>", $row['spell_slots_2'], "</td>";
    echo "<td>", $row['spell_slots_3'], "</td>";
    echo "<td>", $row['spell_slots_4'], "</td>";
    echo "<td>", $row['spell_slots_5'], "</td>";
    echo "<td>", $row['spell_slots_6'], "</td>";
    echo "<td>", $row['spell_slots_7'], "</td>";
    echo "<td>", $row['spell_slots_8'], "</td>";
    echo "<td>", $row['spell_slots_9'], "</td>";
    echo "</tr>";
   }
}


?>
</table>

<ul class="pagination">
    <li><a href="?pageno=1&id=<?php echo $class?>&spellCasting=<?php echo $spellCasting?>">First</a></li>
    <li class="<?php if($pageno <= 1){ echo 'disabled'; } ?>">
        <a href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=" .($pageno-1). "&id=$class&spellCasting=$spellCasting";}?>">Prev</a>
    </li>
    <li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?>">
        <a href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=" .($pageno+1). "&id=$class&spellCasting=$spellCasting";}?>">Next</a>
    </li>
    <li><a href="?pageno=<?php echo $total_pages;?>&id=<?php echo $class?>&spellCasting=<?php echo $spellCasting?>">Last</a></li>
</ul>
<?php 
include ('includes/footer.php');
?>