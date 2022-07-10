<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/"> 
   
   <html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>TechNeva</title>
        <script src="https://cdn.tailwindcss.com?plugins=aspect-ratio,forms"></script>
        <link rel="stylesheet" href="assets/css/index.css"/>
        <link rel="stylesheet" href="assets/css/sidecart.css "/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    </head>

<body>

<section style="min-height: 80vh;" class=" mt-10">
<button onclick='location.href="/ecommerce/addProduct.php"' class="btnPos flex items-center mt-4 px-3 py-2 bg-indigo-800 text-white text-sm uppercase font-medium rounded hover:bg-indigo-600 focus:outline-none focus:bg-indigo-500">
                        Add Product</button>
<table class="mx-auto  table p-8 bg-white shadow rounded-lg">
    <thead>
        <tr>
            <th class="border-b-2 p-8 dark:border-dark-5 whitespace-nowrap font-normal text-gray-900">
                no
            </th>
            <th class="border-b-2 p-8 dark:border-dark-5 whitespace-nowrap font-normal text-gray-900">
               Name
            </th>
            <th class="border-b-2 p-8 dark:border-dark-5 whitespace-nowrap font-normal text-gray-900">
                Category
            </th>
            <th class="border-b-2 p-8 dark:border-dark-5 whitespace-nowrap font-normal text-gray-900">
                Stock
            </th>
            <th class="border-b-2 p-8 dark:border-dark-5 whitespace-nowrap font-normal text-gray-900">
                view
            </th>
            <th class="border-b-2 p-8 dark:border-dark-5 whitespace-nowrap font-normal text-gray-900">
                Edit
            </th>
            <th class="border-b-2 p-8 dark:border-dark-5 whitespace-nowrap font-normal text-gray-900">
                Delete
            </th>
        </tr>
    </thead>
    <tbody id="bodyProd">
    <xsl:for-each select="products/product" >
    <tr class="text-gray-700">
                        <td class="border-b-2 p-8 dark:border-dark-5">
                            <xsl:value-of select="position()"/>
                        </td>
                        <td class="border-b-2 p-8 dark:border-dark-5">
                        <xsl:value-of select="name"/>
                        </td>
                        <td class="border-b-2 p-8 dark:border-dark-5">
                        <xsl:value-of select="category"/>
                        </td>
                        <td class="border-b-2 p-8 dark:border-dark-5">
                        <xsl:value-of select="stock"/>
                        </td>
                        <td class="border-b-2 p-8 dark:border-dark-5">
                        <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="concat('/ecommerce/product.php?id=', @id)"/>
                        </xsl:attribute>
                        <i class="material-icons">remove_red_eye</i></a>
                        </td>
                        <td class="border-b-2 p-8 dark:border-dark-5">
                        <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="concat('/ecommerce/editProduct.php?id=', @id)"/>
                        </xsl:attribute>
                        <i class="material-icons">create</i></a>
                        </td>
                        <td class="border-b-2 p-8 dark:border-dark-5">
                        <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="concat('/ecommerce/delProduct.php?id=', @id)"/>
                        </xsl:attribute>
                        <i class="material-icons">delete</i></a>
                        </td>
                    </tr>
                    </xsl:for-each>
</tbody>
</table>
</section>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
