<?php

if (isset($_POST['done'])) {
  //resize_function//////////////////////////////////////////////////
function CreateThumbs($src, $dst){




  return true;

}

  $path = "../products/";
  $file = $path . basename($_FILES["thumbnail"]["name"]);
  $uploadOk = 1;
  $type = pathinfo($file,PATHINFO_EXTENSION);

  // Check if image file is a actual image or fake image
  $check = getimagesize($_FILES["thumbnail"]["tmp_name"]);
  if($check !== false) {
  $uploadOk = 1;
  }
 else {
    $uploadOk = 1;
  }

  // Check if $uploadOk is set to 0 by an error
  if ($uploadOk == 0) {
  echo "<a class='btn-large red waves-effects light-effects'>Sorry, your file was not uploaded</a><br><br>";
  // if everything is ok, try to upload file
  } else {
  if (move_uploaded_file($_FILES["thumbnail"]["tmp_name"], $file)) {

  } else {
  echo "<a class='btn-large red waves-effects light-effects'>Sorry, there was an error uploading your picture</a>";
  }
  }



$img_path = "../products/".$_FILES["thumbnail"]["name"];
//resize_function//////////////////////////////////////////////////
CreateThumbs($img_path, $img_path);

function get_last_id(){
		$connection = $GLOBALS['connection'];
		$stmt = $connection->prepare('SELECT * FROM product');
		$stmt->execute();

		$result = $stmt->get_result();
		if ($result->num_rows > 0) {
			while ($row = $result->fetch_assoc()) {
			    $last = $row["id"];
			}
			return $last;
		}else{
			return "0";
		}
}



  $name = $_POST['name'];
  $price = $_POST['price'];
  $description = addslashes($_POST['description']);
  $img_title=$_FILES["thumbnail"]["name"];


  //adding product
  $queryaddproduct = "INSERT INTO product(id_category, name, description, price, thumbnail)
  VALUES ('$id_category', '$name', '$description','$price', '$img_title')";

if ($connection->query($queryaddproduct) === TRUE ) {
          echo "<div class='center-align'>
                 <h5 class='green-text'>Product Added Successfully</h5>
                 </div><br><br>";

     } else {
         echo "<h5 class='red-text '>Error: " . $queryaddproduct . "</h5><br><br><br>" . $connection->error;
     }

     $connection->close();

}


 ?>
