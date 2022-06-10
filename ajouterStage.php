<?php session_start();
if(!isset($_SESSION['id_apogee'])){
    header('location:login.php');
}
?>
<html>
<head>
    <title>Ajouter</title>
<?php include "./head.html" ?>
</head>
<body>
    <!-- Navbar Start -->
    <?php include "./navEtu.html" ?>
    <!-- Navbar End -->

    <!-- Requettes Start -->
<?php include("connexion.php");?>
<?php
        $id_apogee = $_SESSION['id_apogee'];
        $sql0 = "SELECT * FROM stages WHERE fk_id_etudiant='".$id_apogee."'";
        $res0 = mysqli_query($link,$sql0);
        if($data0 = mysqli_fetch_assoc($res0)){
            echo ("<script LANGUAGE='JavaScript'>
    window.alert('Vous avez déjà ajouté un stage');
    window.location.href='etudiant.php';
    </script>");
        
        }

        $sql1 = "SELECT DISTINCT nom_entreprise FROM entreprises";
        $res1 = mysqli_query($link,$sql1);

        $sql2 = "SELECT lib_ville FROM villes";
        $res2 = mysqli_query($link,$sql2);
?>
    <!-- Requettes End-->

    <div class="container bg-light mt-1 mb-5 wow fadeInUp" data-wow-delay="0.5s">
        <form action="ajouterStage.php" method="post">
            <div class="col-md-5 mx-auto border-right">
                <div class="p-3 py-5">
                    <div class="row">
                        <div class="d-flex justify-content-between align-items-center ">
                            <h6 class="text-right">Informations sur l'entreprise</h4>
                        </div>
                        <div class="col-md-12"><label class="labels">Nom</label>
                        <input class="form-control" name="nometr" list="entreprises" required>
                        <datalist id="entreprises">
                            <?php
                                while($data1=mysqli_fetch_assoc($res1)){
                                    $etr=$data1['nom_entreprise'];
									echo "<option value='$etr'>";
                                }
                            ?>
                        </datalist></div>
                        <div class="col-md-12"><label class="labels">Adresse</label><input type="text" name="adresse" class="form-control" required ></div>
                        <div class="col-md-12"><label class="labels">N.Téléphone</label><input type="tel" name="telEtr" class="form-control" required ></div>
                        <div class="col-md-12"><label class="labels">Ville</label>
                        <input class="form-control" name="ville" list="villes" required>
                        <datalist id="villes">
                            <?php
                                while($data2=mysqli_fetch_assoc($res2)){
                                    $ville=$data2['lib_ville'];
									echo "<option value='$ville'>";
                                }
                            ?>
                        </datalist></div>

                        <div class="d-flex justify-content-between align-items-center mt-5">
                            <h6 class="text-right">Informations sur l'encadrant de l'entreprise</h4>
                        </div>
                        <div class="col-md-12"><label class="labels">Nom</label><input type="text" name="nomEnc" class="form-control" required></div>
                        <div class="col-md-12"><label class="labels">Prénom</label><input type="text" name="prenomEnc" class="form-control" required></div>
                        <div class="col-md-12"><label class="labels">N.Téléphone</label><input type="tel" name="telEnc" class="form-control" required></div>
                        <div class="col-md-12"><label class="labels">Email</label><input type="email" name="email" class="form-control" required></div>

                        <div class="d-flex justify-content-between align-items-center mt-5">
                            <h6 class="text-right">Informations sur le stage</h4>
                        </div>
                        <div class="col-md-12"><label class="labels">Sujet</label><input type="text" name="sujet" class="form-control" required></div>
                        <div class="col-md-12"><label class="labels">Technologies utilisées</label><input type="text" name="techno" class="form-control" required></div>
                        <div class="col-md-12"><label class="labels">Description</label><textarea class="form-control" name="desc" rows="6" required></textarea></div>

                        <div class="d-flex justify-content-between align-items-center mt-5">
                            <h6 class="text-right">Binome</h4>
                        </div>
                        <div class="col-md-12"><label class="labels">Nom</label><input type="text" name="nom2" class="form-control" ></div>
                        <div class="col-md-12"><label class="labels">Prénom</label><input type="text" name="prenom2" class="form-control" ></div>
                    </div>
                    
                    <div class="mt-5 text-center"><input class="btn btn-primary profile-button" name="enregeStage" value="Enregistrer" type="submit"></div>
                </div>
            </div>
        </div>
    
        </div>
        </form>
</div>
    <?php include "./jslib.html" ?>
</body>
</html>
<!-- Requettes Start -->
<?php
            if (isset($_POST['enregeStage']) && !empty($_POST['sujet'])){
                $id_apogee = $_SESSION['id_apogee'];

                $nometr = htmlspecialchars($_POST['nometr']);
                $adr = htmlspecialchars($_POST['adresse']);
                $teletr = htmlspecialchars($_POST['telEtr']);
                $ville = htmlspecialchars($_POST['ville']);

                $nomenc = htmlspecialchars($_POST['nomEnc']);
                $prenomenc = htmlspecialchars($_POST['prenomEnc']);
                $telenc = htmlspecialchars($_POST['telEnc']);
                $email = htmlspecialchars($_POST['email']);

                $sujet = htmlspecialchars($_POST['sujet']);
                $technologies = htmlspecialchars($_POST['techno']);
                $description = htmlspecialchars($_POST['desc']);

                $nom2 = htmlspecialchars($_POST['nom2']);
                $prenom2 = htmlspecialchars($_POST['prenom2']);

                $sql3 = "SELECT id_ville FROM villes WHERE lib_ville='".$ville."'";
                $res3 = mysqli_query($link,$sql3);
                $data3 = mysqli_fetch_assoc($res3);
                $fk_id_ville = $data3['id_ville'];

                $sql4 = "INSERT INTO entreprises(nom_entreprise,adresse_entreprise,tel_entreprise,fk_id_ville )
                          VALUES ('$nometr','$adr','$teletr',$fk_id_ville)";
                $res4 = mysqli_query($link,$sql4);

                $sql6 = "SELECT id_entreprise FROM entreprises WHERE nom_entreprise='".$nometr."'";
                $res6 = mysqli_query($link,$sql6);
                $data6 = mysqli_fetch_assoc($res6);
                $fk_id_etr = $data6['id_entreprise'];
                

                $sql5 = "INSERT INTO encadrants_entreprise(nom_encadrant,prenom_encadrant,tel_encadrant,email_encadrant,fk_id_etr)
                          VALUES ('$nomenc','$prenomenc','$telenc','$email',$fk_id_etr)";
                $res5 = mysqli_query($link,$sql5);      
                
                $sql7 = "INSERT INTO stages(sujet,technologies,`description`,fk_id_etudiant )
                          VALUES ('$sujet','$technologies','$description',$id_apogee)";
                $res7 = mysqli_query($link,$sql7);

                if($res4==true && $res5==true && $res7==true){
                    
                    echo ("<script LANGUAGE='JavaScript'>
                    window.alert('Votre stage a été ajouté avec succée !');
                    window.location.href='etudiant.php';
                        </script>");
                }
                else {
                    echo ("<script LANGUAGE='JavaScript'>
                    window.alert('Erreur lors de l'enregistrement ');
                        </script>");
                }
            }
?>
<!-- Requettes End-->