<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%@page pageEncoding="UTF-8"%>
<%
try
{
	if(session.getAttribute("id")==null)
	{
		out.print("<script>");
		out.print("alert('您還未登入喔！')");
		out.print("</script>");
		response.setHeader("refresh","0;URL=index.jsp") ;
	}
	else
	{
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String amount[]=request.getParameterValues("quantity");
		String price=request.getParameter("price");
		String id=request.getParameter("id");
		String num="";
		for(int i=0;i<amount.length;i++)
		{
			num=amount[i];
		}

		sql="insert cart(name,num,price,id) values('"+name+"','"+num+"','"+request.getParameter("price")+"','"+id+"')";
		int rec = con.createStatement().executeUpdate(sql);
		if(rec>0)
		{
			out.print("<script>");
			out.print("alert('成功加入購物車')");
			out.print("</script>");
			response.setHeader("refresh","0;URL=index.jsp") ;
		}
	
	}
}

catch(SQLException s)
{
	out.print(s.toString());
}
	
%>