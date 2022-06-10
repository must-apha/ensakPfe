<?php session_start();
if(!isset($_SESSION['id_adm'])){
    header('location:login.php');
}?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Validation</title>
    <?php include "./head.html" ?>
</head>
<body>
    <!-- Navbar Start -->
    <?php include "./navAdm.html" ?>
    <!-- Navbar End -->
   
    <h3 class="container">Les stages validés pour la soutenance</h3>
    <table class="container table table-responsive-sm table-striped table-hover wow fadeInUp " data-wow-delay="0.5s">
    <?php
            include("connexion.php");
             $sql = "SELECT nom_etudiant1,prenom_etudiant1,sujet FROM etudiants INNER JOIN stages 
                    ON stages.fk_id_etudiant=etudiants.id_apogee WHERE stages.validation='v'";
             $res = mysqli_query($link,$sql);?>
            <thead>
            <tr>
            <th scope="col">Etudiant</th>
            <th scope="col">Sujet</th>
            </tr>
        </thead>
        <?php
             while($data1= mysqli_fetch_assoc($res)){
                 $prenom_etudiant1 = $data1['prenom_etudiant1'];
                 $nom_etudiant1 = $data1['nom_etudiant1'];
                 $sujet = $data1['sujet'];

                 echo "<tr><td scope='col'>$nom_etudiant1 $prenom_etudiant1</td><td scope='col'>$sujet</td></tr>";

             
             
             }
           
             
        ?>
</table>
    <?php include "./jslib.html" ?>
</body>
</html>