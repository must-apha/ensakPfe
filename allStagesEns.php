<?php session_start();
if(!isset($_SESSION['id_enseignant'])){
    header('location:login.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tous les stages</title>
    <?php include "./head.html" ?>
</head>
<body>
<?php include "./navEns.html" ?>
<?php include "./allStages.php" ?>