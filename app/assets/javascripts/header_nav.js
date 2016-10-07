function toggleFunc() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav header-subnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav header-subnav";
    }
}