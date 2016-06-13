<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/favicon.ico" />
    <title>AISHANG</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Tutoring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
   <link  href="css/introducepage.css" rel="stylesheet" type="text/css"/>
   
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/clamp.js"></script>
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
<body  style="min-width:542px;" >
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

<!--start-introduce-->
<div class="container" >

  <div class="tubiao" style="position:fixed;top:360px;right:20px;width:300px;height:100px;padding:5px;background-color:white;display:none;z-index:2;">
<img src="images/wei1.jpg"style="display:block;width:90px;height:90px;float:left;margin-right:4px;"/>
<img src="images/wei2.jpg"style="display:block;width:90px;height:90px;float:left;margin:0px 4px;"/>
<img src="images/wei3.jpg"style="display:block;width:90px;height:90px;float:left;margin:0px 4px;"/>
</div>
<div class="emailtubiao" style="position:fixed;top:380px;right:20px;width:200px;height:30px;padding:5px;display:none;z-index:2;">
<p style="color:hsl(340, 100%, 30%) !important;font-weight:bold;">Acesomodel@163.com</p>
</div>

    <div  class="people-introduction" >
        <div class="introduce-header">
           <h2>优秀学员</h2>
        </div>
        
        <div id="teacher" style="cursor: pointer;">
        
        
        </div>

    </div>
  <!--  模特页面介绍列表开始  -->
 <script>
	
	$(function(){
	$.getJSON("/content/student",{},function(data){
	var str='';
	for(var i=0;i<data.length;i++){
	str+=' <div  class="each-people"><div class="people-photo"><img src="'+data[i].pic1+'"></div><div class="people-content"><div class="people-name"><h6>'+data[i].name+'</h6></div><div class="p-content-bottom" ><span  id="mo-span">模特经历:</span><div  class="con-bottom">'+data[i].summary+'</div><span class="btu btu-t"><a href="modelpage?pic='+data[i].id+'" > 详情</a></span></div></div></div>';
	}
	$('#teacher').html(str);
	})
	});

 </script>
  <!--  模特页面介绍列表结束 -->
    <!--右侧开始-->
    <div class="contact-us">
   
        <div class="contact-us-top">
        <div class="introduce-header">
            <h3>联系我们</h3>
        </div>
        <ul class="contactul">
            <li ><a href="#"><img src="images/phone1.png" style="margin-top: 4%;width:25px;height:25px;margin-left: 5%;" ><span>15304651980</span></a></li>
            <li ><a href="tencent://message/?uin=790451100&Site=&Menu=yes"><img src="images/QQ.png"style="margin-top: 4%;width:25px;height:25px;margin-left: 5%;"><span>QQ咨询</span></a></li>
            <li class="weixinma"><a href="#"><img src="images/weixin.png" style="margin-top: 4%;width:25px;height:25px;margin-left: 5%;"><span>微信咨询</span></a></li>
            <li  class="email"><a href="#"><img src="images/email.png" style="margin-top: 4%;width:25px;height:25px;margin-left: 5%;"><span>Email</span></a></li>
        </ul>
        </div>
        <script type="text/javascript">
        $(".weixinma").mouseover(function(){
        		$(".tubiao").show();
        });
        $(".weixinma").mouseout(function(){
    		$(".tubiao").hide();
    });
     $(".email").mouseover(function(){
        		$(".emailtubiao").show();
        });
        $(".email").mouseout(function(){
    		$(".emailtubiao").hide();
    });
        
        </script>
        
        <div class="course-introduce">
            <div class="introduce-header">
                <h3>专业课程</h3>
            </div>
            <ul class="in-ul">
          
            </ul>
        </div>
    </div>
    <!--右侧结束-->
</div>
<script type="text/javascript">
$(function(){
	  $.getJSON("/content/getcourses", function(data){
		  var str1= '<li><a href="classesintroduce?s='+data[0].id+'"><span>'+data[0].name+'</span></a></li>';
		  var str2= '<li><a href="classesintroduce?s='+data[1].id+'"><span>'+data[1].name+'</span></a></li>';
		  var str3= '<li><a href="classesintroduce?s='+data[2].id+'"><span>'+data[2].name+'</span></a></li>';
		  var str4= '<li><a href="classesintroduce?s='+data[3].id+'"><span>'+data[3].name+'</span></a></li>';
		 
		  $(".in-ul").html(str1+str2+str3+str4);
		 
		  
	  });
});

       
        
        </script>
<!--end-introduce-->
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