<?php session_start();
if(!isset($_SESSION['id_adm'])){
    header('location:login.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Notes</title>
    <?php include "./head.html" ?>
</head>
<body>
    <!-- Navbar Start -->
    <?php include "./navAdm.html" ?>
    <!-- Navbar End -->
   
    <h3 class="container">Les notes finales</h3>
    <table class="container table table-responsive-sm table-striped table-hover wow fadeInUp " data-wow-delay="0.5s">
    <?php
            include("connexion.php");
             $sql = "SELECT nom_etudiant1,prenom_etudiant1,note_finale FROM etudiants INNER JOIN stages ON 
                    stages.fk_id_etudiant=etudiants.id_apogee WHERE stages.note_finale IS NOT NULL";
             $res = mysqli_query($link,$sql);?>
            <thead>
            <tr>
            <th scope="col">Etudiant</th>
            <th scope="col">Note finale</th>
            </tr>
        </thead>
        <?php
             while($data1= mysqli_fetch_assoc($res)){
                 $prenom_etudiant1 = $data1['prenom_etudiant1'];
                 $nom_etudiant1 = $data1['nom_etudiant1'];
                 $note_finale = $data1['note_finale'];

                 echo "<tr><td scope='col'>$nom_etudiant1 $prenom_etudiant1</td><td scope='col'>$note_finale</td></tr>";
             }
        ?>
</table>
        
            <form action="excel.php" method="post">
            <div class="container d-flex justify-content-center py-2 wow fadeInUp"data-wow-delay="0.5s">
                <input type="submit" name="exporter" class="btn btn-success" value="Exporter">
            </div></form>
        
    <?php include "./jslib.html" ?>
</body>
</html>