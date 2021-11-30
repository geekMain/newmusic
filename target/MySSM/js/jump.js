var li_list = document.querySelectorAll('#navBar>li');
for (let i = 0; i < li_list.length; i++) {
    li_list[i].addEventListener("click",  function jump(){
        alert(i)
        var main = document.getElementById("main-content");
    });


}