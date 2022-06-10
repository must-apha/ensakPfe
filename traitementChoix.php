<?php session_start();?>
<?php
    include("connexion.php");
    $id_enseignant = $_SESSION['id_enseignant'];
    if(isset($_POST['choisir'])){
        foreach ($_POST as $key => $value) {
            $sql2 = "UPDATE `stages` SET `fk_id_enseignant`='$id_enseignant' WHERE id_stage='$value'";
            $res2 = mysqli_query($link,$sql2);
        }
        header('location:mesStages.php');
    }?>

