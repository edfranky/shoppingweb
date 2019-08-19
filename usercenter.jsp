<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<%@include file="config.jsp" %>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>會員中心</title>
	<link rel=stylesheet type="text/css" href="css/usercenter.css">
	<script> 
	 function displayid(id){            /*展開收起*/
var erv = document.getElementById(id);
if(erv.style.display=="none"){
erv.style.display="";
}
else{
erv.style.display="none";
}
}
</script>
</head>
<body>
	 <% if(session.getAttribute("id")==null) {%>
	<a name="回頂端"></a>
	    
		<header>
		</header>
		<section id="menu">
        <br><textlayout3>快速註冊</textlayout3><br><br>
	              <div class="classname">
	             <form name="user" method="POST" action="register.jsp" class="join" align="center">
					     <font>姓名/暱稱<p>
					     <input type="text" name="username" size="20" required="required"><p>
				       <font>設定帳號<p>
					     <input type="text" name="id" size="20" required="required"><p>
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
                
                      
                 <font size="5"><br></font><a href="" class="link1">
             <!--    <textlayout2>會員中心</textlayout2><br>
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px"></a>  -->
                 <a href="#回頂端" id="GJteam" class="shake-slow">回最上層</a>  <!--至頂-->
                                                                    <br><br><br><br>
                 <a href="" class="link1" id="firesite1"><br>
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
						<input class="myButton" type="submit" value="搜尋" name="B1" onclick="datacheck()" >
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
		    	 <a href="#回頂端" id="GJteam" class="shake-slow">回最上層</a>  <!--至頂-->
		    	 <br><br>
                 <a href="" class="link1" id="firesite2"><br>
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
        	 <img src="images/user1.jpg" alt="" class="userpic1">
        </aside>
        <footer> 
        <center class="center" >
		    
	        <a href="userdatachange.jsp" class="mem1"><font>|</font><font>更改會員資料</font></a>
	        <a href="usercenter.jsp" class="mem2"><font>| 訂購紀錄</font><font>|</font></a><img src="images/left.png" alt="" class="img1">
			<font class="mem1"><center>✽ 您的購物紀錄 ✽</center></font>
			<table align="center">
				<tr>
					<td>商品名稱</td>
					<td>數量</td>
					<td>總價</td>
					<td>收件人</td>
					<td>聯絡電話</td>
					<td>收件地址</td>
					<td>付款方式</td>
				<tr>
			<%
				sql="SELECT * FROM orders WHERE id='"+(String)session.getAttribute("id")+"'";
				ResultSet rs=con.createStatement().executeQuery(sql);
				String productname="",num="",total="",name="",phone="",address="",payment="";
				while(rs.next())
				{
					productname=rs.getString("productname");
					num=rs.getString("num");
					total=rs.getString("total");
					name=rs.getString("name");
					phone=rs.getString("phone");
					address=rs.getString("address");
					payment=rs.getString("payment");
			%>
				<tr>
					<td><%=productname%></td>
					<td><%=num%></td>
					<td><%=total%></td>
					<td><%=name%></td>
					<td><%=phone%></td>
					<td><%=address%></td>
					<td><%=payment%></td>
				<tr>
			<%
				}
			%>
			</table>
		</center>

                 <font class="font1" id="up"><br><center>♠ 如果沒有顯示，則代表您尚未購買任何物品! ♠</center></font>
        </footer>







</body>
</html>