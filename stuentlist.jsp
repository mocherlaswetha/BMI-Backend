<%@page import="java.sql.*"%>
<%
String course=request.getParameter("t1");
%>
<HTML>
       <HEAD>
       <TITLE>The View Of Database Table </TITLE>
       </HEAD>
       <BODY BGCOLOR="yellow">
       <H1>The View Of Database Table </H1>
<%

try{

			Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:ORCL.REGRESS.RDBMS.DEV.US.ORACLE.COM:1521:orcl","system","swetha123");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select *from survey");
%>



<table border="1">
<tr>
<th bgcolor="blue">fname</th>
<th bgcolor="blue">lname</th>
<th bgcolor="blue">regno</th>
<th bgcolor="blue">course</th>
<th bgcolor="blue">gender</th>
<th bgcolor="blue">phnno</th>
<th bgcolor="blue">email</th>
<th bgcolor="blue">age</th>
<th bgcolor="blue">blood_grp</th>
<th bgcolor="blue">weight</th>
<th bgcolor="blue">height</th>
<th bgcolor="blue">bmi</th>
</tr>
<%
                       while(rs.next()){
                     
                  
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
<td><%=rs.getString(10)%></td>
<td><%=rs.getString(11)%></td>
<td><%=rs.getString(12)%></td>

</tr>
</html>

<%
}
}

catch(Exception e)
{
out.print(e);
}
%>