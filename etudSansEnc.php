<?php session_start();
if(!isset($_SESSION['id_adm'])){
    header('location:login.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Etudiants Sans Encadrant</title>
    <?php include "./head.html" ?>
</head>
<body>
    <!-- Navbar Start -->
    <?php include "./navAdm.html" ?>
    <!-- Navbar End -->
   
    <h3 class="container">Les étudiants sans encadrant</h3>
    <table class="container table table-responsive-sm table-striped table-hover wow fadeInUp " data-wow-delay="0.5s">
    <?php
            include("connexion.php");
             $sql = "SELECT DISTINCT nom_etudiant1,prenom_etudiant1 FROM etudiants INNER JOIN 
             stages ON stages.fk_id_etudiant=etudiants.id_apogee WHERE stages.fk_id_enseignant IS NULL";
             $res = mysqli_query($link,$sql);
             while($data1= mysqli_fetch_assoc($res)){
                 $prenom_etudiant1 = $data1['prenom_etudiant1'];
                 $nom_etudiant1 = $data1['nom_etudiant1'];

                 echo "<tr><td scope='col'>$nom_etudiant1 $prenom_etudiant1</td></tr>";

             
             
             }
           
             
        ?>
</table>
    <?php include "./jslib.html" ?>
</body>
</html>