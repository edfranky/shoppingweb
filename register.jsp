<%@page contentType="text/html" pageEncoding="Big5"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<%@include file="config.jsp" %>
<html>
    <head>
        <title>JSP INSERT</title>
    </head>
    <body>
<%  		
			try{
					request.setCharacterEncoding("UTF-8");      
                    sql = "INSERT register(name,id,pwd,tel,email) " +
                                 "VALUES ('"+request.getParameter("username")+"','"+request.getParameter("id")+"','"+request.getParameter("pwd")+"','"+request.getParameter("tel")+"','"+request.getParameter("mail")+"')";
                    //SQL語法，這裡需要用單引號, 59有無單引號都可
                    boolean no= con.createStatement().execute(sql); //執行成功傳回false
                    //int no=con.createStatement().executeUpdate(sql); //可回傳異動數
                    if (!no)
//Step 5: 顯示結果 	{
						out.print("<script>");
						out.print("alert('註冊成功！')");
						out.print("</script>");
						session.setAttribute("id",request.getParameter("id"));
						response.setHeader("refresh","0;URL=index.jsp") ;
							}                      
				catch(SQLException s)
				{
					out.print("<script>");
					out.print("alert('帳號重複囉！')");
					out.print("</script>");
					response.setHeader("refresh","0;URL=index.jsp") ;
					
				}
							   
 %>
    </body>
</html>