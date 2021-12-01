var li_list = document.querySelectorAll('#navBar>li>a');
var main = document.getElementById("main-content");
for (let i = 0; i < li_list.length; i++) {
    li_list[i].addEventListener("click",  function jump(){
        var controllerStr = ["meter","userMana","albumMana","musicMana","styleMana","userCenter"]
        main.src = "Page/" + controllerStr[i];
    });
}

var userSubpage_list = document.querySelectorAll('#userSubpage>li>a');

for (let i = 0; i < userSubpage_list.length; i++) {
    userSubpage_list[i].addEventListener("click",  function jumpUserMana(){
        var controllerStr = ["fanMana","informMana","logMana","collectMana","songListMana","commentMana"]
        main.src = "userCenterMana/" + controllerStr[i];
    });
}