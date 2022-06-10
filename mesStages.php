<?php session_start();
    if(!isset($_SESSION['id_enseignant'])){
        header('location: login.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tous les stages</title>
    <?php include "./head.html" ?>
</head>
<body>
    <!-- Navbar Start -->
    <?php include "./navEns.html" ?>
    <!-- Navbar End -->
   
    <table class="container table table-responsive-sm table-striped table-hover wow fadeInUp " data-wow-delay="0.5s">
        <h3 class="container">Les stages que j'encadre</h3>
        <thead>
            <tr>
            <th scope="col">Etudiant</th>
            <th scope="col">Sujet</th>
            <th scope="col">Validation</th>
            <th scope="col">Note</th>
            </tr>
        </thead>
        <tbody>
            <?php
            include("connexion.php");
            $id_enseignant = $_SESSION['id_enseignant'];
             $sql1 = "SELECT * FROM `stages` INNER JOIN `etudiants` ON
             stages.fk_id_enseignant='$id_enseignant' WHERE stages.fk_id_etudiant=etudiants.id_apogee";
             $res1 = mysqli_query($link,$sql1);
             while($data1= mysqli_fetch_assoc($res1)){
                 $sujet = $data1['sujet'];
                 $nom_etudiant1 = $data1['nom_etudiant1'];
                 $prenom_etudiant1 = $data1['prenom_etudiant1'];
                 $validation = $data1['validation'];
                 $note = $data1['note_finale'];

                echo "<tr><td>$nom_etudiant1 $prenom_etudiant1</td><td>$sujet</td><td>$validation</td><td>$note</td></tr>";
             }
            ?>
        </tbody>
</table>
    <?php include "./jslib.html" ?>
</body>
</html>