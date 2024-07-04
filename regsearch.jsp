<%@page import="java.sql.*"%>
<%
String regno=request.getParameter("regno");
try{

			Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:ORCL.REGRESS.RDBMS.DEV.US.ORACLE.COM:1521:orcl","system","swetha123");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select *from survey");
                       while(rs.next()){
                     if(rs.getString(3).equals(regno))
                  {
%>
<table border=1>
 <tr><td bgcolor="red">Firstname</td><td><%=rs.getString(1)%></td></tr>
<tr><td bgcolor="red">Lastname</td><td><%=rs.getString(2)%></td></tr>
<tr><td bgcolor="red">Regno</td><td><%=rs.getString(3)%></td></tr>
<tr><td bgcolor="red">Course</td><td><%=rs.getString(4)%></td></tr>
<tr><td bgcolor="red">Gender</td><td><%=rs.getString(5)%></td></tr>
<tr><td bgcolor="red">Phone number</td><td><%=rs.getString(6)%></td></tr>
<tr><td bgcolor="red">email</td><td><%=rs.getString(7)%></td></tr>
<tr><td bgcolor="red">Age</td><td><%=rs.getInt(8)%></td></tr>
<tr><td bgcolor="red">Bloodgroup</td><td><%=rs.getString(9)%></td></tr>
<tr><td bgcolor="red">Weight</td><td><%=rs.getDouble(10)%></td></tr>
<tr><td bgcolor="red">Height</td><td><%=rs.getDouble(11)%></td></tr>
<tr><td bgcolor="red">Bmi</td><td><%=rs.getDouble(12)%></td></tr>
</table>
<%
}
}
}
catch(Exception e)
{
out.print(e);
}
%>