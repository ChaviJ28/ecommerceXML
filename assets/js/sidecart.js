function getNav() {
    let s = screen.width;
    var obj;
    console.log(s);
    switch (true) {
        case s < 900:
            obj = {
                width: "100%",
                margin: "0",
            };
            break;
        case s < 1100:
            obj = {
                width: "40%",
                margin: "0",
            };
            break;
         case s < 1200:
                obj = {
                    width: "30%",
                    margin: "30",
                };
                break;
        default:
            obj = {
                width: "25%",
                margin: "25%",
            };
    }
    return obj;
}

function openNav() {
    let size = getNav();
    document.getElementById("mySidenav").style.width = size.width;
    
    document.getElementById("main").style.pointerEvents = "none";
    
    getTotal();
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginRight = "0";
    document.getElementById("main").style.pointerEvents = "auto";
    document.getElementById("main").style.opacity = "1";
    document.body.style.backgroundColor = "white";
}

function decrease(index) {
    var qty = document.getElementsByClassName("qty")[index];
    if (qty.value > qty.min) {
        qty.value--;
    }
}

function increase(index) {
    var qty = document.getElementsByClassName("qty")[index];
    if (qty.value < qty.max) {
        qty.value++;
    }
}

function getTotal() {
    var sub = 0;
    Array.from(document.getElementsByClassName("price")).forEach((price) => {
        sub += parseInt(price.innerText.substr(2).replace(/,/g, ""));
    });
    document.getElementsByClassName("subprice")[0].innerText = "Rs " + sub;
}

function remove_from_cart() {
    alert("item removed");
}

if ($(".menu-trigger").length) {
    $(".menu-trigger").on("click", function() {
        $(this).toggleClass("active");
        $(".header-area .nav").slideToggle(200);
    });
}

function mobileNav() {
    var width = screen.width;
    $(".submenu").on("click", function() {
        if (width < 900) {
            $(".submenu ul").removeClass("active");
            console.log(this);
            $(this).find("ul").toggleClass("active");
        }
    });
}

$(window).on("resize", function() {
    mobileNav();
});
mobileNav();