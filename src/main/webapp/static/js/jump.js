var li_list = document.querySelectorAll('#navBar>li>a');
var main = document.getElementById("main-content");
for (let i = 0; i < li_list.length; i++) {
    li_list[i].addEventListener("click",  function (){
        var controllerStr = ["meter","userMana","albumMana","musicMana","styleMana","userCenter"]
        main.src = "/Page/" + controllerStr[i];
        li_list[i].classList.add("layui-this");
        for (let j = 0; j < li_list.length; j++) {
            if (j != i){
                li_list[j].classList.remove("layui-this");
            }
        }
        if (i == li_list.length-1){
            for (let j = 0; j < userSubpage_list.length; j++) {
                userSubpage_list[j].classList.remove("layui-this");
            }
        }
    });
}

var userSubpage_list = document.querySelectorAll('#userSubpage>li>a');

for (let i = 0; i < userSubpage_list.length; i++) {
    userSubpage_list[i].addEventListener("click",  function (){
        var controllerStr = ["fanMana","informMana","logMana","collectMana","songListMana","commentMana"]
        main.src = "/userCenterMana/" + controllerStr[i];
        userSubpage_list[i].classList.add("layui-this");
        for (let j = 0; j < userSubpage_list.length; j++) {
            if (j != i){
                userSubpage_list[j].classList.remove("layui-this");
            }
        }
    });
}