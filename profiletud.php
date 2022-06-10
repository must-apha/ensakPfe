<?php session_start();?>
<?php
if(!isset($_SESSION['id_apogee'])){
    header('location:login.php');
}
    include("connexion.php");
    $id_apogee = $_SESSION['id_apogee'] ;
    $nom = $_SESSION['nom_etudiant'];
    $prenom = $_SESSION['prenom_etudiant'];
    $filiere = $_SESSION['filiere'];
    $login = $_SESSION['login_etudiant'] ;
    $passe = $_SESSION['passe_etudiant'];
    $photo = $_SESSION['photo_etudiant'];

    

?>
<!doctype html>
<html lang="en">
    <head>
    <title>Profile</title>
    <?php include "./head.html" ?>
    <link rel="stylesheet" href="in.css">
    </head>
<body >
    <!-- Navbar Start -->
    <?php include "./navEtu.html" ?>
    <!-- Navbar End -->
<div class="container bg-light mt-1 mb-5 wow fadeInUp" data-wow-delay="0.5s">
    <form action="traitementProfiletud.php" method="post" enctype="multipart/form-data">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
               <?php $sql1 = "SELECT * FROM etudiants WHERE id_apogee='$id_apogee'";
                $res1 = mysqli_query($link,$sql1);
                while($data1= mysqli_fetch_assoc($res1)){
                    $ph = $data1['photo_etudiant'];
            echo "<div class='h-50 w-50'><img class='img-fluid img-thumbnail rounded' src=\"img/$ph\"></div>";
        }?>
            </div>
            <div class="image-upload container ">
                <label for="file-input" >
                    <img id="taille" src="https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/128/Downloads-icon.png"/>
                    <br> Changer la photo de profile
                </label>

                <input id="file-input" name="photo" type="file" />
            </div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile</h4>
                </div>
                <div class="row mt-2">
                    <div class="mb-3 col-md-12"><label class="labels">N°apogee</label><input type="text" name="apogee" class="form-control rounded" placeholder="" value="<?php echo "$id_apogee"; ?>" disabled></div>
                    <div class="mb-3 col-md-12"><label class="labels">Nom</label><input type="text" name="nom" class="form-control" placeholder="" value="<?php echo "$nom"; ?>" disabled></div>
                    <div class="mb-3 col-md-12"><label class="labels">Prénom</label><input type="text" name="prenom" class="form-control" value="<?php echo "$prenom"; ?>" placeholder="" disabled></div>
                    <div class="mb-3 col-md-12"><label class="labels">Filière</label><input type="text" name="filiere" class="form-control" placeholder="" value="<?php echo "$filiere"; ?>" disabled></div>
                    <div class="mb-3 col-md-12"><label class="labels">Login</label><input type="text" name="login" class="form-control" placeholder="" value="<?php echo "$login"; ?>" disabled></div>
                    <div class="col-md-12"><label class="labels">Mot de Passe</label><input type="password" id="myInput" name="passe" class="form-control" placeholder="" value="<?php echo "$passe"; ?>"></div>
                    <div class="mb-3 col-md-12"><input type="checkbox"  onclick="myFunction()"><label class="labels m-2">Afficher le mot de passe</label></div>
                </div>
                
                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit"  name="enregetud" type="button">Enregistrer</button></div>
                
            </div>
        </div>
    </div>
    </div>
    </div>
    </form>
</div>
    
    <script>
        function myFunction() {
        var x = document.getElementById("myInput");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
        }
    </script>
    <?php include "./jslib.html" ?>

</body>


</html>

