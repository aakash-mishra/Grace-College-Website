<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>


<%
 String userName = request.getParameter("username");
 String password = request.getParameter("password");
 Class.forName("com.mysql.jdbc.Driver");
 Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/grace_college","root","");
 Statement st = con.createStatement();
 ResultSet rs;
 rs = st.executeQuery("select * from user where USER_NAME='"
    + userName + "' and PASSWORD='" + password + "'");
 if (rs.next()) {
 session.setAttribute("username", userName);
 response.sendRedirect("success.jsp");
 }
 else
 {
 out.println("Invalid username or password <a href='index.html'>try again</a>");
    }
%>

</html>