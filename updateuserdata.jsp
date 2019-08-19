<%@page contentType="text/html" pageEncoding="Big5"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<%@include file="config.jsp" %>
<html>
    <head>
        <title>JSP UPDATE</title>
    </head>
    <body>      
	   <%  		
//Step 4: 執行 SQL 指令                       
                    sql = "UPDATE register SET name = '"+request.getParameter("username")+"' WHERE id = '"+request.getParameter("id")+"' ";
					con.createStatement().executeUpdate(sql); //可回傳異動數
					sql = "UPDATE register SET pwd = '"+request.getParameter("pwd")+"' WHERE id = '"+request.getParameter("id")+"' ";
					con.createStatement().executeUpdate(sql);
					sql = "UPDATE register SET tel = '"+request.getParameter("tel")+"' WHERE id = '"+request.getParameter("id")+"' ";
					int no=con.createStatement().executeUpdate(sql);
					if (no>0)
					{
						out.print("<script>");
						out.print("alert('修改成功')");
						out.print("</script>");
						response.setHeader("refresh","0;URL=userdatachange.jsp") ;
						
					}
					else
 					{
						out.print("<script>");
						out.print("alert('修改失敗')");
						out.print("</script>");
						response.setHeader("refresh","0;URL=userdatachange.jsp") ;
					}
       %>
    </body>
</html>
