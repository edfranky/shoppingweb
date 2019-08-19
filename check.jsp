<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%

  
if(request.getParameter("id") !=null && request.getParameter("pwd") != null){
      
    
   //sql = "SELECT * FROM register WHERE id='" +request.getParameter("id") + "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
    //ResultSet paperrs = con.createStatement().executeQuery(sql);
	sql = "SELECT * FROM register WHERE id=? AND pwd=? "  ;
	PreparedStatement pstmt = null;
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("id"));
	pstmt.setString(2,request.getParameter("pwd"));
    ResultSet paperrs = pstmt.executeQuery();
	
    if(paperrs.next()){            
        session.setAttribute("id",request.getParameter("id"));
        response.sendRedirect("index.jsp") ;
    }
    else
        out.print("<script>");
		out.print("alert('帳號密碼不符！請重新登入')");
		out.print("</script>");
		response.setHeader("refresh","0;URL=index.jsp") ;
}
%>