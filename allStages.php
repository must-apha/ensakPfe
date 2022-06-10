    <h3 class="container mt-1">La liste de tous les stages</h3>
    <table class="container table table-responsive-sm table-striped table-hover wow fadeInUp " data-wow-delay="0.5s">
        <thead>
            <tr>
            <th scope="col">Sujet</th>
            <th scope="col">Technologies utilisées</th>
            <th scope="col">Description</th>
            <th scope="col">Encadrant</th>
            </tr>
        </thead>
        <tbody>
            <?php
            include("connexion.php");
             $sql1 = "SELECT sujet,technologies,`description`,nom_enseignant,prenom_enseignant FROM `stages` LEFT JOIN `enseignants` ON
                            stages.fk_id_enseignant=enseignants.id_enseignant ORDER by nom_enseignant DESC ";
             $res1 = mysqli_query($link,$sql1);
             while($data1= mysqli_fetch_assoc($res1)){
                 $sujet = $data1['sujet'];
                 $technologies = $data1['technologies'];
                 $description = $data1['description'];
                 $nom_enseignant = $data1['nom_enseignant'];
                 $prenom_enseignant = $data1['prenom_enseignant'];

                echo "<tr><td>$sujet</td><td>$technologies</td><td>$description</td><td>$nom_enseignant $prenom_enseignant</td></tr>";
             }
            ?>
        </tbody>
</table>
    <?php include "./jslib.html" ?>
</body>
</html>