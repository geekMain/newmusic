var a_list = document.querySelectorAll('#navBar>li>a');
var li = document.querySelectorAll('#navBar>li');
var main = document.getElementById("main-content");
for (let i = 0; i < a_list.length; i++) {
    a_list[i].addEventListener("click",  function (){
        var controllerStr = ["meter","userMana","albumMana","musicMana","styleMana","userCenter"]
        main.src = "/Page/" + controllerStr[i];
        li[i].classList.add("layui-this");
        for (let j = 0; j < a_list.length; j++) {
            if (j != i){
                li[j].classList.remove("layui-this");
                userSubpage_list[j].classList.remove("layui-this");
            }
        }
    });
}

var userSubpage_list = document.querySelectorAll('#userSubpage>li');

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