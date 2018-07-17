<!DOCTYPE html>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=uft-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=7" />
    <title>大连渤海饲料有限公司</title>
    <meta name="keywords" content="大连渤海饲料,鱼粉,鱼粉价格,鱿鱼膏,鱿鱼膏的功效与作用,深海鱼油,鱼油的的功效与作用,虾饲料" />
    <meta name="description" content="大连渤海饲料有限公司是一家致力于生产和销售脱脂鱼粉，鱿鱼膏，
        鱼油等虾饲料的现代化饲料企业。工厂现有两条湿法鱼粉生产线，一条鱿鱼膏生产线。">
    <script type="text/javascript" src="js/home.js"></script>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" href="css/theme.css">
</head>
<body>
<div class="top_bj">
    <div class="top">
        <img src="image/22_03.jpg" class="top_img1"/>
        &nbsp;&nbsp;&nbsp;<strong style=" font-size:26px;line-height: 300%;
        color: #1c94c4;font-family: KaiTi;">大连渤海饲料有限公司</strong>
        <span style="color: #1c94c4;"><strong><span style="font-size:24px;margin-right: 10%;
        float:right;line-height: 320%;font-family: KaiTi;">&nbsp;13304089698 白经理</span></strong></span>
        <img src="image/phone.jpg"  class="top_img2" />
    </div>
</div>
    <div class="menu_bj">
        <div class="menu">
            <a href="/" style="margin-left: 8%">网站首页</a>|
            <a id="about" href="/about" onmousemove="setLeft()" >关于我们</a>|
            <a href="/product">产品中心</a>|
            <a href="javascript:void(0)">技术交流</a>|
            <a href="javascript:void(0)">企业文化</a>|
            <a href="javascript:void(0)">人才招聘</a>|
            <a href="/contact">联系我们</a>

            <div class="erjimenu" id="aboutus" style="display:none" onmousemove="this.style.display='';"
                 onmouseout="document.getElementById('aboutus').style.display='none';">
                <a href="/about">关于我们</a>
                <a href="/qualification">企业资质</a>
                <a href="/factory">厂区厂貌</a>
                <a href="/market">网络营销</a>
            </div>
        </div>
    </div>
    <div>
        <!-- Swiper -->
        <div id="carousel" class="carousel slide" style="min-width: 1100px" data-ride="carousel">
            <!-- 指示符 -->
            <ul class="carousel-indicators">
                <li data-target="#carousel" data-slide-to="0" class="active"></li>
                <li data-target="#carousel" data-slide-to="1"></li>
                <li data-target="#carousel" data-slide-to="2"></li>
            </ul>
            <!-- 轮播图片 -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="image/banner01.jpg" style="width:100%;height: 480px" >
                </div>
                <div class="carousel-item">
                    <img src="image/banner02.jpg" style="width:100%;height: 480px" >
                </div>
                <div class="carousel-item">
                    <img src="image/banner03.jpg" style="width:100%;height: 480px" >
                </div>
            </div>

            <!-- 左右切换按钮 -->
            <a class="carousel-control-prev" href="#carousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#carousel" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
        <script>
            function setLeft() {
                document.getElementById('aboutus').style.display='';
                console.log($('#about').offset().left);
                $('#aboutus').css("margin-left",$('#about').offset().left -4);
            }
        </script>