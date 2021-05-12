<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>welcome</title>
  <link href="./style.css" rel="stylesheet" type="text/css">
  </head>
<?php
$firstName=$_GET['firstName'];
$lastName=$_GET['lastName'];
if($firstName!='' && $lastName!=''){
echo "Howdy ".$firstName." ".$lastName;
}
else if($firstName=='' && $lastName!=''){
echo "Howdy ".$lastName;
}
else if($firstName!='' && $lastName==''){
echo "Howdy ".$firstName;
}
else{
echo "Howdy no names!";
}
?>
 
</html>