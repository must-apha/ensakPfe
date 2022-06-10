<?php session_start();
    if(isset($_SESSION['id_adm'])){
        header('location:administration.php');
    }
    elseif(isset($_SESSION['id_apogee'])){
        header('location:etudiant.php');
    }
    elseif(isset($_SESSION['id_enseignant'])){
        header('location:enseignant.php');
    }
?>
<html>
<head>
    <title>Login</title>
    <?php include "./head.html" ?>
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
        <a href="index.php" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>EnsakPfe</h2>
        </a>
    </nav>
    <!-- Navbar End -->


    <!-- Header Start -->
    
    <!-- Header End -->
    
    <!-- login Start -->
    <div class="container mx-auto mt-1 col-lg-8 col-md-8 wow fadeInUp bg-light" data-wow-delay="0.5s">
                    <form action="login.php" method="post" class="p-3">
                        <div class="row g-3 ">
                            <div class="col-6 p-3 mx-auto">
                                <div class="form-floating">
                                    <input type="email" class="form-control" name="login"  placeholder="Your Name" required>
                                    <label for="name">Login</label>
                                </div>
                            </div>
                        </div>
                        <div class="row g-3">
                            <div class="col-6 p-3 mx-auto">
                                <div class="form-floating">
                                    <input type="password" class="form-control" name="passe"  placeholder="Your Name" required>
                                    <label for="name">Mot de Passe</label>
                                </div>
                            </div>
                        </div>
                            <div class="col-4 mx-auto">
                                <button class="btn btn-primary w-100 py-2" name="envoyerLogin" type="submit">Se connecter</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- login End -->

    <?php include "./jslib.html" ?>
</body>

<!-- Vérification du login et Mot de Passe -->
<?php
    if(isset($_POST['envoyerLogin'])){
        $login = $_POST['login'];
        $passe = $_POST['passe'];
        include("connexion.php");

        $sql1 = "SELECT * FROM etudiants WHERE login_etudiant='".$login."' and passe_etudiant='".$passe."'";
        $res1 = mysqli_query($link,$sql1);
        $row1 = mysqli_fetch_assoc($res1);

        $sql2 = "SELECT * FROM enseignants WHERE login_enseignant='".$login."' and passe_enseignant='".$passe."'";
        $res2 = mysqli_query($link,$sql2);
        $row2 = mysqli_fetch_assoc($res2);

        $sql3 = "SELECT * FROM administrateurs WHERE login_adm='".$login."' and passe_adm='".$passe."'";
        $res3 = mysqli_query($link,$sql3);
        $row3 = mysqli_fetch_assoc($res3);

        if($row1!=false){
            $_SESSION['id_apogee']       =  $row1['id_apogee'];
            $_SESSION['passe_etudiant']  =  $row1['passe_etudiant'];
            $_SESSION['login_etudiant']  =  $row1['login_etudiant'];
            $_SESSION['prenom_etudiant'] =  $row1['prenom_etudiant1'];
            $_SESSION['nom_etudiant']    =  $row1['nom_etudiant1'];
            $_SESSION['photo_etudiant']  =  $row1['photo_etudiant'];
            $_SESSION['filiere']         =  $row1['filiere'];
            header('location: etudiant.php');
        }
        elseif($row2!=false){
            $_SESSION['id_enseignant']     =  $row2['id_enseignant'];
            $_SESSION['passe_enseignant']  =  $row2['passe_enseignant'];
            $_SESSION['login_enseignant']  =  $row2['login_enseignant'];
            $_SESSION['prenom_enseignant'] =  $row2['prenom_enseignant'];
            $_SESSION['nom_enseignant']    =  $row2['nom_enseignant'];
            $_SESSION['photo_enseignant']  =  $row2['photo_enseignant'];
            header('location: enseignant.php');
        }
        elseif($row3!=false){
            $_SESSION['id_adm']     =  $row3['id_adm'];
            $_SESSION['passe_adm']  =  $row3['passe_adm'];
            $_SESSION['login_adm']  =  $row3['login_adm'];
            $_SESSION['prenom_adm'] =  $row3['prenom_adm'];
            $_SESSION['nom_adm']    =  $row3['nom_adm'];
            $_SESSION['photo_adm']  =  $row3['photo_adm'];
            header('location: administration.php');
        }
        else{
            echo ("<script LANGUAGE='JavaScript'>
                window.alert('Login ou mot de passe est incorrecte');
                </script>");
        }
    }
?>
</html>