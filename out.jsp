<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<meta http-equiv="refresh" content="40; url=index.jsp">
<html>
	<head>
	 <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
	<style type="text/css">
 @font-face{
 font-family:icon;
 src:url("css/font/icon.ttf"),url("css/font/icon.eot");
 }
 body{
 background:black;
 }
 div{
 font-family:icon;
 color:#fff;
 position:absolute;
 top:-100px;
 }
.out1
{
  color:red;
  text-align: center;
}
.out2
{
  color:#FFFF00;
   text-align: center;
}
.out3
{
	color:#00BBFF;
   text-align: center;
}
.out4
{
	text-decoration: none;
	color:#EE7700;
}
 </style>
 <script type="text/javascript">
 function win(attr)
 {//取得運成區大小，參數為height|width
	switch(attr)
		{           
			case 'height'://取得視窗高度
             if (window.innerHeight)
			{
                   winHeight = window.innerHeight;return winHeight;
			}else if ((document.body) && (document.body.clientHeight)){
                   winHeight = document.body.clientHeight;return winHeight;
			}
			if (document.documentElement  && document.documentElement.clientHeight)
             {
                 winHeight = document.documentElement.clientHeight;return winHeight;
             }
			 break;
			case 'width'://取得視窗寬度
			  if (window.innerWidth){
                   winWidth = window.innerWidth;return winWidth;
			  }else if ((document.body) && (document.body.clientWidth)){
                   winWidth = document.body.clientWidth;   return winWidth;          
			  }//透過深入Document內部對body進行檢測，取得視窗大小
             if (document.documentElement  &&document.documentElement.clientWidth)
             {
                 winWidth = document.documentElement.clientWidth;return winWidth;
             }
			 break;
			 case 'scrollTop':
				var scrollTop;
				if(typeof window.pageYOffset != 'undefined'){
				scrollTop = window.pageYOffset;
				}
				else
				if(typeof document.compatMode != 'undefined' &&
				document.compatMode != 'BackCompat'){
				scrollTop = document.documentElement.scrollTop;
				}
				else 
				if(typeof document.body != 'undefined'){
				scrollTop = document.body.scrollTop;
				}
				return scrollTop;break;
			default :return 0;break;
		}
}
 window.onload =function (){
	 var bd=document.getElementsByTagName('body')[0];//取得body
	 function snow(){//雪花函數
	 var win_height=win('height');//取得視窗高度
	 var win_width=win('width');//取得視窗寬度
	 function createsnow(){//建立雪花函數
		 var snowdiv=document.createElement('div');//新建一個div
		 snowdiv.innerHTML="j";//寫入雪花（字體的代碼為j）
		 var size=20+parseInt(Math.random()*30);//隨機生成雪花的大小
		 var left=parseInt(win_width*(Math.random())*0.98);//隨機生成left值
		 snowdiv.style.fontSize=size+'px';//應用字體大小
		 snowdiv.style.width=size+'px';//div應用寬度
		 snowdiv.style.height=size+'px';//div應用高度
		 snowdiv.style.left=left+'px';//雪花的left值
		 bd.appendChild(snowdiv);//將此雪花放入文件中
		 return snowdiv;//返回這個雪花物件
	 }
	 	 setInterval (function (){
		 var snow=createsnow();//建立雪花並得到這一物件
		 var sbd=Math.ceil(Math.random()*3);//隨機生成飄落速度
		 move(snow,sbd);//移動雪花
		 },100);
		  function move(obj,speed){//移動函數
			 var top=0;
			 var timer=setInterval(
				 function (){
					 top=top+speed;//改變top值
					 obj.style.top=top+'px';
					 if (top>win_height-20)
					 {
						 clearInterval(timer);//飄落停止
					 }
				 },30);
			}
		setInterval(function(){//一段時間之後清理一次雪花，防止檔案過大卡住
			 var snows=document.getElementsByTagName('div');
			 for (var i=0;i<snows.length/3 ;i++ )
			 {
				 snows[i].parentNode.removeChild(snows[i]);
			 }
			 },20000);
	 }
	 snow();//執行snow函數
	 window.onresize=function(){//視窗改變
				 var snows=document.getElementsByTagName('div');
				 for (var i=0;i<snows.length ;i++ )
				 {
					 snows[i].parentNode.removeChild(snows[i]);
				 }
			 }
 }
 </script>
	</head>
	<body>
	<%
	session.removeAttribute("id");
	%>
		<form name="login" method="post" action="#">
			
				<h1 class="out2">謝謝您的使用!!</h1>
				<h2 class="out1">▶►40秒後回登入畫面◄◀</h2>
				<h3 class="out3">若無自動跳轉請按&nbsp&nbsp&nbsp<a href="index.jsp" class="out4">➦➦回登入頁面</h3></p>
			
		</form>
	</body>

</html>