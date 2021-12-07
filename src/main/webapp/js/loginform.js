var input_list = document.querySelectorAll('#login>form>.input-item>input');
var div_list = document.querySelectorAll('#login>form>.input-item');

for (let i = 0; i < input_list.length; i++) {
    input_list[i].addEventListener("click",function () {
        div_list[i].classList.add("layui-input-focus");
    })
    input_list[i].addEventListener("blur",function () {
        if (input_list[i].value.length == 0){
            div_list[i].classList.remove("layui-input-focus");
        }
    })
}