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
//Step 4: ���� SQL ���O                       
                    sql = "UPDATE register SET name = '"+request.getParameter("username")+"' WHERE id = '"+request.getParameter("id")+"' ";
					con.createStatement().executeUpdate(sql); //�i�^�ǲ��ʼ�
					sql = "UPDATE register SET pwd = '"+request.getParameter("pwd")+"' WHERE id = '"+request.getParameter("id")+"' ";
					con.createStatement().executeUpdate(sql);
					sql = "UPDATE register SET tel = '"+request.getParameter("tel")+"' WHERE id = '"+request.getParameter("id")+"' ";
					int no=con.createStatement().executeUpdate(sql);
					if (no>0)
					{
						out.print("<script>");
						out.print("alert('�ק令�\')");
						out.print("</script>");
						response.setHeader("refresh","0;URL=userdatachange.jsp") ;
						
					}
					else
 					{
						out.print("<script>");
						out.print("alert('�ק異��')");
						out.print("</script>");
						response.setHeader("refresh","0;URL=userdatachange.jsp") ;
					}
       %>
    </body>
</html>
