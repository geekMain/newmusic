
layui.use('layer', function(){
    var $ = layui.jquery, layer = layui.layer;

    var active = {
        information: function(){
            if ($('#userCount').val() != "" && $('#userPassword').val() != ""){
                layer.msg('正在载入...');
            }
        }
    }
    $('.msg-information').on('click', function(){
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });
});