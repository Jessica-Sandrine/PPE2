<section id="acceuil">
    <div class="container-fluid">
        <div class="cadre">
            <h1>Borne</h1>
            <div class="row" id="bornes">
            <?php
                    $c = new Article();
                    $c->getAllArticleByType(2,$bdd);
                ?>
            </div>
        </div>
        <div class="cadre">
            <h1>Consomable</h1>
            <div class="row" id="consomable">
                <?php
                    $c = new Article();
                    $c->getAllArticleByType(1,$bdd);
                ?>
            </div>
        </div>
    </div>
</section>