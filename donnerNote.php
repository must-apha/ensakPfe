<?php session_start();
if(!isset($_SESSION['id_enseignant'])){
    header('location:login.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Attribuer une Note</title>
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
            <th scope="col">Note</th>
            </tr>
        </thead>
        <tbody>
            <form action="traitementNote.php" method="post">
            <h3 class="container">Attribuer une Note</h3>
            <?php
            include("connexion.php");
            $id_enseignant = $_SESSION['id_enseignant'];

            $sql1 = "SELECT * FROM `stages` INNER JOIN `etudiants` ON
                    stages.fk_id_enseignant='$id_enseignant' WHERE stages.fk_id_etudiant=etudiants.id_apogee AND 
                    stages.validation='v' AND stages.note_finale IS NULL";
             $res1 = mysqli_query($link,$sql1);

             while($data1= mysqli_fetch_assoc($res1)){
                 $id_stage = $data1['id_stage'];
                 $sujet = $data1['sujet'];
                 $nom_etudiant1 = $data1['nom_etudiant1'];
                 $prenom_etudiant1 = $data1['prenom_etudiant1'];
                 $note = $data1['note_finale'];
                echo "<tr><td>$nom_etudiant1 $prenom_etudiant1</td><td>$sujet</td><td><td><input class='col-md-2' name='$id_stage' value='$note' type='text'></td></tr>";
                
             }
            ?>
            
            
        </tbody>
</table>
<div class="col-2 mx-auto">
                <button class="btn btn-primary w-100 py-2" name="donnerNote" type="submit">Valider</button>
            </div></form>
    <?php include "./jslib.html" ?>
</body>
</html>