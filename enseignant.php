<?php session_start();?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>enseignant</title>
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
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.php" class="nav-item nav-link ">Accueil</a>
                <a href="etudiant.php" class="nav-item nav-link">Espace étudiant</a>
                <a href="enseignant.php" class="nav-item nav-link active">Espace enseignant</a>
                <a href="administration.php" class="nav-item nav-link">Espace administration</a>
            </div>
            <a href="login.php" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Se connecter<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
    </nav>



    <!-- Navbar End -->



    <!-- Service Start -->
    <div class="container mx-auto col-lg-8 col-md-8  py-5 ">
        <div class="container ">
            <div class="row">
                <div class="col-lg-4 col-sm-4 mb-3 wow fadeInUp" data-wow-delay="0.3s">
                    <a href="profilens.php">
                    <div class="service-item text-center pt-3" style="height: 200px">
                        <div class="p-4">
                            <i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>
                            <h5 class="mb-3">Mon Profil</h5>
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-4 mb-3 wow fadeInUp" data-wow-delay="0.3s">
                    <a href="allStagesEns.php">
                    <div class="service-item text-center pt-3" style="height: 200px">
                        <div class="p-4">
                            <i class="fa fa-3x fa-globe text-primary mb-4"></i>
                            <h5 class="mb-3">Tous les stages</h5>
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-4 mb-3 wow fadeInUp" data-wow-delay="0.3s">
                    <a href="mesStages.php">
                    <div class="service-item text-center pt-3" style="height: 200px">
                        <div class="p-4">
                        <i class="fa fa-3x fa-home text-primary mb-4"></i>
                            <h5 class="mb-3">Les stages que j'encadre</h5>
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-4 mb-3 wow fadeInUp" data-wow-delay="0.3s">
                    <a href="choix.php">
                    <div class="service-item text-center pt-3" style="height: 200px">
                        <div class="p-4">
                        <i class="fa fa-3x fa-book-open text-primary mb-4"></i>
                            <h5 class="mb-3">Choisir un stage</h5>
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-4 mb-3 wow fadeInUp" data-wow-delay="0.3s">
                    <a href="valider.php">
                    <div class="service-item text-center pt-3" style="height: 200px">
                        <div class="p-4">
                        <i class="fa fa-3x fa-book-open text-primary mb-4"></i>
                            <h5 class="mb-3">Valider un stage</h5>
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-4 mb-3 wow fadeInUp" data-wow-delay="0.3s">
                    <a href="donnerNote.php">
                    <div class="service-item text-center pt-3" style="height: 200px">
                        <div class="p-4">
                        <i class="fa fa-3x fa-book-open text-primary mb-4"></i>
                            <h5 class="mb-3">Attribuer une note</h5>
                        </div>
                    </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    
    <!-- Service End -->



    <?php include "./jslib.html" ?>
</body>

</html>