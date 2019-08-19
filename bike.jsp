<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<%@include file="config.jsp" %>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>bike</title>
   <link rel=stylesheet type="text/css" href="css/bike.css">
   <script src="js/bike.js"></script>
 
</head>
<body>
<a name="回頂端"></a>
	 <% if(session.getAttribute("id")==null) {%>
	
	    
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
              <!--   <textlayout2>會員中心</textlayout2><br>
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px"></a> -->
                 <a href="#回頂端" id="GJteam" class="shake-slow">回最上層</a>  <!--至頂-->
                 <br><br><br><br>
                 <a href="" class="link1" id="firesite1"><br><br>
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
		<%}
			else
			{
		%>
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
             out.println("<img  id='adv1' src='"+rs.getString(2)+"/"+rs.getString(3)+"' width='100%'");
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
		         <a href="" class="link1" id="firesite2"><br><br>
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px">
                 <img src="images/fire.png" height="20px" width="20px"></a>
			</article>
			<%
			}
				request.setCharacterEncoding("UTF-8");
				String name=request.getParameter("product");
				sql="SELECT * From products WHERE name='"+name+"'";
				ResultSet rs=con.createStatement().executeQuery(sql);
				String weight="",pic2="",pic3="",cc="",attribute1="",attribute2="",storage="",money="",youtube="",introduce="";
				int num=0;
				int price=0;
				int hit=0;
				if(rs.next())
				{
					
					weight=rs.getString("weight");
					pic2=rs.getString("img2");
					pic3=rs.getString("img3");
					cc=rs.getString("cc");
					attribute1=rs.getString("attribute1");
					attribute2=rs.getString("attribute2");
					storage=rs.getString("storage");
					money=rs.getString("price");
					num=Integer.parseInt(storage);
					price=Integer.parseInt(money);
					youtube=rs.getString("youtube");
					hit=rs.getInt("hit");
					introduce=rs.getString("introduce");
				}
				hit++;
				sql="UPDATE products SET hit='"+hit+"' WHERE name='"+name+"'";
				con.createStatement().execute(sql);
			%>
		


            <div id="show_bigger_pic">
                <span class="cover"></span>
                <span class="float_span"></span>
                 <div class="small_pic_div" id="getvdo">
                 <img src="<%=pic2%>"  height="240"  width="240">
                 </div>
                 <div class="big_pic_div">
                 <img src="<%=pic3%>"  alt="" />
                </div> 
             </div>  

            <aside>    
            <h3 class="title1"><%=name%></h3>
            <HR color="black" size="4">
            <br><br><br><br><br><br><br><br><br><br><br><br>
            </aside>           
            <footer>
            <h2>商品介紹</h2>            
            <HR color="black" size="5" >

            <table id="wid" align="center"><tr><td><%=introduce%></td></tr></table>
            <br><br>
                       <!--<a href="#"><img src="images/marketcar.jpg"  width="50" height="50"></a>-->
            <h2>詳細規格</h2>
            <HR color="black" size="5" >
             <div class="classname">
               <form name="user" method="POST" action="" class="join" align="center">
               <table border=1 align="center">                                             
                <tr><th> 車 輛 重 量</th><td> <%=weight%></td></tr>
                <tr><th> 排 氣 量</th><td> <%=cc%>(c.c.)</td></tr>
                <tr><th>規格1 </th><td> <%=attribute1%></td></tr>
                <tr><th> 規格2</th><td> <%=attribute2%></td></tr>  
				<%
					if(Integer.parseInt(storage)>0)
					{
				%>
				<tr><th> 庫存數 </th><td><%=storage%></td></tr>
				<%
					}else
					{
				%>
				<tr><th> 庫存數 </th><td>已無庫存</td></tr>
					<%}%>
				<tr><th> 單價 </th><td><%=price%></td></tr> 					
                </table>
				</form>
                <form method="post" action="addshoppingcar.jsp">
				  選擇數量<br>
				  <select size="1" name="quantity">
				<%
					for(int i=1;i<=num;i++)
					{
						out.print("<option value="+i+">");
						out.print(i);
					}
				 %>
                </select><br><br>
				
				
				
					<input type="hidden" name="name" value=<%=name%>>
					<input type="hidden" name="price" value=<%=price%>>
					<input type="hidden" name="id" value=<%=session.getAttribute("id")%>>
					<HR color="black" size="5" ><br>
				<%
					if(Integer.parseInt(storage)>0)
					{
				%>
					<input class="myButton" type="submit" value="加入購物車" name="B1" onclick="datacheck()">
				<%
					}else
					{
				%>
					<input type="text" value="目前沒有存貨喔！" name="B1" onclick="datacheck()"><!--美化?-->
				<%		
					}
				%>
				</form>
               <br>
               <h2 align="left">影音介紹</h2>
               <HR color="black" size="5" >    				
               <i>
				<input  type="button" class="myButton"  value="影音展示"  onclick="vdo()"><br>
				</i>       
              </div><br>
             <div class="video" id="changevideo">

              </div>
              <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>		  
               <h2 align="left">商品評論</h2>
               <HR color="black" size="5" >
			<div>
			   <form name="form1" method="post" action="add.jsp" id="goods" >			   
			   
			   <%if(session.getAttribute("id")!=null){%>
				帳號：<br><input type="text" name="name" value="<%=session.getAttribute("id")%>" ><br>
			   <%}else{%>
				帳號：<br><input type="text" name="name"><br>
			   <%}%>			   

				產品名稱：<br><input type="text" name="subject" value="<%=name%>"><br>
				評論內容：<br><textarea cols="22" rows=5 name="content"></textarea><br><br>
						<n style="position:relative;left:17%;">評分:
						<select size="1" name="grade"></n>
						 <option>1</option>
						 <option>2</option>
						 <option>3</option>
						 <option>4</option>
						 <option>5</option>
						</select><br>
						<input type="hidden" name="pname" value="<%=name%>">
				 <input type="submit" name="Submit" value="送出" class="myButton"  style="position:relative;right:10%;">
				 <input type="Reset" name="Reset" value="重新填寫" class="myButton" style="position:relative;right:10%;">
				 <%
					String IP = request.getRemoteAddr();
					out.print("<input type='hidden' name='IP' value='"+IP+"'>");
				%>
				</div>
				</form>

			   

            </footer>
            </footer>
</body>
<script>
	function vdo() {
      var  o=document.getElementById("getvdo").innerHTML;
      if(o.substr(41,1)=="2")
      {          
document.getElementById("changevideo").innerHTML='<embed src="https://www.youtube.com/v/EUyPEpV17TQ"  type="application/x-shockwave-flash"  wmode="transparent" width="700" height="400"></embed>'
}
  else    if(o.substr(41,1)=="3")
      {   
document.getElementById("changevideo").innerHTML='<embed src="https://www.youtube.com/v/pfjcLUkt0EQ"  type="application/x-shockwave-flash"  wmode="transparent" width="700" height="400"></embed>'
}
  else    if(o.substr(41,1)=="4")
      {           
document.getElementById("changevideo").innerHTML='<embed src="http://www.youtube.com/v/tACR5RMHne0"  type="application/x-shockwave-flash"  wmode="transparent" width="700" height="400"></embed>'
}
  else    if(o.substr(41,1)=="5")
      {          
document.getElementById("changevideo").innerHTML='<embed src="https://www.youtube.com/v/R_mDooU_t14"  type="application/x-shockwave-flash"  wmode="transparent" width="700" height="400"></embed>'
}
  else    if(o.substr(41,1)=="6")
      {         
document.getElementById("changevideo").innerHTML='<embed src="https://www.youtube.com/v/cFxCpbCpgio"  type="application/x-shockwave-flash"  wmode="transparent" width="700" height="400"></embed>'
}
  else    if(o.substr(41,1)=="1")
      {        
document.getElementById("changevideo").innerHTML='<embed src="https://www.youtube.com/v/wr9JQYTRVps"  type="application/x-shockwave-flash"  wmode="transparent" width="700" height="400"></embed>'
}


}
</script>
</html>              







