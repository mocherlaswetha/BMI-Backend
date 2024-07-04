<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
//Read values from the login.html form
String regno=request.getParameter("regno");
String password=request.getParameter("password");




try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:ORCL.REGRESS.RDBMS.DEV.US.ORACLE.COM:1521:orcl","system","swetha123");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from Register");
	boolean result=false;
    while(rs.next())
	{
                 if(rs.getString(2).equals(regno) && rs.getString(4).equals(password))
                  {
					result=true;
					break;
				  }
				  
	}
	if(result)
	{
		response.sendRedirect("homepage.html");
	}
	else
	{
	         response.sendRedirect("login_error.html");
        
	}
}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
