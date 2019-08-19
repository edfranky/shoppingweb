<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<%@include file="config.jsp" %>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>首頁</title>
		<link rel=stylesheet type="text/css" href="css/index.css">
		<script src="js/index.js"></script>

	</head>

<body>
	 <a name="回頂端"></a>
	 <% if(session.getAttribute("id")==null) {%>
	
	    <%
String thePath=request.getRealPath("/") ; 

sql="select * from  count ";
ResultSet rs =con.createStatement().executeQuery(sql);
int x=0;	
	
	while(rs.next()){
	    x=rs.getInt("count");
		
	}
if(session.isNew())
{
x++;//計數器加1
}
sql="update count set count="+x ;
con.createStatement().execute(sql);
%>
		<header>
		</header>
		<section id="menu">
		<h6>你是第<%=x%>位訪客</h6>
        <br><textlayout3>快速註冊</textlayout3><br><br>
	              <div class="classname">
	             <form name="user" method="POST" action="register.jsp" class="join" align="center">
					     <font>姓名/暱稱<p>
					     <input type="text" name="username" size="20" required="required"><p>
				       <font>設定帳號<p>
					     <input type="text" name="id" size="20" required="required"  ><p>
					     <font>設定密碼<p>
					     <input type="password" name="pwd" size="20" required="required" ><p>
					     <font>電話<p>
					     <input type="text" name="tel" size="20" required="required"><p>
					     <font>Email<p><p>
					     <input type="email" name="mail" onblur=isEmail(this.value) required="required">
              <p align="center"><input class="myButton" type="submit" value="送出" name="B1" onclick="datacheck()">　<input class="myButton" type="RESET" value="清除" name="B2">
			         </form>                      
              </div><br> 
        </section>

        <article  id="menu2">

           <audio  controls autoplay>
        <source src="music/1.mp3" type="audio/mpeg">
                </audio>
        	                 <br><textlayout1>會員登入</textlayout1><br><br>
			 <div class="classname">
               <form name="user" method="POST" action="check.jsp" class="join" align="center">
               <font>帳號<p>
               <input type="text" name="id" size="20"><p>
               <font>密碼<p>
               <input type="password" name="pwd" size="20" ><p>
              <p align="center"><input class="myButton" type="submit" value="送出" name="B1" onclick="datacheck()">　<input class="myButton" type="RESET" value="清除" name="B2">
               </form>           
              </div>
                
                      
                 <font size="5"><br></font>
                 <a href="#回頂端" id="GJteam" class="shake-slow">回最上層</a><br>  <!--至頂-->
                 <a href="" class="link1"><br>
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px"></a>

        </article>
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
						<input class="myButton" type="submit" value="搜尋" name="B1" onclick="datacheck()">
					</form>
				</li>
				<input class="css_button2" type="button" value="隱藏/顯示右側" name="Z" onclick="displayid('menu2')">
			</ul>
			
		</nav>
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
		<section id="menu">
		<br><textlayout4 class="shake-rotate shake-constant">歡迎</textlayout4><br><br>	
		<img src="images/088.gif" id="adv3">
		<img src="images/085.gif" id="adv5">
			<%
			sql="SELECT * FROM randad";
		    ResultSet rs=con.createStatement().executeQuery(sql);
		   rs.last();
           int n=rs.getRow();

           
           Random ran=new Random();
          
           int current_adid=ran.nextInt(n)+1;             
           sql="select * from randad where adid= " + current_adid;
           rs=con.createStatement().executeQuery(sql);
			String href="",src="",alt="";
           while (rs.next()) //只有一筆資料
           {
             out.println("<a href='http://"+rs.getString(4)+"'>");
             out.println("<img id='adv1' src='"+rs.getString(2)+"/"+rs.getString(3)+"' width='100%'");
             out.println(" alt='"+rs.getString(5)+"'></a>");
           }
		%>	
		
			</section>
			<article id="menu2">
			<br><textlayout5 class="shake-rotate shake-constant">光臨</textlayout5><br><br>
			<img src="images/086.gif" id="adv4">
			<%
           current_adid=ran.nextInt(n)+1;             
           sql="select * from randad where adid= " + current_adid;
           rs=con.createStatement().executeQuery(sql);
           while (rs.next()) //只有一筆資料
           {
             out.println("<a href='http://"+rs.getString(4)+"'>");
             out.println("<img id='adv2' src='"+rs.getString(2)+"/"+rs.getString(3)+"' width='100%'");
             out.println(" alt='"+rs.getString(5)+"'></a>");
           }
		%>
	<!--	        <audio controls autoplay>
        <source src="music/1.mp3" type="audio/mpeg" >
                </audio> -->
		<a href="#回頂端" id="GJteam" class="shake-slow">回最上層</a>  <!--至頂-->
		         <a href="" class="link1"><br>
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px"></a>
			</article>
		<%}%>
		<aside>


		            <div class="slider_container" >
          <div>
          <a href="goods.jsp"><img src="images/advertise1.jpg" width="1250" height="720"></a> 
          </div>
          <div>
          <a href="goods.jsp"><img src="images/advertise2.jpg" width="1250" height="720" ></a> 
          </div> 
          <div>
          <a href="goods.jsp"> <img src="images/advertise3.jpg" width="1250" height="720" ></a> 
          </div>
          <div>
          <a href="goods.jsp"><img src="images/advertise4.jpg" width="1250" height="720" ></a> 
          </div> 
          <div>
          <a href="goods.jsp"><img src="images/advertise5.jpg" width="1250" height="720" ></a> 
          </div>
		</aside>
		<footer>
			<b>熱門商品排行榜</b><br><br><br><br><br>
			<form action="bike.jsp" method="post">
				<div >
				<br>
				<img id="picture1" src="images/no_1.png">
				<img id="picture2" src="images/no_2.png">
				<img id="picture3" src="images/no_3.png">
				<table border="1">		
				<tr>
		<%
			//sql="SELECT * From products LIMIT 3";
			//ResultSet rs=con.createStatement().executeQuery(sql);
			//int total_goods=rs.getRow();
				sql="SELECT * FROM products ORDER BY hit DESC LIMIT 3";//LIMIT是限制傳回筆數
				ResultSet  rs=con.createStatement().executeQuery(sql);
				while(rs.next())
				{	
					int b=rs.getRow()-2;
				%>	
				
				<td><a href="goods.jsp"><c>點擊圖片了解更多</c><img id="picchange1" src="<%=rs.getString("img1")%>"></a><br><input id="site3" align="center"  class="myButton"  type="submit" name="product" value='<%=rs.getString("name")%>'></td>
				
				<%	
				}
			    
			%>
			    </tr></table><br><br><br>
				</div>
			</form>
		</footer>
  <!-- <div id="bottom-top"></div>-->
	</body>
</html>
