<section>
    <form action="" method="post" class="form-example">
    <div class="form-example">
        <select name="borne">
            <?php
                $c = new Article();
                $c->getAllBorneName($bdd);
            ?>
        </select>
        <?php
            if(isset($_POST["borne"]))
            {
                $id = $_POST["borne"]-3;
                $c = new Borne();
                $c->getAllResborneById($id,$bdd);
            }
        ?>
    </div>
    <div class="form-example">
        <input type="submit" value="Envoyer!">
    </div>
    </form>
</section>