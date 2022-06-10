<?php session_start();
if(!isset($_SESSION['id_adm'])){
    header('location:login.php');
}?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Etudiants par enseignant</title>
    <?php include "./head.html" ?>
</head>
<body>
    <!-- Navbar Start -->
    <?php include "./navAdm.html" ?>
    <!-- Navbar End -->
   
    <h3 class="container mt-1">Les étudiants par enseignant</h3>
    <table class="container table table-responsive-sm table-striped table-hover wow fadeInUp " data-wow-delay="0.5s">
    <?php
            include("connexion.php");
             $sql = "SELECT  * FROM 
             `stages`,`etudiants`,`enseignants` WHERE stages.fk_id_enseignant=enseignants.id_enseignant 
             AND stages.fk_id_etudiant=etudiants.id_apogee ";
             $res = mysqli_query($link,$sql);

             $sql1 = "SELECT  count(*) FROM `enseignants` ";
             $res1 = mysqli_query($link,$sql1);
             $nbr = mysqli_num_rows($res1);

             $sql3 = "SELECT  * FROM `enseignants` ";
             $res3 = mysqli_query($link,$sql3);
           for($i=0;$i<$nbr;$i++){
                while($data3= mysqli_fetch_assoc($res3)){
                    $nom_enseignant = $data3['nom_enseignant'];
                    $prenom_enseignant = $data3['prenom_enseignant'];
                    $id_ens = $data3['id_enseignant'];
                    echo "<tr><th scope='col'>$nom_enseignant $prenom_enseignant</th></tr>";
                    $sql4 = "SELECT  * FROM `etudiants`,`stages` WHERE stages.fk_id_etudiant=etudiants.id_apogee AND
                                stages.fk_id_enseignant='$id_ens'";
                    $res4 = mysqli_query($link,$sql4);
                    while($data4= mysqli_fetch_assoc($res4)){
                        $nom_etudiant1 = $data4['nom_etudiant1'];
                        $prenom_etudiant1 = $data4['prenom_etudiant1'];
                        echo "<tr><td scope='col'>$nom_etudiant1 $prenom_etudiant1</td></tr>";
                    }
                }
           }
             
        ?>
</table>
    <?php include "./jslib.html" ?>
</body>
</html>