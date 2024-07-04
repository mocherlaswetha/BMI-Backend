<%@page import="java.sql.*"%>
<%
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String regno=request.getParameter("regno");
        String course=request.getParameter("course");
        String gender=request.getParameter("gender");
		int phone=Integer.parseInt(request.getParameter("phone"));
		String email=request.getParameter("email");
        int age=Integer.parseInt(request.getParameter("age"));
		String bloodgroup=request.getParameter("bloodgroup");
		double weight=Double.parseDouble(request.getParameter("weight"));
		double height=Double.parseDouble(request.getParameter("height"));
		double bmi;
		bmi=(weight/height/height)*10000;

try{

			Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","2569");
            PreparedStatement st=con.prepareStatement("insert into survey values(?,?,?,?,?,?,?,?,?,?,?,?)");
			st.setString(1,fname);
			st.setString(2,lname);
			st.setString(3,regno);
			st.setString(4,course);
            st.setString(5,gender);
			st.setInt(6,phone);
			st.setString(7,email);
			st.setInt(8,age);
            st.setString(9,bloodgroup);
			st.setDouble(10,weight);
			st.setDouble(11,height);
			st.setDouble(12,bmi);
			st.executeUpdate();      
			out.println("Survey succesful");
}
catch(Exception e)
{
out.print(e);
}
%>