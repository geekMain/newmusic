<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/11/30
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/static/css/oksub.css" media="all"/>
    <script src="https://cdn.jsdelivr.net/npm/echarts@5.2.2/dist/echarts.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
</head>
<body class="ok-body-scroll console">
<div class="ok-body home">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-xs6 layui-col-md3">
            <div class="layui-card">
                <div class="ok-card-body">
                    <div class="img-box" ok-pc-in-show>
                        <i class="layui-icon layui-icon-headset layui-font-orange layui-font-35"></i>
                    </div>
                    <div class="cart-r">
                        <div id="music-number" class="stat-text incomes-num">0</div>
                        <div class="stat-heading">歌曲</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-col-xs6 layui-col-md3">
            <div class="layui-card ">
                <div class="ok-card-body">
                    <div class="img-box" ok-pc-in-show>
                        <i class="layui-icon layui-icon-prev-circle layui-font-green layui-font-35"></i>
                    </div>
                    <div class="cart-r">
                        <div id="music-test" class="stat-text goods-num">0</div>
                        <div class="stat-heading">专辑</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-col-xs6 layui-col-md3">
            <div class="layui-card">
                <div class="ok-card-body">
                    <div class="img-box" ok-pc-in-show>
                        <i class="layui-icon layui-icon-diamond layui-font-red layui-font-35"></i>
                    </div>
                    <div class="cart-r">
                        <div class="stat-text blogs-num">0</div>
                        <div class="stat-heading">会员</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-col-xs6 layui-col-md3">
            <div class="layui-card">
                <div class="ok-card-body">
                    <div class="img-box" ok-pc-in-show>
                        <i class="layui-icon layui-icon-user layui-font-blue layui-font-35"></i>
                    </div>
                    <div class="cart-r">
                        <div class="stat-text fans-num">0</div>
                        <div class="stat-heading">用户</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8">
            <div class="layui-card">
                <div class="layui-card-header">
                    <div class="ok-card-title">歌曲热度</div>
                </div>
                <div class="ok-card-body map-body">
                    <div id="music"  style="width: 100%; height: 100%;"></div>
                    <script>
                        function musicList() {
                            var music;
                            $.ajax({
                                    url:"/adminIndex/dailyPopularityOfSongs",
                                    type: "get",
                                    async: false,
                                    dataType: "json",
                                    success:function (data) {
                                        music = data;
                                        $("#music-number").html(data.length);
                                    }
                                }
                            )
                            return music;
                        }
                        function random(min,max){
                            return Math.random()*(max-min)+min;
                        }
                        function musicData(){
                            var nameDataArr = new Array();
                            var countDataArr = new Array();
                            var x = random(10,$('#music').width()-10)
                            var y = random(10,$('#music').height()-10)
                            var music = musicList()
                            var color = ['#ff4d4f','#a8071a',
                                '#ff9c6e','#ad2102',
                                '#ffc069','#ad4e00',
                                '#ffd666','#ad6800',
                                '#fff566','#ad8b00',
                                '#d3f261','#5b8c00',
                                '#95de64','#237804',
                                '#5cdbd3','#006d75',
                                '#69c0ff','#0050b3',
                                '#85a5ff','#10239e',
                                '#b37feb','#391085',
                                '#ff85c0','#9e1068'
                            ]
                            $.each(music, function (i, music) {
                                nameDataArr[i] = {
                                    name: music.musicName,
                                    value: music.musicCount,
                                }
                                countDataArr[i] = {
                                    offset: [x,y],
                                    symbolSize: music.musicCount,
                                    opacity: 0.95,
                                    color: color[parseInt(random(0,23))],
                                }
                            });
                            return new Array(nameDataArr,countDataArr)
                        }
                    </script>
                    <script type="text/javascript">
                        var chartDom = document.getElementById('music');
                        var myChart = echarts.init((chartDom), null, {
                            width: chartDom.width,
                            height: chartDom.height
                        });
                        window.onresize = function() {
                            myChart.resize();
                        };

                        var datas = [];
                        for (var i = 0; i < musicData()[0].length; i++) {
                            var item = musicData()[0][i];
                            var itemToStyle = musicData()[1][i];
                            datas.push({
                                name: '\n' +item.value + '\n' + '  ' + '\n'+item.name,
                                value: itemToStyle.offset,
                                symbolSize: itemToStyle.symbolSize * 2,
                                label: {
                                    normal: {
                                        textStyle: {
                                            fontSize: 14,
                                            color: itemToStyle.color,
                                        },
                                    },
                                },
                                itemStyle: {
                                    normal: {
                                        color: itemToStyle.color,
                                        opacity: itemToStyle.opacity,
                                    },
                                },
                            });
                        }
                        option = {
                            grid: {
                                show: false,
                                top: 10,
                                bottom: 10,
                            },
                            tooltip: {
                                backgroundColor: 'rgba(255,255,255,0.7)',
                                formatter: function (param) {
                                    var value = param.value;
                                    return '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
                                        + param.name
                                        + '</div>'
                                }
                            },
                            xAxis: [
                                {
                                    gridIndex: 0,
                                    type: 'value',
                                    show: false,
                                    min: 0,
                                    max: $('#music').width(),
                                    nameLocation: 'middle',
                                    nameGap: 5,
                                },
                            ],
                            yAxis: [
                                {
                                    gridIndex: 0,
                                    min: 0,
                                    show: false,
                                    max: $('#music').height(),
                                    nameLocation: 'middle',
                                    nameGap: 30,
                                },
                            ],
                            series: [
                                {
                                    type: 'effectScatter',
                                    symbol: 'circle',
                                    symbolSize: 120,
                                    label: {
                                        normal: {
                                            show: true,
                                            formatter: '{b}',
                                            color: '#fff',
                                            textStyle: {
                                                fontSize: '20',
                                            },
                                        },
                                    },
                                    itemStyle: {
                                        normal: {
                                            borderWidth: '2',
                                            borderType: 'solid',
                                            borderColor: '#fff',
                                            color: '#68b837',
                                            shadowColor: '#68b837',
                                            shadowBlur: 10,
                                        },
                                    },
                                    data: datas,
                                },
                            ],
                        };
                        option && myChart.setOption(option);

                    </script>

                    <script>
                        window.setInterval(musicList, 1000);
                    </script>

                </div>
            </div>
        </div>

        <div class="layui-col-md4">
            <div class="layui-card">
                <div class="layui-card-header">
                    <div class="ok-card-title">用户访问</div>
                </div>
                <div class="ok-card-body map-body">
                    <div class="progress-box ">
                        <div class="pro-head">
                            <img src="/static/images/face.jpg" alt="none"/>
                        </div>
                        <div class="pro-data">
                            <h4 class="por-title">Visits</h4>
                            <div class="por-txt pro-a">用户比例</div>
                            <div class="layui-progress" lay-filter="pro-a">
                                <div class="layui-progress-bar per-bg-a" lay-percent="35%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="progress-box ">
                        <div class="pro-head">
                            <img src="/static/images/face.jpg" alt="none"/>
                        </div>
                        <div class="pro-data">
                            <h4 class="por-title">Visits</h4>
                            <div class="por-txt pro-a">用户比例</div>
                            <div class="layui-progress" lay-filter="pro-b">
                                <div class="layui-progress-bar per-bg-b" lay-percent="15%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="progress-box ">
                        <div class="pro-head">
                            <img src="/static/images/face.jpg" alt="none"/>
                        </div>
                        <div class="pro-data">
                            <h4 class="por-title">Visits</h4>
                            <div class="por-txt pro-c">用户比例</div>
                            <div class="layui-progress" lay-filter="pro-c">
                                <div class="layui-progress-bar per-bg-c" lay-percent="20%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="progress-box ">
                        <div class="pro-head">
                            <img src="/static/images/face.jpg" alt="none"/>
                        </div>
                        <div class="pro-data">
                            <h4 class="por-title">Visits</h4>
                            <div class="por-txt pro-d">用户比例</div>
                            <div class="layui-progress" lay-filter="pro-d">
                                <div class="layui-progress-bar per-bg-d" lay-percent="30%"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="layui-row layui-col-space15">
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="ok-card-body ">

                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="ok-card-body ">
                    <div class="map-china" id="userLocationMap"></div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>