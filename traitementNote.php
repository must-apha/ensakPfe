<?php session_start();?>
<?php
    include("connexion.php");
    $id_enseignant = $_SESSION['id_enseignant'];
    if(isset($_POST['donnerNote'])){
        foreach ($_POST as $key => $value) {
            if ($value!=''){
                $sql2 = "UPDATE `stages` SET `note_finale`='$value'  WHERE id_stage='$key'";
                $res2 = mysqli_query($link,$sql2);
            }
        }
        header('location:mesStages.php');
    }?>