<?php

session_start();

error_reporting(0);
if(!isset($_GET['id']) && !isset($_GET['category'])){
    header('Location: index.php');
}

else {
    $id_category =$_GET['id'];
    $name_category =$_GET['category'];
    
    require 'includes/header.php';
    require 'includes/navconnected.php'; } ?>

<div class="container-fluid product-page">
    <div class="container current-page">
        <nav>
            <div class="nav-wrapper">
                <div class="col s12">
                    <a href="index.php" class="breadcrumb">Dashboard</a>
                    <a href="addproduct.php" class="breadcrumb"><?= $name_category; ?></a>
                </div>
            </div>
        </nav>
    </div>
</div>

<div class="container addp">
    <form method="post" enctype="multipart/form-data">
        <div class="card">
            <?php

            include '../db.php';
            ?>
    
            <div class="row">
                <div class="input-field col s6">
                    <i class="fa fa-product-hunt prefix"></i>
                    <input id="icon_prefix" type="text" class="validate" name="name">
                    <label for="icon_prefix">Item name</label>
                </div>

                <div class="input-field col s6">
                    <i class="prefix fa fa-usd"></i>
                    <input id="icon_prefix" type="number" class="validate" name="price">
                    <label for="icon_prefix">Price</label>
                </div>

                <div class="input-field col s12">
                    <i class="material-icons prefix">mode_edit</i>
                    <textarea id="icon_prefix2" class="materialize-textarea" name="description"></textarea>
                    <label for="icon_prefix2">Description</label>
                </div>

                <div class="file-field input-field col s6">
                    <div class="btn blue">
                        <span>Thumbnail</span>
                        <input type="file" name="thumbnail">
                    </div>
                
                </div>

                
            </div>

            <div class="center-align">
                <button type="submit" name="done" class="waves-effect button-rounded waves-light btn">Submit</button>
            </div>
        </div>

        <?php require 'success.php'; ?>
    </form>
</div>

<?php require 'includes/footer.php'; ?>
