<?php

$xmlFile="assets/xml_data/products.xml";
$xsdFile="assets/xsd/products.xsd";
$xslFile="/adminProduct.xsl";
 $xml_Doc = new DOMDocument();
 $xml_Doc->load('assets/xml_data/products.xml');
 if(!$xml_Doc->schemaValidate('assets/xsd/product.xsd'))
   echo "Your xml is NOT valid";
 else
 {
    $xsl = new DOMDocument();
    $xsl->load('./adminProduct.xsl');

    $proc = new XSLTProcessor;
    $proc->importStylesheet($xsl);
    echo $proc->transformToXml($xml_Doc);
 }
?>