var userCenter = document.querySelectorAll('#navBar>li>a');

var onclickUserOnOff = true;
userCenter[userCenter.length-1].onclick = function (){
    var userSubpage = document.getElementById("userSubpage");
    if (onclickUserOnOff){
        userSubpage.style.display = "block";
        li[a_list.length-1].classList.add("layui-nav-itemed");
    }else {
        userSubpage.style.display = "none";
        li[a_list.length-1].classList.remove("layui-nav-itemed");
    }
    onclickUserOnOff = !onclickUserOnOff;
}



