<?php session_start();
if(!isset($_SESSION['id_apogee'])){
  header('location:login.php');
}
?>
<html>
<head>
    <title>Attestation et fiche</title>
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
    <form action="attestation.php" method="POST" enctype="multipart/form-data">
    <div class="image-upload container ">
      <label for="file-input2" >
      <h3>Déposer la fiche d'évaluation</h3>
        <img src="https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/128/Downloads-icon.png"/>
      </label>
      
      <input id="file-input2" name="fiche" type="file" />
  </div>

    <div class="image-upload container ">
      <label for="file-input" >
      <h3>Déposer l'attestation du stage</h3>
        <img src="https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/128/Downloads-icon.png"/>
      </label>
      
      <input id="file-input" name="attestation" type="file" />
  </div>
  
  
    
  <div class="mt-5 text-center"><input class="btn btn-primary profile-button" name="enregeatt" value="Enregistrer" type="submit"></div>
  </form>
  </div>

<?php include "./jslib.html" ?>

</body>

<?php
    include("connexion.php");
    
    if(isset($_POST['enregeatt'])){
        $id_apogee = $_SESSION['id_apogee'];
		if(isset($_FILES['attestation']) and $_FILES['attestation']['error']==0)
					{
						$dossier= 'attestations/';
						$temp_name=$_FILES['attestation']['tmp_name'];
						if(!is_uploaded_file($temp_name))
						{
						exit("le fichier est untrouvable");
						}
						if ($_FILES['attestation']['size'] >= 1000000){
							exit("Erreur, le fichier est volumineux");
						}
						$infosfichier = pathinfo($_FILES['attestation']['name']);
						$extension_upload = $infosfichier['extension'];
						
						$extension_upload = strtolower($extension_upload);
						$extensions_autorisees = array('pdf');
						if (!in_array($extension_upload, $extensions_autorisees))
						{
						exit("Erreur, Veuillez inserer un fichier (extensions autorisées: pdf)");
						}
						$attestation=$id_apogee.".".$extension_upload;
						if(!move_uploaded_file($temp_name,$dossier.$attestation)){
						exit("Problem dans le telechargement un fichier, Ressayez");
						}   
	}
		if(isset($_FILES['fiche']) and $_FILES['fiche']['error']==0)
					{
						$dossier= 'fiches/';
						$temp_name=$_FILES['fiche']['tmp_name'];
						if(!is_uploaded_file($temp_name))
						{
						exit("le fichier est untrouvable");
						}
						if ($_FILES['fiche']['size'] >= 1000000){
							exit("Erreur, le fichier est volumineux");
						}
						$infosfichier = pathinfo($_FILES['fiche']['name']);
						$extension_upload = $infosfichier['extension'];
						
						$extension_upload = strtolower($extension_upload);
						$extensions_autorisees = array('pdf');
						if (!in_array($extension_upload, $extensions_autorisees))
						{
						exit("Erreur, Veuillez inserer un fichier (extensions autorisées: pdf)");
						}
						$fiche=$id_apogee.".".$extension_upload;
						if(!move_uploaded_file($temp_name,$dossier.$fiche)){
						exit("Problem dans le telechargement un fichier, Ressayez");
						}   
	}
	$sql1 = "UPDATE `stages` SET `attestation`='$attestation' `fiche_evaluation`='$fiche' WHERE fk_id_etudiant ='".$id_apogee."'";
    $res1 = mysqli_query($link,$sql1);
    if($res1==true){
        echo "cdxsq";
    }
    }
    
    ?>
</html>