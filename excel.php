<?php include("connexion.php");?>
<?php
    if(isset($_POST['exporter'])){
        header('content-Type: application/xls');
        header('content-Disposition: attachment; filename=Notes.xls');

        
    }?>