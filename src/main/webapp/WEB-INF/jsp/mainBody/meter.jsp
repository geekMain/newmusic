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
                        function musicData(){
                            var nameDataArr = new Array();
                            var countDataArr = new Array();
                            var music = musicList()
                            $.each(music, function (i, music) {
                                nameDataArr[i] = music.musicName;
                                countDataArr[i] = music.musicCount;
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

                        var plantCap = [
                            {
                                name: musicData()[0][0],
                                value: musicData()[1][0],
                            },
                            {
                                name: musicData()[0][1],
                                value: musicData()[1][1],
                            },
                            {
                                name: musicData()[0][2],
                                value: musicData()[1][2],
                            },
                            {
                                name: musicData()[0][3],
                                value: musicData()[1][3],
                            },
                            {
                                name: musicData()[0][4],
                                value: musicData()[1][4],
                            },
                        ];



                        var datalist = [
                            {
                                offset: [56, 48],
                                symbolSize: musicData()[1][0],
                                opacity: 0.95,
                                color: 'rgba(104,184,55, 1)',
                            },
                            {
                                offset: [20, 43],
                                symbolSize: musicData()[1][1],
                                opacity: 0.84,
                                color: 'rgba(104,184,55, 0.95)',
                            },
                            {
                                offset: [83, 35],
                                symbolSize: musicData()[1][2],
                                opacity: 0.8,
                                color: 'rgba(104,184,55, 0.95)',
                            },
                            {
                                offset: [36, 30],
                                symbolSize: musicData()[1][3],
                                opacity: 0.75,
                                color: 'rgba(104,184,55, 0.90)',
                            },
                            {
                                offset: [64, 20],
                                symbolSize: musicData()[1][4],
                                opacity: 0.7,
                                color: 'rgba(104,184,55, 0.90)',
                            },
                        ];
                        var datas = [];
                        for (var i = 0; i < plantCap.length; i++) {
                            var item = plantCap[i];
                            var itemToStyle = datalist[i];
                            datas.push({
                                name: item.value + '\n' + '  ' + '\n'+item.name,
                                value: itemToStyle.offset,
                                symbolSize: itemToStyle.symbolSize * 2,
                                label: {
                                    normal: {
                                        textStyle: {
                                            fontSize: 14,
                                            color: '#1bf084',
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
                                    max: 100,
                                    nameLocation: 'middle',
                                    nameGap: 5,
                                },
                            ],
                            yAxis: [
                                {
                                    gridIndex: 0,
                                    min: 0,
                                    show: false,
                                    max: 100,
                                    nameLocation: 'middle',
                                    nameGap: 30,
                                },
                            ],
                            series: [
                                {
                                    type: 'scatter',
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
                        window.setInterval(musicData, 1000);
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