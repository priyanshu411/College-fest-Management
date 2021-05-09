<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //remove values from session
    session.removeAttribute("userName");
    session.removeAttribute("user");
    session.removeAttribute("type");
    session.removeAttribute("message");
    //after logout
    response.sendRedirect("../login.jsp");
%>