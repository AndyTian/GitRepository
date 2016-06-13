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
<meta name="keywords"
	content="Tutoring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js"></script>
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
<body>

<div class="f-logo">
<img style="width:100%;height: auto;" src="images/llogo.png">
</div>
	<!--start-header-->
	<div class="header" id="home">
		<nav class="navbar navbar-default">
		<div class="container-fluid" style="background-color: black;">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index"><img
					src="images/aceso.png" alt="" /></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="about"
						class="hvr-bounce-to-top">关于我们<span class="sr-only">(current)</span></a></li>
					<li><a href="classespage" class="hvr-bounce-to-top">专业设置</a></li>
					<li><a href="peopleIntroduce" class="hvr-bounce-to-top">艾尚师资</a></li>
					<li><a href="employ" class="hvr-bounce-to-top">就业保障</a></li>
					<li><a href="contact" class="hvr-bounce-to-top">联系咨询</a></li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>
	</div>
	<!--end-header-->
	<!--start-contact-->
	<div class="map">
		<div class="container">
			<div class="map-top heading">
				<h1>艾尚地址</h1>
			</div>
			<div class="map-bottom">
			</div>
		</div>
	</div>
	<!--end-contact-->
	<script type="text/javascript">
	$(function() {
		$.getJSON("/content/map",{},function(data){
			 var str='';
			 str=data[0].content;
		     $('.map-bottom').html(str);
		}) 
	});
	</script>
	<!--start-contact-->
	<div class="contact">
		<div class="container">
			<div class="contact-top heading">
				<h2>报名表</h2>

			</div>
			<div class="contact-bottom">

				<div class="col-md-6 contact-left">

					<form id="customerForm" name="customerForm" method="post">
						<input type="text" placeholder="姓名" onblur=checkName(this.value) required="" name="name">
						<input type="text" placeholder="年龄" required="" name="age">
						<p id="prompt6" style="display: none;"></p>
						<input type="text" placeholder="身高(cm)" onblur=checkSecCode(this.value) required="" name="height">
						<input type="text" placeholder="体重(kg)" onblur=checkSecCode2(this.value) required="" name="weight">
						<p id="prompt4" style="display: none;"></p>
						<p id="prompt5" style="display: none;"></p>
						<input type="text" placeholder="邮箱" name="email"onblur=isEmail(this.value) required="">
						<input type="text" placeholder="电话" name="phonenum"onblur=fucCheckTEL(this.value) required="">
						<p id="prompt" style="display: none;"></p>
						<p id="prompt3" style="display: none;"></p>
						<input type="text" placeholder="所在城市" name="city" required="">
						<textarea placeholder="留言" name="message" onblur=istest(this.value)></textarea>
						<p id="prompt2" style="display: none;"></p>
						<input type="button" name="submit" value="提交" onclick="customerAddPage.submitForm()">
					</form>
				</div>

				<script>
					var customerAddPage  = {
			submitForm : function (){
				if(test()){
				$.post("content/customer/save",$("#customerForm").serialize(), function(data){
					if(data.status == 200){
						  swal("提交成功！");
						}
				});
				}else{
			   swal("提交失败请重新提交！");
				}
			    }
	            }
					var prompt=document.getElementById("prompt");
					var prompt2=document.getElementById("prompt2");
					var prompt3=document.getElementById("prompt3");
			
					function fucCheckTEL(TEL)    
                   {    
                          var i,j,strTemp;    
                           strTemp="0123456789-()# "; 
                           if(TEL.length==0){
                            prompt3.innerHTML="*请填写手机号";
                             if(prompt.style.display=='none')
                               {
                               $("#prompt3").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"48%","margin-left":"51%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                               }
                               else{
                                $("#prompt3").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"48%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                          
                               }return false;  
                           }   
                           for (i=0;i<TEL.length;i++)    
                          {    
                             j=strTemp.indexOf(TEL.charAt(i));    
                            if (j==-1)    
                            {    
                               //说明有字符不合法 
                                 prompt3.innerHTML="*请重新填写手机号";
                                  if(prompt.style.display=='none')
                               {
                               $("#prompt3").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"48%","margin-left":"51%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                               }
                               else{
                                $("#prompt3").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"48%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                          
                               }return false;  
                            }    
                          }    
                             //说明合法    
                             $("#prompt3").css("display","none");
                            return true;    
                   }    
					function isEmail(strEmail) {
					  if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
                     {
                       if(prompt3.style.display=='block')
                       {
                                $("#prompt3").css({"margin-bottom":"15px","dispay":"block","margin-left":"51%","width":"48%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                        }
                      $("#prompt").css("display","none");
                       return true;
                     }
                    else{
                               prompt.innerHTML="*请重新填写邮箱地址";
                               if(prompt3.style.display=='block')
                               {
                                $("#prompt3").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"48%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                               }
                               $("#prompt").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"50%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                           return false;
                    }
             
                         }
                         
                         
                   function istest(str) {
					
                    if(document.customerForm.message.value.length>150){
			       $("#prompt2").css({"margin-bottom":"2px","dispay":"block","width":"100%","color":"#FA7171","font-size":"10px","display":"block"});
                   prompt2.innerHTML="*留言大于150字，请重新填写";
				
					return false;
					} else if( document.customerForm.message.value.length<150){
					$("#prompt2").css("display","none");
				    return true;
					}
             
                         }
                         
                         function isNumber( s ){   
                                var regu = "^[0-9]+$"; 
                                var re = new RegExp(regu); 
                                if (s.search(re) != -1) { 
                                    return true; 
                                 } else { 
                                return false; 
                                } 
                          } 
                          
                          
                         function checkName(strName){
                         if(strName.length==0){
                         prompt6.innerHTML="*姓名不能为空";
  
                               $("#prompt6").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","margin-right":"30%","width":"50%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                                return false; 
                         }
                         $("#prompt6").css("display","none");
                              
                                 return true; 
                                 
                         }







                         
                    function checkSecCode( secCode ) { 
                          if( secCode.length ==0 ){ 
                              
                               prompt4.innerHTML="*身高不能为空";
                               if(prompt5.style.display=='block')
                               {
                                $("#prompt5").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"48%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                               }
                               $("#prompt4").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"50%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                                return false; 
                             } 

                          if(!isNumber( secCode ) ){ 
           
                               prompt4.innerHTML="*请重新填写身高";
                               if(prompt5.style.display=='block')
                               {
                                $("#prompt5").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"48%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                               }
                               $("#prompt4").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"50%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                                return false; 
                            } 
                             if(prompt5.style.display=='block')
                               {
                                $("#prompt5").css({"margin-bottom":"15px","dispay":"block","margin-left":"51%","width":"48%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                               }
                            $("#prompt4").css("display","none");
                                 return true; 
                            } 

                         function checkSecCode2( secCode ) { 
                          if( secCode.length ==0 ){ 
                              
                               prompt5.innerHTML="*体重不能为空";
                               if(prompt4.style.display=='none')
                               {
                               $("#prompt5").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"48%","margin-left":"51%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                               }
                               else{
                                $("#prompt5").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"48%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                          
                               }
                               
                                return false; 
                             } 

                          if(!isNumber(secCode) ){ 
           
                               prompt5.innerHTML="*请重新填写体重";
                             if(prompt4.style.display=='none')
                               {
                               $("#prompt5").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"48%","margin-left":"51%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                               }
                               else{
                                $("#prompt5").css({"margin-bottom":"15px","dispay":"block","margin-left":"1%","width":"48%","float":"left","color":"#FA7171","font-size":"10px","display":"block"});
                          
                               }return false; 
                            } 
                            
                            $("#prompt5").css("display","none");
                                 return true; 
                            } 

					function test()
					{
					if($("input[type$='text']").val()=="")
					{
					document.customerForm.message.focus();
					return false;
					}
					
					if(prompt.style.display=='block'||prompt2.style.display=='block'||prompt3.style.display=='block'||prompt4.style.display=='block'||prompt5.style.display=='block'||prompt3.style.display=='block'||prompt4.style.display=='block'||prompt6.style.display=='block')
					{
					document.customerForm.message.focus();
					return false;
					}
					return true;
				    }
					</script>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>


	<!--end-contact-->
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