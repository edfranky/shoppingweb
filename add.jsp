<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>add</title>
</head>
<body>
<%
if(session.getAttribute("id")==null) 
{
	out.print("<script>");
	out.print("alert('您尚未登入會員')");
	out.print("</script>");
	response.setHeader("refresh","0;URL=index.jsp") ;
}
else
{
	try {
	//Step 1: 載入資料庫驅動程式 
		Class.forName("com.mysql.jdbc.Driver");
		try {
	//Step 2: 建立連線 	
			String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
			String sql="";
			Connection con=DriverManager.getConnection(url,"root","1234");
			if(con.isClosed())
			   out.println("連線建立失敗");
			else {
	//Step 3: 選擇資料庫   
			   sql="use mydb";
			   con.createStatement().execute(sql);
			   //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
			   String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	//           String new_name=request.getParameter("name");
			   String new_mail=request.getParameter("mail");
			   String new_subject=new String(request.getParameter("subject").getBytes("ISO-8859-1"),"UTF-8");
			   String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
			   java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
			   String new_ip=request.getParameter("IP");
			   String new_grade[]=request.getParameterValues("grade");
			   String abc="";
			   for(int i=0;i<new_grade.length;i++)
			   {
				   abc=new_grade[i];
			   }
	//Step 4: 執行 SQL 指令	
			   sql="insert guestbook (name, grade, subject, content, putdate,ip) ";
			   sql+="value ('" + new_name + "', ";
			   sql+="'"+abc+"\', ";
			   sql+="'"+new_subject+"', ";
			   sql+="'"+new_content+"', ";   
			   sql+="'"+new_date+"',";  
			   sql+="'"+new_ip+"')";

			   con.createStatement().execute(sql);
	//Step 6: 關閉連線
			   con.close();
	//Step 5: 顯示結果 
			  //直接顯示最新的資料
			   response.sendRedirect("feeback.jsp?page=1");
		   }
		}
		catch (SQLException sExec) {
			   out.println("SQL錯誤"+sExec.toString());
		}
	}
	catch (ClassNotFoundException err) {
	   out.println("class錯誤"+err.toString());
	}
}
%>
</body>
</html>
