<?php session_start();?>
<?php
    include("connexion.php");
    $passe = $_POST['passe'];
    $id_adm = $_SESSION['id_adm'] ;
	header('location: index.php');
    if(isset($_POST['enregetud'])){
        if(isset($_FILES['photo']) and $_FILES['photo']['error']==0)
					{
						$dossier= 'img/';
						$temp_name=$_FILES['photo']['tmp_name'];
						if(!is_uploaded_file($temp_name))
						{
						exit("le fichier est untrouvable");
						}
						if ($_FILES['photo']['size'] >= 1000000){
							exit("Erreur, le fichier est volumineux");
						}
						$infosfichier = pathinfo($_FILES['photo']['name']);
						$extension_upload = $infosfichier['extension'];
						
						$extension_upload = strtolower($extension_upload);
						$extensions_autorisees = array('png','jpg','jpeg');
						if (!in_array($extension_upload, $extensions_autorisees))
						{
						exit("Erreur, Veuillez inserer un fichier (extensions autorisées: pdf)");
						}
						$photo=$id_adm."adm.".$extension_upload;
						if(!move_uploaded_file($temp_name,$dossier.$photo)){
						exit("Problem dans le telechargement un fichier, Ressayez");
						}  
						$sql0 = "UPDATE `administrateurs` SET `photo_adm`='$photo'
                    				 WHERE `id_adm`= '$id_adm'";
        				$res0 = mysqli_query($link,$sql0);
         
	}
        $sql1 = "UPDATE `administrateurs` SET `passe_adm`='$passe' WHERE `id_adm`= '$id_adm'";
        $res1 = mysqli_query($link,$sql1);
        if($res1==true){
			$_SESSION['passe_adm'] = $passe;
            header('location:profilAdm.php');
        }
    }
?>