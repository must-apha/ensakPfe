<?php session_start();
if(!isset($_SESSION['id_apogee'])){
  header('location:login.php');
}
?>
<html>
<head>
    <title>Présentation</title>
<?php include "./head.html" ?>
<link rel="stylesheet" href="in.css">
<style>

</style>
 
</head>
<body>
    <!-- Navbar Start -->
    <?php include "./navEtu.html" ?>
    <!-- Navbar End -->
    <div class="container bg-light mt-1 mb-5 wow fadeInUp" data-wow-delay="0.5s">
    <form action="traitementPre.php" method="POST" enctype="multipart/form-data">
    <h3 class="container">Déposer la présentation</h3> 
    <div class="image-upload container ">
      <label for="file-input" >
        <img src="https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/128/Downloads-icon.png"/>
      </label>

      <input id="file-input" name="presentation" type="file" />
  </div>
    
  <div class="mt-5 text-center"><input class="btn btn-primary profile-button" name="enregepresentation" value="Enregistrer" type="submit"></div>
  </form>
  </div>

<?php include "./jslib.html" ?>

</body>
</html>