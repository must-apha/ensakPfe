<?php session_start();
if(!isset($_SESSION['id_enseignant'])){
    header('location:login.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Choix</title>
    <?php include "./head.html" ?>
</head>
<body>
    <!-- Navbar Start -->
    <?php include "./navEns.html" ?>
    <!-- Navbar End -->
   
    <table class="container table table-responsive-sm table-striped table-hover wow fadeInUp " data-wow-delay="0.5s">
        <thead>
            <tr>
            <th scope="col">Sujet</th>
            <th scope="col">Technologies utilisées</th>
            <th scope="col">Description</th>
            <th scope="col">Choisir</th>
            </tr>
        </thead>
        <tbody>
            <form action="traitementChoix.php" method="post">
                <h3 class="container">Choisir un stage</h3>
            <?php
            include("connexion.php");
             $sql1 = "SELECT * FROM `stages`WHERE
                            stages.fk_id_enseignant IS NULL  ";
             $res1 = mysqli_query($link,$sql1);
             while($data1= mysqli_fetch_assoc($res1)){
                 $id_stage = $data1['id_stage'];
                 $sujet = $data1['sujet'];
                 $technologies = $data1['technologies'];
                 $description = $data1['description'];
                echo "<tr><td>$sujet</td><td>$technologies</td><td>$description</td><td><input name='$id_stage' value='$id_stage' type='radio'></td></tr>";
                
             }
            ?>
            
            
            
        </tbody>
        
</table>
<div class="col-2 mx-auto ">
                <button class="btn btn-primary w-100 py-2" name="choisir" type="submit">Valider</button>
            </div></form>
    <?php include "./jslib.html" ?>
</body>
</html>