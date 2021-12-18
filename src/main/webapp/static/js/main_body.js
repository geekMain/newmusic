//菜单显示
var main_body = document.getElementById("main-body");
var main_show = document.getElementById("mainBody-show");

var mainBodyOnOff = true;

    main_show.onclick = function (){
        if (mainBodyOnOff){
            main_body.classList.remove("ok-left-hide");
        }else {
            main_body.classList.add("ok-left-hide");
        }
        mainBodyOnOff = !mainBodyOnOff;
    }

//刷新
$("#refresh").click(function(){
   main.src = main.src
});