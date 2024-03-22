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
            <h2>Uue albumi lisamine</h2>
            <form action="" method="get">
                artist <input type="text" name="artist"><br>
                album <input type="text" name="album"><br>
                aasta <input type="number" name="aasta" min="1900" max="2024"><br>
                hind <input type="number" name="hind" step="0.01"><br>
                <input type="submit" value="+ Lisa uus" name="lisa">
            </form>

            <form action="" method="get">
                Otsi:<input type="text" name="s">
                <input type="Submit" value="Otsi">
            </form>
<div class="row row-cols-1 row-cols-md-3 g-4 pt-4">
            <?php
//lisamine
if(!empty($_GET["lisa"])) {
    $artist = $_GET["artist"];
    $album = $_GET["album"];
    $aasta = $_GET["aasta"];
    $hind = $_GET["hind"];
    $paring = "INSERT INTO albumid(artist, album, aasta, hind) VALUES ('$artist', '$album', '$aasta', '$hind')";
    $valjund = mysqli_query($yhendus, $paring);
    if ($valjund) {
        echo "Lisamine õnnestus!";
        header("location: index.php?msg=true");
    }else{
        echo "Lisamine ebaõnnestus!";
        header("locatsion: index.php?msg=false");
    }
}
//kustutamine
if(!empty($_GET["del"]) && !empty($_GET["id"])){
    $del = $_GET["del"];
    $id = $_GET["id"];

    $paring = "DELETE FROM albumid WHERE id=$id";
    $valjund = mysqli_query($yhendus, $paring);
    if ($valjund) {
        echo "Kustutamine õnnestus!";
        header("location: index.php?msg=true");
    }else{
        echo "Kustutamine ebaõnnestus!";
        header("locatsion: index.php?msg=false");
    }
}
//otsing
    if (!empty($_GET["s"])) {
        $s = $_GET["s"];
        $paring = 'SELECT id, album, hind FROM albumid WHERE album LIKE "%'.$s.'%"';
    }else {
        //päring, mille saadan andmebaasi
            $paring = "SELECT id, album, hind FROM albumid ORDER BY artist ASC LIMIT 10";
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
                <a href="index.php?del=kustuta&id='.$rida['id'].'" class="btn btn-warning">Kustuta</a>
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
