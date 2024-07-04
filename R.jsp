<%@page import="java.sql.*"%>
<%

		
		
		String name=request.getParameter("name");
		String regno=request.getParameter("regno");
		String email =request.getParameter("email");
		String password=request.getParameter("password");

try{

			Class.forName("oracle.jdbc.driver.OracleDriver");
                        Connection con=DriverManager.getConnection("jdbc:oracle:thin:ORCL.REGRESS.RDBMS.DEV.US.ORACLE.COM:1521:orcl","system","swetha123");
                       
                     PreparedStatement st=con.prepareStatement("insert into Register values(?,?,?,?)");
			st.setString(1,name);
			st.setString(2,regno);
			st.setString(3,email);
			st.setString(4,password);
			st.executeUpdate();
			response.sendRedirect("reg_success.html");
			

}
catch(Exception e)
{
out.print(e);
}
%>