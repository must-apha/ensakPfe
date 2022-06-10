<?php session_start();
if(!isset($_SESSION['id_enseignant'])){
    header('location:login.php');
}?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Valider</title>
    <?php include "./head.html" ?>
</head>
<body>
    <!-- Navbar Start -->
    <?php include "./navEns.html" ?>
    <!-- Navbar End -->
   
    <table class="container table table-responsive-sm table-striped table-hover wow fadeInUp " data-wow-delay="0.5s">
        <thead>
            <tr>
            <th scope="col">Etudiant</th>
            <th scope="col">Sujet</th>
            <th scope="col">Valider</th>
            </tr>
        </thead>
        <tbody>
            <form action="traitementValider.php" method="post">
            <h3 class="container">Valider un stage</h3>
            <?php
            include("connexion.php");
            $id_enseignant = $_SESSION['id_enseignant'];

            $sql1 = "SELECT * FROM `stages` INNER JOIN `etudiants` ON
                    stages.fk_id_enseignant='$id_enseignant' WHERE stages.fk_id_etudiant=etudiants.id_apogee AND 
                    stages.validation IS NULL OR stages.validation='NV'";
             $res1 = mysqli_query($link,$sql1);

             while($data1= mysqli_fetch_assoc($res1)){
                 $id_stage = $data1['id_stage'];
                 $sujet = $data1['sujet'];
                 $nom_etudiant1 = $data1['nom_etudiant1'];
                 $prenom_etudiant1 = $data1['prenom_etudiant1'];
                 $validation = $data1['validation'];
                echo "<tr><td>$nom_etudiant1 $prenom_etudiant1</td><td>$sujet</td><td><input name='$id_stage' value='$id_stage' type='radio'></td></tr>";
                
             }
            ?>
            
            
        </tbody>
</table>
<div class="col-2 mx-auto">
                <button class="btn btn-primary w-100 py-2" name="choisirV" type="submit">Valider</button>
            </div></form>
    <?php include "./jslib.html" ?>
</body>
</html>