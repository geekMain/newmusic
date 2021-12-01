var userCenter = document.querySelectorAll('#navBar>li>a');

var onOff = true;
userCenter[userCenter.length-1].onclick = function (){
    var userSubpage = document.getElementById("userSubpage");
    if (onOff){
        userSubpage.style.display = "block";
    }else {
        userSubpage.style.display = "none";
    }
    onOff = !onOff;
}
