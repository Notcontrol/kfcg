<#include "public/default.ftl">
<@header title="首页">

<link rel="stylesheet" href="${base}/css/style.css">
<link rel="stylesheet" href="${base}/css/menu.css">
</@header>
<#--头部开始 -->
<@headerArea>
</@headerArea>

<#-- 广告-->
<div class="advert">
    <div class="container_self_advert">
    <#if advertMap["header"]??>
        <a href="${advertMap["header"].advertForward}" target="_blank">
            <div class="gg_box" style="background:url(${base}${advertMap["header"].advertUrl}) no-repeat">
            </div>
        </a>
    </#if>
    </div>
</div>

<@searchArea>
<h1>
    <img src="${base}/img/kflogo2.png" width="48" height="48" alt="网站logo">
    <a href="${base}/index" style="color:rgba(0,0,0,0.7)">麦芒网</a>
    <img src="${base}/img/kp.png" alt="" height="48">
</h1>
</@searchArea>


<#-- 菜单栏-->
<div class="mainmenu-area">
    <div class="container_self" style="width: 1200px;">
        <ul class="megamenu skyblue">
            <li class="active grid">
                <a class="color1" href="/index">首页</a>
            </li>
            <li class="grid"><a class="color1" href="${base}/list?mcId=1">招聘<span class="caret"></span></a>
                <div class="megapanel">
                    <ul class="menu_ul">
                    <#list zhaopin as zp>
                        <li><a href="${base}/list?mcId=1&scId=${zp.scId}">${zp.scName}</a></li>
                    </#list>
                    </ul>
                </div>
            </li>
            <li class="grid"><a class="color1" href="${base}/list?mcId=3">二手市场<span class="caret"></span></a>
                <div class="megapanel">
                    <ul class="menu_ul">
                    <#list ershou as es>
                        <li><a href="${base}/list?mcId=3&scId=${es.scId}">${es.scName}</a></li>
                    </#list>
                    </ul>
                </div>
            </li>
            <li><a class="color1" href="${base}/list?mcId=2">房产信息<span class="caret"></span></a>
                <div class="megapanel">
                    <ul class="menu_ul">
                    <#list fangchan as fc>
                        <li><a href="${base}/list?mcId=2&scId=${fc.scId}">${fc.scName}</a></li>
                    </#list>
                    </ul>
                </div>
            </li>
            <li><a class="color1" href="${base}/list?mcId=4">生活服务<span class="caret"></span></a>
                <div class="megapanel">
                    <ul class="menu_ul">
                    <#list shenghuo as sh>
                        <li><a href="${base}/list?mcId=4&scId=${sh.scId}">${sh.scName}</a></li>
                    </#list>
                    </ul>
                </div>
            </li>
            <li><a class="color1" href="#">名企招聘</a></li>
            <li><a class="color1" href="${base}/resume/list">求职简历</a></li>
        </ul>
    </div>
</div> <!-- End mainmenu area -->

<#-- 主功能模块-->
<div class="mainPage">
    <div class="container_self">
        <div class="row">
            <div class="col-xs-8 extra_padding">
                <div class="panel panel_self">
                    <div class="panel-body" style="padding: 0;">
                        <div class="row iconDiv">
                            <div class="col-xs-2">
                                <a href="${base}/list?mcId=1" target="_blank">
                                    <div>
                                        <img src="img/zp_icon.png" width="55px" height="55px" alt="">
                                    </div>
                                    <p>招聘</p></a>
                            </div>
                            <div class="col-xs-2">
                                <a href="${base}/list?mcId=3" target="_blank">
                                    <div>
                                        <img src="img/kf_ershou.png" width="55px" height="55px" alt="">
                                    </div>
                                    <p>二手市场</p></a>
                            </div>
                            <div class="col-xs-2">
                                <a href="${base}/list?mcId=2" target="_blank">
                                    <div>
                                        <img src="img/kf_fangchan.png" width="55px" height="55px" alt="">
                                    </div>
                                    <p>房产</p></a>
                            </div>
                            <div class="col-xs-2">
                                <a href="${base}/list?mcId=4" target="_blank">
                                    <div>
                                        <img src="img/kf_shenghuo.png" width="55px" height="55px" alt="">
                                    </div>
                                    <p>生活服务</p></a>
                            </div>
                            <div class="col-xs-2">
                                <a href="${base}/list?mcId=5" target="_blank">
                                    <div>
                                        <img src="img/kf_mingshi.png" width="55px" height="55px" alt="">
                                    </div>

                                    <p>名师培优</p></a>
                            </div>
                            <div class="col-xs-2">
                                <a href="${request.contextPath}/list?mcId=6" target="_blank">
                                    <div>
                                        <img src="img/jz.png" width="55px" height="55px" alt="">
                                    </div>
                                    <p>名企招聘</p></a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-xs-4 extra_padding">
                <div class="panel panel_self">
                    <div class="panel-heading row">
                        <div class="col-sm-4"><h4 style="color: #00AAFF">推广服务</h4></div>
                        <div class="col-sm-8"><span style="float: right">置顶推广效果将提升 <span
                                style="color: #ff552e;">10</span> 倍以上</span></div>
                    </div>
                    <div class="panel-body">

                        <span class="label label-success"><a href="${base}/about/service">大类置顶</a></span>
                        <span class="label label-warning"><a href="${base}/about/service">竞价排行</a></span>
                        <span class="label label-info"><a href="${base}/about/help">使用帮助</a></span>

                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-xs-2 extra_padding">
                <div class="panel panel_self">
                    <div class="panel-heading">
                        <h4><a href="${base}/list?mcId=2">房产信息</a><span class="tip_second"><i
                                class="fa fa-plus-square"></i> 好房源</span></h4>

                    </div>
                    <div class="panel-body">
                        <ul class="list_clear">
                        <#list fangchan as fc>
                            <li><a href="${base}/list?mcId=2&scId=${fc.scId}">${fc.scName}</a></li>
                        </#list>
                        </ul>
                        <div class="gg_img">
                            <a href="${advertMap["gg_fz"].advertForward}" target="_blank">
                                <img src="${base}${advertMap["gg_fz"].advertUrl}" class="img-thumbnail"
                                     style="width: 170px;height: 400px" alt="">
                            </a>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-xs-2 extra_padding">
                <div class="panel panel_self">
                    <div class="panel-heading"><h4><a href="${base}/list?mcId=3">二手市场</a><span class="tip_second"><i
                            class="fa fa-plus-square"></i> 好实惠</span></h4></div>
                    <div class="panel-body">
                        <ul class="list_clear">
                        <#list ershou as es>
                            <li><a href="${base}/list?mcId=3&scId=${es.scId}">${es.scName}</a></li>
                        </#list>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 extra_padding">
                <div class="panel panel_self">
                    <div class="panel-heading"><h4><a href="${base}/list?mcId=1">招聘</a><span class="tip_second"><i
                            class="fa fa-plus-square"></i> 多种企业招聘信息</span></h4></div>
                    <div class="panel-body">
                        <ul class="list_clear">
                        <#list zhaopin as zp>
                            <li><a href="${base}/list?mcId=1&scId=${zp.scId}">${zp.scName}</a></li>
                        </#list>
                        </ul>

                    </div>
                </div>

                <div class="panel panel_self">
                    <div class="panel-heading"><h4><a href="${request.contextPath}/list?mcId=6">名企招聘</a><span
                            class="tip_second"><i class="fa fa-plus-square"></i> 名企职位,欢迎咨询</span></h4></div>
                    <div class="panel-body">
                        <ul class="list_clear">
                        <#list mingqi as mq>
                            <li><a href="${base}/list?mcId=6&scId=${mq.scId}">${mq.scName}</a></li>
                        </#list>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 extra_padding">
                <div class="panel panel_self">
                    <div class="panel-heading"><h4><a href="${base}/list?mcId=4">生活服务</a><span class="tip_second"><i
                            class="fa fa-plus-square"></i> 优质的生活</span></h4></div>
                    <div class="panel-body">
                        <ul class="list_clear" style="min-height: 280px;float: left;">
                        <#list shenghuo as sh>
                            <li style="margin-right: 10px;"><a
                                    href="${base}/list?mcId=4&scId=${sh.scId}">${sh.scName}</a></li>
                        </#list>
                        </ul>
                    </div>
                </div>

                <div class="panel panel_self">
                    <div class="panel-heading"><h4><a href="${base}/list?mcId=5">名师培优</a><span class="tip_second"><i
                            class="fa fa-plus-square"></i> 这里拥有良好的教学资源</span></h4></div>
                    <div class="panel-body">
                        <ul class="list_clear">
                        <#list chongwu as cw>
                            <li><a href="${base}/list?mcId=5&scId=${cw.scId}">${cw.scName}</a></li>
                        </#list>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<#-- 广告-->
<div class="advert">
    <div class="container_self">
        <div class="row">
            <a href="${advertMap["footer"].advertForward}" target="_blank">
                <img src="${base}${advertMap["footer"].advertUrl}" style="width:1200px;height: 80px" alt="开学那点事">
            </a>

        </div>
    </div>
</div>
<@footer>
<script type="text/javascript" src="${base}/js/menu.js"></script>
<script src="${base}/js/owl.carousel.min.js"></script>
<script src="${base}/js/main.js"></script>
<!-- 快速点击js-->
<script type="text/javascript" src="${base}/js/basePath.js"></script>
<script type="text/javascript" src="${base}/js/quickClick.js"></script>

    <@floating/>
</@footer>