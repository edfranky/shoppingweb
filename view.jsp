<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>列出所有留言</title>
</head>
<body>
<a href="board.jsp">寫寫留言</a><p>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use mydb";
           con.createStatement().execute(sql);
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
           sql="select * from guestbook"; //算出共幾筆留言
           ResultSet rs=con.createStatement().executeQuery(sql);

           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total_content=rs.getRow();
           out.println("共"+total_content+"筆留言<p>");
           
           //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
           out.println("請選擇頁數");
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
           for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
              {
	           //out.print("<a href=\"view.jsp?page="+i+"\">"+i+"</a>&nbsp;"); //&nbsp;html的空白
			   out.print("<a href='view.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白
           }
           out.println("<p>");

           //讀取page變數
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "1";          
           int current_page=Integer.valueOf(page_string);
		   if(current_page!=1)
		   {
			   out.print("<a href='view.jsp?page="+1+"'>第一頁</a>&nbsp;");
			   out.print("<a href='view.jsp?page="+(current_page-1)+"'>上一頁</a>&nbsp;");
		   }
		   if(current_page!=page_num)
		   {
			   out.print("<a href='view.jsp?page="+(current_page+1)+"'>下一頁</a>&nbsp;");
				out.print("<a href='view.jsp?page="+page_num+"'>最後一頁</a>&nbsp;");			   
		   }
		   out.println("共"+page_num+"頁，目前在第"+current_page+"頁<p>");
		 out.println("<form name='f' action='view.jsp' method='get'>跳至<input type='text' size='3' name='page' value=1>頁 <a href='view.jsp?page="+current_page+"'><input class='button'type='submit' value='送出'></a>");  
		  out.println("<hr>");

		   out.print("<br>");
	       //計算開始記錄位置   
//Step 5: 顯示結果 
           int start_record=(current_page-1)*5;
           //遞減排序, 讓最新的資料排在最前面
           sql="select * from guestbook order by no desc limit ";
           sql+=start_record+",5";

// current_page... select * from guestbook order by no desc limit
//      current_page=1: select * from guestbook order by no desc limit 0, 5
//      current_page=2: select * from guestbook order by no desc limit 5, 5
//      current_page=3: select * from guestbook order by no desc limit 10, 5
           rs=con.createStatement().executeQuery(sql);
//  逐筆顯示, 直到沒有資料(最多還是5筆)
           while(rs.next())
                {
                 out.println("留言主題:"+rs.getString(4)+"<br>");
                 out.println("訪客姓名:"+rs.getString(2)+"<br>");
                 out.println("留言內容:"+rs.getString(5)+"<br>");
                 out.println("留言時間:"+rs.getString(6)+"<br><hr>");
				 out.println("留言者IP:"+rs.getString("ip")+"<br><hr>");
          }

//Step 6: 關閉連線
          con.close();
      }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤");
		   
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤");
}
%>
</body>
</html>
