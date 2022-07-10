<?php
$proc=new XsltProcessor;
$proc->importStylesheet(DOMDocument::load("adminProduct.xsl")); //load XSL script
echo $proc->transformToXML(DOMDocument::load("assets/xml_data/products.xml")); //load XML file and echo
?>