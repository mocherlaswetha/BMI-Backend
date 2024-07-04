<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
//Read values from the login.html form
String regno=request.getParameter("regno");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:ORCL.REGRESS.RDBMS.DEV.US.ORACLE.COM:1521:orcl","system","swetha123");
        
          PreparedStatement ps = con.prepareStatement("delete from survey where regno=?");
           ps.setString(1,regno);
	ps.executeUpdate();
               out.println("deleted");
		
	
          
}
catch(Exception e)
{
		out.println(e);
}
%>