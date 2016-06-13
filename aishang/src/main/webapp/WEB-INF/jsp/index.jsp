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
 <link href="css/schoollife.css" rel='stylesheet' type='text/css' />  
<link href="css/jquery.bxslider.css" rel="stylesheet" />
  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.bxslider.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <!---- start-smoth-scrolling---->
  <script type="text/javascript" src="js/move-top.js"></script>
  <script type="text/javascript" src="js/easing.js"></script>
    <script src="js/dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="css/sweetalert.css">
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
<body style="min-width:540px;">
<!--start-header-->
<div class="f-logo">
<img style="width:100%;height: auto;" src="images/llogo.png">
</div>
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
<!--图片-->

<div id="banner2" class="banner2">
    <ul class="img">


    </ul>
    <ul class="num">

    </ul>
    <div class="btn-p btn-l ">&lt;</div>
    <div class="btn-p btn-r ">&gt;</div>
</div>

<script>
 
function getViewSizeWithScrollbar(){//包含滚动条 
     if(window.innerWidth){ 
     return  window.innerWidth;


    }else if(document.documentElement.offsetWidth == document.documentElement.clientWidth){ 
     return  document.documentElement.offsetWidth;

    }else{ 
     return document.documentElement.clientWidth + getScrollWith(); 
} 
} 




    $(function(){

///content/ad
        $.getJSON("/content/ad", function(data){
           str="";
          var picwidth=getViewSizeWithScrollbar();
         
        
           $("#banner2").attr("width",picwidth+'');
           for(var i=0;i<data.length;i++)
           {
           str+='<li style="width:'+picwidth+'px;"><a href="'+data[i].url+'"><img style="width:'+picwidth+'px;" src="'+data[i].pic+'"/></a></li>';
           // str+='<li style="width:'+picwidth+'px;"><img style="width:'+picwidth+';" src="'+data.pic[i]+'"/></li>';
           
           }
           $(".img").html(str);
      
          
     
        var i=0;
        var clone=$(".banner2 .img li").first().clone();
        $(".banner2 .img").append(clone);

        var size=$(".banner2 .img li").size();
    
        for(var j=0 ;j<size-1;j++){
            $(".banner2 .num").append("<li></li>");
        }
        $(".banner2 .num li").first().addClass("on");

        $(".banner2 .num li ").hover(function(){
            var index=$(this).index();
            i=index;
            var movewidth=-index*picwidth;
            $(".banner2 .img").stop().animate({left:movewidth+'px'},1000)
            $(this).addClass("on").siblings().removeClass("on")

        })
        //定时器
        var t=setInterval(moveL,3000);
        $(".banner2").hover(function(){
            clearInterval(t);
        },function(){
            t=setInterval(moveL,3000);
        })

        $(".banner2 .btn-l").click(function(){
            moveL()
        })
        
        
        $(".banner2 .btn-r").click(function(){
            mover()
        })
        
       
        
        
        
        
        function moveL(){
            i++;
           
//            alert("123");
            if(i==size){
                $(".banner2 .img").css({left:0})
                i=1;
            }
             var width2=-i*picwidth;
             var movewidth=-i*picwidth;
            // alert(movewidth);
            $(".banner2 .img").stop().animate({left:movewidth+'px'},1000)
     
            if(i==size-1)
            {
                $(".banner2 .num li ").eq(0).addClass("on").siblings().removeClass("on")
            }else{

                $(".banner2 .num li ").eq(i).addClass("on").siblings().removeClass("on")
            }


        }
        
        function mover(){
            i--;
//            alert("123");
            if(i==-1){
               
                 var movewidth=-(size-1)*picwidth;
                $(".banner2 .img").css({left:movewidth+'px'})
                i=size-2;
            }
            

                  var movewidth=-i*picwidth;
            $(".banner2 .img").stop().animate({left:movewidth+'px'},1000)


            $(".banner2 .num li ").eq(i).addClass("on").siblings().removeClass("on")

        }
        
        
          });

    })
</script>
<!--图片结束-->

  <!--FlexSlider-->
  <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
  <script defer src="js/jquery.flexslider.js"></script>
 

  <!--End-slider-script-->
  <!--start-provide-->
  <div class="provide">
  
  
  
   
   
   
   
   
  </div>
  <!--end-provide-->
s<script type="text/javascript">
$(function(){
	  $.getJSON("/content/getcourses", function(data){
		  var str1= '<div class="col-md-3 provide-left provide-one"><a href="classesintroduce?s='+data[0].id+'"> <h3 style="text-align: center;">'+data[0].name+'</h3></a><p>'+data[0].title+'</p></div>';
		  var str2= '<div class="col-md-3 provide-left provide-two"><a href="classesintroduce?s='+data[1].id+'"> <h3 style="text-align: center;">'+data[1].name+'</h3></a><p>'+data[1].title+'</p></div>';
		  var str3= '<div class="col-md-3 provide-left provide-tre"><a href="classesintroduce?s='+data[2].id+'"> <h3 style="text-align: center;">'+data[2].name+'</h3></a><p>'+data[2].title+'</p></div>';
		  var str4= '<div class="col-md-3 provide-left provide-four"><a href="classesintroduce?s='+data[3].id+'"> <h3 style="text-align: center;">'+data[3].name+'</h3></a><p>'+data[3].title+'</p></div>';
		  var str5= '<div style="height:0;width:0;clear:both;"></div>';
		  $(".provide").html(str1+str2+str3+str4+str5);
		 
		  
	  });
});
</script>  


 <!--start-news-->
  <div class="news ">
    <div class="container ">
      <div class="news-top  col-mb-01s">
        <div class="col-md-8 news-left">
          <div class="news-heading">
            <h3>ENVIRONMENT/<span style="color:black;font-family:"宋体";">学校环境</span></h3>
          </div>
          <div class="news-bottom">
           
            <div class="schoolPhotos" >
            
           
            
             <div class="more-icon">
                <span style="display: block;height:100%;"><a style="display: block;height: 100%;" href="picture.html"><img style="border:0px;height:auto;width:50px;float: right;margin-right:5%;margin-top: 15%;"src="images/more3.gif"></a></span>
              </div>
            </div>
<script>
 
$(function() {
    //$.getJSON("http://localhost:8080/model2/testschoollict.json",{},function(data){
      $.getJSON("content/getschoolpic",{},function(data){
var str='';
if(data.length<8){
for(i=0;i<data.length; i++){
str+='<div class="each-photo ph"><a href="picture"><img class="img-s" style="width:95%;height=119px;" src="'+data[i].pic+'"/></a></div>';
}
}else{
for(i=0;i<8; i++){
str+='<div class="each-photo ph"><a href="picture"><img class="img-s" style="width:95%;height=119px;" src="'+data[i].pic+'"/></a></div>';
}
}

str+='<div class="more-icon"><span style="display: block;height:100%;"><a style="display: block;height: 100%;" href="picture"><img style="border:0px;height:auto;width:50px;float: right;margin-right:5%;margin-top: 15%;"src="images/more3.gif"></a></span></div>';
$('.schoolPhotos').html(str);
}) 
});

</script>

<div class="news-heading title-h3">
                            <h3>LIFE/<span style="color:black;">学校生活</span></h3>
                        </div>
                        <div class="schoollife-left">
                            <uL id="schoollife-left">
                               
                           

                            </uL>

                        </div>

                        <div class="schoollife-right">
                            <uL id="schoollife-right">
                              
                              
                               
                               
                         
                            </uL>

                        </div>
            
          </div>
        </div>
          <div class="col-md-4 news-right">
          <div class="news-heading title-h3">
            <h3>ACTIVITY/<span style="color:black;">实践活动</span></h3>
          </div>
          <div  id="news-1">
          
          
          
          
          
          


          </div>
        </div>
                  <!--/getActivitytitle实践生活开始 -->

 <script type="text/javascript">
    $(function() {
            
            $.getJSON("content/getactivity",{},function(data){
           //$.getJSON("http://localhost:8080/model2/testschoollict.json",{},function(data){
                 var str='';
                 
            if(data.length<2){
            // if(data.id.length<2){
              for(var i=0;i<data.length;i++)
              { 
              str+='<a href="schoolactivity?s='+data[i].id+'"><div class="news-1"><img src="'+data[i].pic+'" style="height:295px;" alt="" /><div class="n-1"><h5>'+data[i].title+'</h5><p>Aceso Culture & Art School</p></div></div></a>';
              }
              } else{
              for(var i= 0;i<2;i++)
              {
              
                  str+='<a href="schoolactivity?s='+data[i].id+'"><div class="news-1"><img src="'+data[i].pic+'" style="height:295px;" alt="" /><div class="n-1"><h5>'+data[i].title+'</h5><p>Aceso Culture & Art School</p></div></div></a>';
               // str+='<a href="schoolactivity?s='+data.id[i]+'"><div class="news-1"><img src="'+data.pic[i]+'" style="height:372px;" alt="" /><div class="n-1"><h5>'+data.title[i]+'</h5><p>Aceso Culture & Art School</p></div></div></a>';
              
              }
              }
            $('#news-1').html(str);
           
                    })
        });
        
	
</script>
<!--实践生活结束-->
        <!-- /getschoollifetitle -->

        <div class="clearfix"></div>
      </div>
    </div>
  </div>
  <!--end-news-->
    <!--start-teacher-->
    <div class="teacher">
        <div class="container">
            <div class="teacher-top">
                <h3>STUDENT/<span style="color:black;">优秀学员</span></h3>
            </div>
            <div class="teacher-main">

        
                
                <div class="clearfix fix-style" ></div>
                <div class="index-box" >
 
          <span><a  href="modelpageointroduce"><img  class="img-p" src="images/more3.gif"></a></span>
                </div>
            </div>
        </div>
    </div>
    <!--end-teacher-->
             <script>
             $(function() {

            	 $.getJSON("content/schoollife",{},function(data){
            	 //$.getJSON("http://localhost:8080/webapp1/test.json",{},function(data){
            	 var str='';
            	 var str2='';
            	 var index=0;
            	 //if(data.id.length>=22){//大于22条的记录

            	 if(data.length>=22){
            	 for(var i=0;i<11;i++){
            	 str+='<li><a href="news?s='+data[index].id+'">'+data[index].title+'</a></li>';
            	     //str+='<li><a href="news?s='+data.id[index]+'">'+data.title[index]+'</a></li>';
            	     index+=1;
            	 str2+='<li><a href="news?s='+data[index].id+'">'+data[index].title+'</a></li>';
            	     //str2+='<li><a href="news?s='+data.id[index]+'">'+data.title[index]+'</a></li>';
            	     index+=1;
            	 }
            	 }else{//<22
            	 //var k=data.id.length/2-1;
            	 var k=data.length/2-1;

            	 //if(data.id.length%2==0){//判段是否为偶数
            	 if(data.length%2==0){
            	 for(var i=0;i<k+1;i++){
            	    str+='<li><a href="news?s='+data[index].id+'">'+data[index].title+'</a></li>';
            	    // str+='<li><a href="news?s='+data.id[index]+'">'+data.title[index]+'</a></li>';
            	     index+=1;
            	 str2+='<li><a href="news?s='+data[index].id+'">'+data[index].title+'</a></li>';
            	     //str2+='<li><a href="news?s='+data.id[index]+'">'+data.title[index]+'</a></li>';
            	     index+=1;

            	 }

            	 }else{//为基数
            	 for(var i=0;i<k;i++){
            	      str+='<li><a href="news?s='+data[index].id+'">'+data[index].title+'</a></li>';
            	    // str+='<li><a href="news?s='+data.id[index]+'">'+data.title[index]+'</a></li>';
            	     index+=1;
            	 str2+='<li><a href="news?s='+data[index].id+'">'+data[index].title+'</a></li>';
            	    // str2+='<li><a href="news?s='+data.id[index]+'">'+data.title[index]+'</a></li>';
            	     index+=1;

            	 }
            	 //str+='<li><a href="news?s='+data.id[index]+'">'+data.title[index]+'</a></li>';
            	     str+='<li><a href="news?s='+data[index].id+'">'+data[index].title+'</a></li>';
            	       


            	 }

            	 }

            	 $('#schoollife-left').html(str);
            	 $('#schoollife-right').html(str2);


            	 })
            	 }); 
</script>
    <script type="text/javascript">
        
        $(function() {
            
            $.getJSON("/content/student",{},function(data){
                 var str='';
              
            for( var i=0;i<5; i++){
			str+='<div class="teacher-left"><a href="modelpage?pic='+data[i].id+'"><img src="'+data[i].pic1+'" alt="" /><h4>'+data[i].name+'</h4></a></div>'
			}
			str+='<div class="clearfix fix-style" ></div><div class="index-box" ><span><a  href="modelpageointroduce"><img  class="img-p" src="images/more3.gif"></a></span></div>';
			$('.teacher-main').html(str);
                    })
        });
        
	
</script>
  <!--start-join-->
  <div class="join">
    <div class="container">
      <div class="join-main">
        <div class="col-md-3 join-left">
          <span class="glyphicon glyphicon-time" aria-hidden="true">
            <img src="images/contact1.png" style="width:60px;height:60px;"/>
          </span>
          <h4>咨询电话</h4>
          <p>国外用户拨打：+8615304651980</p><p>工作时间：09：00-17：00</p>
        </div>
        <div class="col-md-3 join-left">
          <span class="glyphicon glyphicon-user" aria-hidden="true">
            <img src="images/chat1.png" style="width:60px;height:60px;"/>
          </span>
          <h4>在线咨询</h4>
          <p>QQ：790451100</P><P>工作时间：09：00-21：00特殊情况您可以预约回访.</p>
        </div>
        <div class="col-md-3 join-left">
          <span class="glyphicon glyphicon-map-marker" aria-hidden="true">
            <img src="images/location1.png" style="width:60px;height:60px;"/>
          </span>
          <h4>学校地址</h4>
          <p>黑龙江省哈尔滨市呼兰区</p><p>南京路宏信广场4号商服11门</p>

        </div>
        <div class="col-md-3 join-left">
          <span class="glyphicon glyphicon-calendar" aria-hidden="true">
            <img src="images/document1.png" style="width:60px;height:60px;"/>
          </span>
          <h4>在线报名</h4>
          <p>支付宝在线报名/网银汇款报名</p><p>安全快捷/加入微信公众平台</p>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
  <!--end-join-->
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
 
  <!-- 校园生活js -->
  
  <!-- 校园生活js 结束-->
</body>>
</html>