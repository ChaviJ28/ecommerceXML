<?php
$xmlDoc=new DOMDocument();
$xmlDoc->load("assets/xml_data/products.xml");

$x=$xmlDoc->getElementsByTagName('product');

$q=$_GET["q"];


if (strlen($q)>0)
{
    $xml=simplexml_load_file("assets/xml_data/products.xml") or die("Error: Cannot create object");
    $count = 0;

        foreach($xml->children() as $products) {
            if (stristr($products->name,$q)) {
                echo "<br/><a href='product.php?" .$products['id'] ."' target='_blank'>".$products->name. "</a>";
                $count ++;
            }
            
           }
    if ($count == 0) {
        echo "<p>No products Found";
    }

 
}

?>