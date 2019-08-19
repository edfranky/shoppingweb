<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%@page pageEncoding="UTF-8"%>
<%
if(session.getAttribute("id")!=null)
{		
		request.setCharacterEncoding("UTF-8");
		sql="SELECT * From cart where id='"+(String)session.getAttribute("id")+"'";
		ResultSet rs=con.createStatement().executeQuery(sql);
		String name="",num="",price="",storage="";
		
		while(rs.next())
		{
			name=rs.getString("name");
			num=rs.getString("num");//購物車的數量
			price=rs.getString("price");
		}
		sql="SELECT * FROM products WHERE name='"+name+"'";
		rs=con.createStatement().executeQuery(sql);
		while(rs.next())
		{
			storage=rs.getString("storage");//庫存
			int istorage=Integer.parseInt(storage);
			int inum=Integer.parseInt(num);	
			int left=istorage-inum;
			sql="UPDATE products SET storage='"+Integer.toString(left)+"' WHERE name='"+name+"'";
			con.createStatement().execute(sql);
		}
		sql="SELECT * FROM cart WHERE id='"+(String)session.getAttribute("id")+"'";
		rs=con.createStatement().executeQuery(sql);

		String rname=request.getParameter("rname");
		String rphone=request.getParameter("rphone");
		String raddress=request.getParameter("raddress");
		String payment1[]=request.getParameterValues("payment");
		String payment="",sql2="";
		for(int i=0;i<payment1.length;i++)
		{
			payment=payment1[i];
		}
		while(rs.next())
		{
			name=rs.getString("name");
			num=rs.getString("num");//購物車的數量
			price=rs.getString("price");
			sql2="INSERT orders (productname,num,total,name,phone,address,payment,id) VALUES ('"+name+"','"+num+"','"+price+"','"+rname+"','"+rphone+"','"+raddress+"','"+payment+"','"+session.getAttribute("id")+"')";
			con.createStatement().execute(sql2);
		}
		sql = "Delete FROM cart WHERE id='" +(String)session.getAttribute("id")+"'";
		con.createStatement().execute(sql);
		out.print("<script>");
		out.print("alert('訂單已送出')");
		out.print("</script>");
		response.setHeader("refresh","0;URL=index.jsp") ;
}
else
{
	out.print("<script>");
		out.print("alert('尚未登入')");
		out.print("</script>");
		response.setHeader("refresh","0;URL=index.jsp") ;
}
	%>
	
	
