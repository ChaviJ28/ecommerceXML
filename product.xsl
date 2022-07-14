<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="id" />
    <xsl:template match="/">


        <html lang="en">
            <head>
                <meta charset="UTF-8"></meta>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
                <title>TechNeva</title>
                <script src="https://cdn.tailwindcss.com?plugins=aspect-ratio,forms"></script>
                <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
                <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

            </head>

            <body>

                <section>
                    <div class="relative max-w-screen-xl px-4 py-8 mx-auto">


                        <div class="grid gap-8 lg:items-start lg:grid-cols-4">
                            <div class="lg:col-span-3">
                                <div id="main_img" class="relative mt-4">
                                    <img alt="" class="w-full rounded-xl h-72 lg:h-[540px] object-contain">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="products/product/images/image" />
                                        </xsl:attribute>
                                    </img>
                                </div>

                                <ul id="allImgs" class="flex gap-1 mt-5">
                                    <xsl:for-each select="products/product/images">
                                        <li>
                                            <img class="object-cover w-16 h-16 rounded-md border-2 border-indigo-400">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="image" />
                                                </xsl:attribute>
                                            </img>
                                        </li>
                                    </xsl:for-each>
                                    <!-- 
                                    <li>
                                        <img class="object-cover w-16 h-16 rounded-md border-2 border-indigo-400" src="https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80" />
                                    </li>

                                    <li>
                                        <img class="object-cover w-16 h-16 rounded-md" src="https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1472&q=80" />
                                    </li>

                                    <li>
                                        <img class="object-cover w-16 h-16 rounded-md" src="https://images.unsplash.com/photo-1603302576837-37561b2e2302?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1468&q=80" />
                                    </li>

                                    <li>
                                        <img class="object-cover w-16 h-16 rounded-md" src="https://images.unsplash.com/photo-1544006659-f0b21884ce1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80" />
                                    </li>

                                    <li>
                                        <img class="object-cover w-16 h-16 rounded-md" src="https://images.unsplash.com/photo-1525547719571-a2d4ac8945e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80" />
                                    </li> -->

                                </ul>
                            </div>

                            <div class="lg:flex lg:flex-col lg:justify-center lg:h-full">
                                <form class="space-y-4 lg:pt-8">

                                    <div>
                                        <h1 class="text-2xl text-center font-medium lg:text-3xl sm:mb-6">
                                            <xsl:value-of select="/products/product/name/text()" />
                                        </h1>

                                        <p class="text-2xl text-center text-indigo-700 font-bold">
                                            Rs
                                            <xsl:value-of select="/products/product/price" />
                                        </p>
                                    </div>

                                    <div class="mt-2 flex justify-evenly w-64">
                                        <label class=" text-lg font-medium" for="count">Quantity:</label>
                                        <div class="flex items-center">
                                            <button class=" focus:outline-none focus:text-gray-600">
                                                <svg class="h-8 w-8" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path d="M12 9v3m0 0v3m0-3h3m-3 0H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                                </svg>
                                            </button>
                                            <span class=" text-xlg mx-2">
                                                <xsl:value-of select="/products/product/stock/text()" />
                                            </span>
                                            <button class=" focus:outline-none focus:text-gray-600">
                                                <svg class="h-8 w-8" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path d="M15 12H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                                </svg>
                                            </button>
                                        </div>
                                    </div>

                                    <button type="submit" class="w-full px-6 py-3 text-sm font-bold tracking-wide text-white uppercase bg-indigo-700 rounded">
                                        Add to cart
                                    </button>

                                    <button type="button" class="w-full relative px-6 py-3 text-sm font-bold overflow-hidden text-indigo-600 border border-current rounded group active:text-indigo-700 focus:outline-none focus:ring">
                                        <span class="absolute right-0 transition-transform translate-x-full group-hover:-translate-x-4">
                                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                                            </svg>
                                        </span>

                                        <span class="text-sm font-bold uppercase transition-all group-hover:mr-4">
                                            Add To WishList
                                        </span>
                                    </button>
                                </form>
                            </div>

                            <div class="lg:col-span-3">
                                <div class="max-w-none">
                                    <h3 class="text-2xl font-medium text-indigo-700">Description</h3>
                                    <!-- <p>Dell Inspiron 3511 Intel 11th Gen Processor 15.6-inch FHD (1920 x 1080) Anti-glare LED, Windows 11 Home, Carbon Black, 4 Years Warranty</p>
                                    <h4 class="text-xl font-small text-indigo-700 mt-5">Features: </h4>
                                    <ul>
                                        <li>15.6" FHD, IPS-Level 144Hz 45%NTSC | 1920x1080 16:9</li>
                                        <li>Intel Core i7-10750H 2.6-5.0 GHz</li>
                                        <li>NVIDIA GeForce RTX3060 Max-Q 6GB GDDR6</li>
                                        <li>16GB (8G*2) DDR4 3200MHz; 2 Sockets, Max Memory 64GB | 512GB NVMe SSD</li>
                                        <li>RTL8111HS-CG | Intel Wi-Fi 6 AX201(2*2 ax) | BT 5.1</li>

                                    </ul> -->
                                    <xsl:value-of select="/products/product/description/text()" />
                                </div>
                            </div>


                        </div>
                    </div>
                </section>

                <script src="assets/js/index.js"></script>
            </body>

        </html>


    </xsl:template>
</xsl:stylesheet>