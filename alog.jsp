<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
//Read values from the login.html form
String admin=request.getParameter("admin");
String password=request.getParameter("password");




try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:ORCL.REGRESS.RDBMS.DEV.US.ORACLE.COM:1521:orcl","system","swetha123");
	
	boolean result=false;
   
                 if(admin.equals("lbrce") && password.equals("lbrce123"))
                  {
					result=true;
					
				  }
				  
	
	if(result)
	{
		response.sendRedirect("admin.html");
	}
	else
	{

           
                   out.println("<script type=\"text/javascript\">");
            out.println("alert('login failed');");
            out.println("window.location.href = \"admin_login.html\";");
            out.println("</script>");


	
	}
}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
