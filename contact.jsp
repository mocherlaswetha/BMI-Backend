<%@page import="java.sql.*"%>
<%
		String regno=request.getParameter("regno");
		String name=request.getParameter("name");
		String subject=request.getParameter("subject");
       
try{

			Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:ORCL.REGRESS.RDBMS.DEV.US.ORACLE.COM:1521:orcl","system","swetha123");
            PreparedStatement st=con.prepareStatement("insert into contactus values(?,?,?)");
			st.setString(1,regno);
			st.setString(2,name);
			st.setString(3,subject);
			st.executeUpdate();      
			response.sendRedirect("thanku.html");
}
catch(Exception e)
{
out.print(e);
}
%>