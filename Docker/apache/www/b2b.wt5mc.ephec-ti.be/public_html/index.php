<html>
        <head><title>bienvenue sur le serveur 51.254.212.240</title></head>

        <body> <h1>b2b.wt5mc.ephec-ti.be</h1>
        <p>
  				<?php
						try{
                $bdd = new PDO("mysql:host=29.5.92.40;dbname=wt5mcdb;", "root" , "azerty" );
                $sth= $bdd->query('SELECT * FROM biere');
                $res = $sth->fetchAll();
  		print('<pre>' . print_r($res, true) . '</pre>');
            }
            catch(Exception $e){
                die('Erreur : '.$e->getMessage());
            }
					?>
        </p>
        </body>
</html>
