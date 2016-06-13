<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/favicon.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AISHANG</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tutoring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
  <script type="text/javascript">
    jQuery(document).ready(function($) {
      $(".scroll").click(function(event){
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
      });
    });
    
    function myBrowser(){
    var userAgent = navigator.userAgent; 
   var isOpera = userAgent.indexOf("Opera") > -1; 
   var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; 
   var isFF = userAgent.indexOf("Firefox") > -1; 
   var isSafari = userAgent.indexOf("Safari") > -1;
   if (isIE) {
        var IE5 = IE55 = IE6 = IE7 = IE8 = false;
        var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
        reIE.test(userAgent);
        var fIEVersion = parseFloat(RegExp["$1"]);
        IE55 = fIEVersion == 5.5;
        IE6 = fIEVersion == 6.0;
        IE7 = fIEVersion == 7.0;
        IE8 = fIEVersion == 8.0;
        if (IE55) {
            return "IE55";
        }
        if (IE6) {
            return "IE6";
        }
        if (IE7) {
            return "IE7";
        }
        if (IE8) {
            return "IE8";
        }
    }//isIE end
    if (isFF) {
        return "FF";
    }
    if (isOpera) {
        return "Opera";
    }
}
if (myBrowser() == "IE6") {
   alert("您的浏览器版本太老！请更新后查看该网站");
}
if (myBrowser() == "IE55") {
    alert("您的浏览器版本太老！请更新后查看该网站");
}
if (myBrowser() == "IE7") {

    alert("您的浏览器版本太老！请更新后查看该网站");
}
if (myBrowser() == "IE8") {
  
     alert("您的浏览器版本太老！请更新后查看该网站");
}
    
  </script>
<!--start-smoth-scrolling-->
</head>
<body>
<div class="f-logo">
<img style="width:100%;height: auto;" src="images/llogo.png">
</div>
<!--start-header-->
<div class="header" id="home">
  <nav class="navbar navbar-default">
    <div class="container-fluid" style="background-color:black;">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index"><img src="images/aceso.png" alt="" /></a>
      </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li class="active"><a href="about" class="hvr-bounce-to-top">关于我们<span class="sr-only">(current)</span></a></li>
          <li><a href="classespage" class="hvr-bounce-to-top">专业设置</a></li>
          <li><a href="peopleIntroduce" class="hvr-bounce-to-top">艾尚师资</a></li>
          <li><a href="employ" class="hvr-bounce-to-top">就业保障</a></li>
          <li><a href="contact" class="hvr-bounce-to-top">联系咨询</a></li>
        </ul>
        <div class="clearfix"></div>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
</div>
<!--end-header-->
	<!--start-about-->
	<div class="about">
		<div class="container">
			<div class="about-top heading">
				<h1>艾尚文化艺术学校</h1>
			</div>
			<div class="about-bottom">
				<div class="about-pic">
					<img class="pic1" src="images/about01.jpg">
					<img class="pic2" src="images/about02.jpg">
					<img class="pic3" src="images/about03.jpg">
					<img class="pic4" src="images/about04.jpg">
					<img class="pic5" src="images/about05.jpg">
					<div style="width:0;height:0;clear:both;"></div>
				</div>
				<!-- /getschoolProfile -->
				<div class="about-con">
					
				</div>
				<script>
	$(function() {
		$.getJSON("content/aboutus",{},function(data){
		         var str='';
				 str='<p>'+data[0].content+'</p>';
			     $('.about-con').html(str);
		}) 
	});
</script>
     		
				
				
				
				
				
				
			</div>
		</div>
	</div>
	<!--end-vision-->

  <!--start-footer-->
  <div class="footer">
    <div class="container">
      <div class="footer-main">
        <div class="col-md-4 footer-left">
          <span class="glyphicon glyphicon-map-marker map-marker" aria-hidden="true"></span>
          <p>艾尚教育, <span>学校地址,</span> 黑龙江省哈尔滨市呼兰区,南京路宏信广场4号商服11门</p>
        </div>
        <div class="col-md-4 footer-left">
          <span class="glyphicon glyphicon-phone map-marker" aria-hidden="true"></span>
          <p>+8615304651980
            <!--<span>+8615304651980</span> -->
          </p>
        </div>
        <div class="col-md-4 footer-left">
          <p class="footer-class">工作时间：09：00-17：00  </p>
          <ul>
            <li><a href="http://user.qzone.qq.com/790451100/"><span class="fb"></span></a></li>
            <li><a href="http://weibo.com/ACESOmodel?source=blog&is_hot=1"><span class="twit"></span></a></li>
            <li><a href="http://blog.sina.com.cn/aceso"><span class="rss"></span></a></li>
            <li><a href="http://photo.163.com/acesomodel"><span class="ggl"></span></a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
    <script type="text/javascript">
      $(document).ready(function() {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */

        $().UItoTop({ easingType: 'easeOutQuart' });

      });
    </script>
    <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
  </div>
  <!--end-footer-->
	  <!--QQ -->

  <div  id="QQpic">
    <div class="applydiv">
      <h4>报名热线</h4>
      <p>15304651980</p>
    </div>
    <div class="servicediv">
      <img src="images/service.png">
    </div>
    <div  class="QQdiv">
      <a href="tencent://message/?uin=790451100&Site=&Menu=yes">
	<span>
	<img src="images/QQ.png">
	<p> 在线咨询</p>
	</span>
      </a>
      <!--<a>-->
	<span  id="weixinbtu" style="">
	<img src="images/weixin.png">
	<p> 在线咨询</p>
	</span>
 
    </div>
  </div>
  <div id="weixinpic">
    <img src="images/wei1.jpg"/>
    <img src="images/wei2.jpg"/>
    <img src="images/wei3.jpg"/>
  
  </div>
  <script>
   $("#weixinbtu").mouseover(function(){
      var weixinpic=document.getElementById('weixinpic');
       weixinpic.style.display='block';
    });
      $("#weixinbtu").mouseout(function(){
      var weixinpic=document.getElementById('weixinpic');
       weixinpic.style.display='none';
    });
  </script>
  <!-- QQ结束 -->
</body>
</html>