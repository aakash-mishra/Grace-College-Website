<%
    if ((session.getAttribute("username") == null)
    || (session.getAttribute("username") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login to continue</a>
<%
} else {
%>
Welcome <%=session.getAttribute("username")%>
<a href="logout.jsp">Log Out</a>

<%
    }
%>

<jsp:include page="index.html"></jsp:include>