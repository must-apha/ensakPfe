<?php session_start();?>
<?php
    include("connexion.php");
    
    if(isset($_POST['enregerap1'])){
        $id_apogee = $_SESSION['id_apogee'];
        if(isset($_FILES['rapport1']) and $_FILES['rapport1']['error']==0)
					{
						$dossier= 'rapportVersion1/';
						$temp_name=$_FILES['rapport1']['tmp_name'];
						if(!is_uploaded_file($temp_name))
						{
						exit("le fichier est untrouvable");
						}
						if ($_FILES['rapport1']['size'] >= 1000000){
							exit("Erreur, le fichier est volumineux");
						}
						$infosfichier = pathinfo($_FILES['rapport1']['name']);
						$extension_upload = $infosfichier['extension'];
						
						$extension_upload = strtolower($extension_upload);
						$extensions_autorisees = array('pdf','ppt','pptx');
						if (!in_array($extension_upload, $extensions_autorisees))
						{
						exit("Erreur, Veuillez inserer un fichier (extensions autorisées: pdf)");
						}
						$rapport1=$id_apogee.".".$extension_upload;
						if(!move_uploaded_file($temp_name,$dossier.$rapport1)){
						exit("Problem dans le telechargement un fichier, Ressayez");
						}   
	}
    }
    $sql1 = "UPDATE `stages` SET `rapport_ver1`='$rapport1' WHERE fk_id_etudiant ='".$id_apogee."'";
    $res1 = mysqli_query($link,$sql1);
    if($res1==true){
        echo ("<script LANGUAGE='JavaScript'>
                    window.alert('Votre rapport a été ajouté avec succée !');
                    window.location.href='etudiant.php';
                        </script>");
    } 
    ?>