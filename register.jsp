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
                    //SQL�y�k�A�o�̻ݭn�γ�޸�, 59���L��޸����i
                    boolean no= con.createStatement().execute(sql); //���榨�\�Ǧ^false
                    //int no=con.createStatement().executeUpdate(sql); //�i�^�ǲ��ʼ�
                    if (!no)
//Step 5: ��ܵ��G 	{
						out.print("<script>");
						out.print("alert('���U���\�I')");
						out.print("</script>");
						session.setAttribute("id",request.getParameter("id"));
						response.setHeader("refresh","0;URL=index.jsp") ;
							}                      
				catch(SQLException s)
				{
					out.print("<script>");
					out.print("alert('�b�������o�I')");
					out.print("</script>");
					response.setHeader("refresh","0;URL=index.jsp") ;
					
				}
							   
 %>
    </body>
</html>