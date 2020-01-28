<section>
    <?php
        $c = new Commande();
        $c->getMesCommande($_SESSION['id'],$bdd);
    ?>
</section>