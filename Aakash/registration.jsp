<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>


<%
String userName = request.getParameter("username");
String password = request.getParameter("password");
String firstName = request.getParameter("firstname");
String lastName = request.getParameter("lastname");
String email = request.getParameter("email");
try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/grace_college","root","");
Statement st = con.createStatement();
int i = st.executeUpdate("insert into user(FIRST_NAME, LAST_NAME, EMAIL, USER_NAME, PASSWORD) values ('"
                    + firstName
                    + "','"
                    + lastName
                    + "','"
                    + email
                    + "','"
                    + userName
                    + "','"
                    + password
                    + "')");
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("index.html");
    }
   }
    catch (SQLException sqle)
    { out.println("<p> Error opening JDBC, cause:</p> <b> " + sqle + "</b>"); }

    catch(ClassNotFoundException cnfe)
    { out.println("<p> Error opening JDBC, cause:</p> <b>" + cnfe + "</b>"); }
%>