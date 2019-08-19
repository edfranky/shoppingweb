<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%@page pageEncoding="UTF-8"%>
<%
if(session.getAttribute("id")!=null)
{
	sql = "SELECT * FROM cart WHERE id='" +(String)session.getAttribute("id")+"'";
	ResultSet rs =con.createStatement().executeQuery(sql);
	if(rs.next())
	{
		sql = "Delete FROM cart WHERE id='" +(String)session.getAttribute("id")+"'";
    con.createStatement().execute(sql);
	
	
	}
	response.sendRedirect("shoppingcart.jsp");
}
else
{
	%>
	<SCRIPT language=javascript >
function go()
{
 window.history.go(-1);
}
setTimeout("go()",0);
</SCRIPT>
<%
}
%>