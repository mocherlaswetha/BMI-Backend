<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
//Read values from the login.html form
String regno=request.getParameter("regno");
String new_pwd=request.getParameter("password");
String confrim=request.getParameter("confrim");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:ORCL.REGRESS.RDBMS.DEV.US.ORACLE.COM:1521:orcl","system","swetha123");
	PreparedStatement ps=con.prepareStatement("Update register set password=? where regno=?");	
	if(new_pwd.equals(confrim))
    {
		
		ps.setString(1,new_pwd);
		ps.setString(2,regno);
		ps.executeUpdate();
               out.println("updated ");

                response.sendRedirect("pwd_update.html");

	}
	else{
            out.println("<script type=\"text/javascript\">");
            out.println("alert('confrim message not matches with password');");
            out.println("window.location.href = \"f.html\";");
            out.println("</script>");
}
}
catch(Exception e)
{
		out.println(e);
}
%>