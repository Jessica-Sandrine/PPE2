<section id="article">
    <div class="container-fluid">
        <div class="cadre">
            <?php
            if(!isset($_GET["id"]))
                echo "Erreur article";
            else
            {
                $id = $_GET['id'];
                $c = new Article();
                $article = $c->getInfoArticleById($id,$bdd);
                ?>
                <div class="Article" id=<?php echo $article['id']; ?>>
                <p id="title"><?php echo $article['Nom']; ?><br/></p><br>
                <img src="<?php echo $article['Image']; ?>"/></a><br/>
                <p><?php echo $article['Prix']; ?>€<br/></p>
                <p>Encore <?php echo $article['Stoque']; ?> en stock<br/></p> 
                <?php
                    if($article['Type'] == 1)
                    {
                        echo '<a href="index.php?page=panier&action=ajout&amp;id='.$article['id'].'&amp;l='. $article['Nom'].'&amp;q=1&amp;p='.$article['Prix'].'">Ajouter au panier</a>';
                    }
                    else
                    {
                        if(isset($_GET["reservation"]) && ($_GET["reservation"]) == "on")
                        {
                            include("page/reservation/index.php"); 
                        }
                        else
                        {
                            ?>
                                <p><a href="index.php?page=article&amp;id=4&amp;reservation=on">Reserver</a></p>
                            <?php 
                        }
                    }
                echo '</div>';
            }
            ?>
    </div>
</section>