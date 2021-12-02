var userCenter = document.querySelectorAll('#navBar>li>a');

var onclickUserOnOff = true;
userCenter[userCenter.length-1].onclick = function (){
    var userSubpage = document.getElementById("userSubpage");
    if (onclickUserOnOff){
        userSubpage.style.display = "block";
    }else {
        userSubpage.style.display = "none";
    }
    onclickUserOnOff = !onclickUserOnOff;
}



