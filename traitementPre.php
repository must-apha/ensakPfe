<?php session_start();?>
<?php
    include("connexion.php");
    
    if(isset($_POST['enregepresentation'])){
        $id_apogee = $_SESSION['id_apogee'];
        if(isset($_FILES['presentation']) and $_FILES['presentation']['error']==0)
					{
						$dossier= 'presentations/';
						$temp_name=$_FILES['presentation']['tmp_name'];
						if(!is_uploaded_file($temp_name))
						{
						exit("le fichier est untrouvable");
						}
						if ($_FILES['presentation']['size'] >= 1000000){
							exit("Erreur, le fichier est volumineux");
						}
						$infosfichier = pathinfo($_FILES['presentation']['name']);
						$extension_upload = $infosfichier['extension'];
						
						$extension_upload = strtolower($extension_upload);
						$extensions_autorisees = array('pdf','pptx');
						if (!in_array($extension_upload, $extensions_autorisees))
						{
						exit("Erreur, Veuillez inserer un fichier (extensions autorisées: pdf)");
						}
						$presentation=$id_apogee.".".$extension_upload;
						if(!move_uploaded_file($temp_name,$dossier.$presentation)){
						exit("Problem dans le telechargement un fichier, Ressayez");
						}   
	}
    }
    $sql1 = "UPDATE `stages` SET `presentation`='$presentation' WHERE fk_id_etudiant ='".$id_apogee."'";
    $res1 = mysqli_query($link,$sql1);
    if($res1==true){
        echo ("<script LANGUAGE='JavaScript'>
                    window.alert('Votre presentation a été ajoutée avec succée !');
                    window.location.href='etudiant.php';
                        </script>");
    } 
    ?>