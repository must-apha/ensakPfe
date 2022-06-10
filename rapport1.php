<?php session_start();
if(!isset($_SESSION['id_apogee'])){
  header('location:login.php');
}
?>
<html>
<head>
    <title>Rapport 1</title>
    <link rel="stylesheet" href="in.css">
<?php include "./head.html" ?>
<style>

</style>
 
</head>
<body>
    <!-- Navbar Start -->
    <?php include "./navEtu.html" ?>
    <!-- Navbar End -->
    <div class="container bg-light mt-1 mb-5 wow fadeInUp" data-wow-delay="0.5s">
    <form action="traitementRap1.php"  method="POST" enctype="multipart/form-data">
    
  <h3 class="container">Déposer la première version du rapport</h3> 
  

  <div class="image-upload container ">
  <label for="file-input" >
    <img src="https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/128/Downloads-icon.png"/>
  </label>

  <input id="file-input" name="rapport1" type="file" />
</div>
<div class="mt-5 text-center"><input class="btn btn-primary profile-button" name="enregerap1" value="Enregistrer" type="submit"></div>
  </form>
</div>

<?php include "./jslib.html" ?>

</body>
</html>
