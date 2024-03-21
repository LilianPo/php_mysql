<?php include("config.php"); ?>

<!doctype html>
<html lang="en">
    <head>
        <title>Muusikapood OÜ</title>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>

    <body>
        <div class="container">
            <h1>Maailma imelikumad palad</h1>
            <form action="" method="get">
                Otsi:<input type="text" name="s">
                <input type="Submit" value="Otsi">
            </form>
<div class="row row-cols-1 row-cols-md-3 g-4 pt-4">
            <?php
//otsing
    if (!empty($_GET["s"])) {
        $s = $_GET["s"];
        $paring = 'SELECT album, hind FROM albumid WHERE album LIKE "%'.$s.'%"';
    }else {
        //päring, mille saadan andmebaasi
            $paring = "SELECT album, hind FROM albumid ORDER BY artist ASC LIMIT 10";
    }


        //saadan soovitud ühendusele minu päringu
            $valjund = mysqli_query($yhendus, $paring);
        //sikutame andmebaasist kõik vastused
        while($rida = mysqli_fetch_assoc($valjund)){
            //print_r($rida);
            //echo $rida['artist']." - ".$rida["album"]."<br>";
            echo '
            <div class="col">
            <div class="card">
            <img src="https://picsum.photos/400/400" alt="pilt">
              <div class="card-body">
                <h5 class="card-title">'.$rida['album'].'</h5>
                <p class="card-text">'.$rida['hind'].'€.</p>
                <a href="#" class="btn btn-danger">Osta</a>
              </div>
            </div>
          </div>
          ';
        }
            ?>
            </div>
        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
