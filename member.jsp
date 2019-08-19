<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<%@include file="config.jsp" %>
<%@page pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>組員介紹</title>
  <style type="text/css">
  *{margin:0;padding:0;}
  body{background:url("images/bg.jpg");overflow:hidden;}
  .polaroid{padding:10px;background:#FFF;text-align:center;width:auto;position:absolute;}
  .cover{position:absolute;width:100%;height:100%;z-index:10;}
   </style>
<link rel="stylesheet" type="text/css" href="css/memberintroduce.css">

<script type="text/javascript" src='js/zQuery.js'></script>
<script type="text/javascript">
window.onload =function (){
var ocover=getbyclassname("div","cover");//取得class為cover的所有div（遮罩層）
var pre=ocover[0].parentNode;//在圖片切換時存放上一張圖片的變數
var body=document.getElementsByTagName('body')[0];//取得body供視窗大小的設定
resize();//產生頁面載入完成之後的隨機參數
window.onresize=resize;//頁面大小調整後重新調整參數
function resize(){//隨機圖片布局的產生
var winh=win('height');var winw=win('width');//取得視窗大小
body.style.width=winw;//設定body寬度(解決鍵盤箭頭按下頁面會動的問題)
body.style.height=winh;//設定body高度
for (var i=0;i<ocover.length ;i++ )
{
	var left=Math.random()*(winw-1.3*ocover[i].offsetWidth);//隨機left
	var top=Math.random()*(winh-ocover[i].offsetHeight);//隨機top
	var deg=Math.random()*45;//隨機角度
	if (i%2==0)
	{
		deg=-deg;//圖片順、逆時針旋轉交替進行
	}
	ocover[i].parentNode.style.left=left+'px';//設定定位值
	ocover[i].parentNode.style.top=top+'px';
	ocover[i].parentNode.style.webkitTransform='rotate('+deg+"deg)";//設定旋轉度數
	ocover[i].parentNode.style.mozTransform='rotate('+deg+"deg)";
	ocover[i].parentNode.style.oTransform='rotate('+deg+"deg)";
	ocover[i].parentNode.style.msTransform='rotate('+deg+"deg)";
	ocover[i].parentNode.style.transform='rotate('+deg+"deg)";
	ocover[i].onmousedown=function (){//選中圖片
	pre.style.zIndex=0;//上一張圖片的zIndex變為0
	this.parentNode.style.zIndex=11;//把目前圖片調整到最上層
	drag(this.parentNode);//實現目前圖片的拖曳
	pre=this.parentNode;//更新上一張圖片為本次的圖片
	}
}
}
document.onkeydown=function(event){//鍵盤按下
var deg=css(pre,'rotate')[0];//取得圖片當前的旋轉度數
if(event.keyCode==37){//判斷按鍵（左箭頭）
	deg--;//度數減小
	if (deg<-90)
	{
		deg++;//防止顫抖（考慮到方法css()）
	}
}else if(event.keyCode==39){//判斷按鍵（右箭頭）
    deg++;
	if (deg>90)
	{
		deg--;
	}
}else{
	return false;
}
	pre.style.webkitTransform='rotate('+deg+"deg)";//設定角度
	pre.style.mozTransform='rotate('+deg+"deg)";
	pre.style.oTransform='rotate('+deg+"deg)";
	pre.style.msTransform='rotate('+deg+"deg)";
	pre.style.transform='rotate('+deg+"deg)";
}
}

  function displayid(id){            /*展開收起*/
var erv = document.getElementById(id);
if(erv.style.display=="none"){
erv.style.display="";
}
else{
erv.style.display="none";
}
}

/*  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-43927413-1', 'csscoke.com');       彈出
  ga('send', 'pageview');*/

  </script>
 </head>
 <body>
 		   	 
		<header>

		</header>
		<% if(session.getAttribute("id")==null) {%>
		<nav>
			<ul class="sub1" id="ontopDiv">
			　<input class="css_button" type="button" value="隱藏/顯示左側" name="Y" onclick="displayid('menu')">
				<li><a href="index.jsp">首頁</a></li>
				<li><a href="goods.jsp">商品類別</a></li>
				<li><a href="member.jsp">組員介紹</a>
					<ul class="sub2">
						<li><a href="member.jsp">圖片牆</a></li>
						<li><a href="https://www.facebook.com/profile.php?id=100001534034052&fref=ts">金沅禹</a></li>
						<li><a href="https://www.facebook.com/profile.php?id=100000589844831&fref=ts">蘇彥同</a></li>
						<li><a href="https://www.facebook.com/sadness1997711">陳昌琦</a></li>
						<li><a href="https://www.facebook.com/profile.php?id=100010214614076&fref=ts">劉昀叡</a></li>
					</ul>
				</li>
				<li><a href="shoppingcart.jsp">購物車</a></li>
				<li><a href="feeback.jsp">評論</a></li>
				<li><a href="work/login.jsp">後臺管理</a></li>
				<li><a href="#">網站推薦</a>
					<ul class="sub2">
						<li><a href="https://zh-tw.facebook.com/">facebook</a></li>
						<li><a href="https://tw.yahoo.com/">yahoo奇摩</a></li>
						<li><a href="http://shopping.pchome.com.tw/">pchome</a></li>
						<li><a href="https://www.yamaha-motor.com.tw/">yamaha</a></li>
					</ul>
				</li>
				<li>
					<form action="show.jsp" method="post">
						<input type="text" name="search" size="10"> 
						<input class="myButton" type="submit" value="搜尋" name="B1" onclick="datacheck()" >
					</form>
				</li>
				<input class="css_button2" type="button" value="隱藏/顯示右側" name="Z" onclick="displayid('menu2')">
			</ul>
			
		</nav>  
  		<article  id="menu2">
		<!--<br><textlayout1>會員登入</textlayout1><br><br>
			 <div class="classname">
               <form name="user" method="POST" action="" class="join" align="center">
               <font>帳號<p><br>
               <input type="text" name="id" size="20"><p><br>
               <font>密碼<p><br>
               <input type="password" name="pwd" size="20" ><p><br>
              <p align="center"><input class="myButton" type="button" value="送出" name="B1" onclick="datacheck()">　
			  <input class="myButton" type="RESET" value="清除" name="B2"><br><br>
               </form>-->
		<%}else{%>
          <nav>
			<ul class="sub1" id="ontopDiv">
			　<input class="css_button" type="button" value="隱藏/顯示左側" name="Y" onclick="displayid('menu')">
				<li><a href="index.jsp">首頁</a></li>
				<li><a href="goods.jsp">商品類別</a></li>
				<li><a href="userinformation.jsp">會員中心</a>
					<ul class="sub2">
					    <li><a href="userinformation.jsp">會員資料</a></li>
					    <li><a href="usercenter.jsp">訂購紀錄</a></li>
						<li><a href="userdatachange.jsp">修改資料</a></li>
						<li><a href="record.jsp">評論紀錄</a></li>
					</ul>
				</li>
				<li><a href="member.jsp">組員介紹</a>
					<ul class="sub2">
						<li><a href="member.jsp">圖片牆</a></li>
						<li><a href="https://www.facebook.com/profile.php?id=100001534034052&fref=ts">金沅禹</a></li>
						<li><a href="https://www.facebook.com/profile.php?id=100000589844831&fref=ts">蘇彥同</a></li>
						<li><a href="https://www.facebook.com/sadness1997711">陳昌琦</a></li>
						<li><a href="https://www.facebook.com/profile.php?id=100010214614076&fref=ts">劉昀叡</a></li>
					</ul>
				</li>
				<li><a href="shoppingcart.jsp">購物車</a></li>
				<li><a href="feeback.jsp">評論</a></li>
				<li><a href="work/login.jsp">後臺管理</a></li>
				<li><a href="out.jsp">登出</a></li>
				<li>
					<form action="show.jsp" method="post">
						<input type="text" name="search" size="10"> 
						<input class="myButton" type="submit" value="搜尋" name="B1" onclick="datacheck()" >
					</form>
				</li>
				<input class="css_button2" type="button" value="隱藏/顯示右側" name="Z" onclick="displayid('menu2')">
			</ul>
			
		</nav>
              </div>
         <article  id="menu2">       
             
                 <font size="5"><br></font><a href="" class="link1">
		<%}%>
		         <br><br>
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
         <!--        <p class="p2">✴✴相片可以靠左右鍵來調整圖片角度✴✴</p>
                 <br><br>-->
                 <img src="images/090.gif" width="300" hegiht="225" style="position: relative;right:6%;">
                 <img src="images/095.gif" width="300" hegiht="225" style="position: relative;right:6%;">
                 <img src="images/094.gif" width="300" hegiht="225" style="position: relative;right:6%;">				 
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
        </article>

		<section id="menu">
		<br><br><br>
        <br><textlayout3>社群媒體</textlayout3><br>
	              <div class="classname"><br><br>
	                  <a href="https://www.facebook.com/profile.php?id=100001534034052&fref=ts" class="shake-horizontal" id="mintro1">金沅禹</a><br><br><br>
					  <a href="https://www.facebook.com/profile.php?id=100000589844831&fref=ts" class="shake-horizontal" id="mintro1">蘇彥同</a><br><br><br>
					  <a href="https://www.facebook.com/sadness1997711"  class="shake-horizontal" id="mintro1" >陳昌琦</a><br><br><br>
					  <a href="https://www.facebook.com/profile.php?id=100010214614076&fref=ts"  class="shake-horizontal" id="mintro1">劉昀叡</a><br><br><br>
			    </div>        
              </div><br>
			  
        </section>		
	<aside>			
	<marquee>✴✴相片可以靠左右鍵來調整圖片角度✴✴</marquee>			  
    </aside>                  
  <div class="polaroid">
  <div class="cover"></div>
  <img src="images/1.jpg" width="335" height="275" alt="" />
  <p class="p1">資管二甲 金沅禹</p>
  </div>
    <div class="polaroid">
	<div class="cover"></div>
  <img src="images/2.JPG"  width="335" height="275" alt="" />
  <p class="p1">資管二乙 陳昌琦</p>
  </div>
    <div class="polaroid">
	<div class="cover"></div>
  <img src="images/3.jpg" width="335" height="275" alt="" />
  <p class="p1">資管二甲 蘇彥同</p>
  </div>
    <div class="polaroid">
	<div class="cover"></div>
  <img src="images/4.jpg" width="335" height="275"  alt="" id="changemouse" />
  <p class="p1">資管二乙 劉昀叡</p>
  </div>
 
 </body>
</html>
