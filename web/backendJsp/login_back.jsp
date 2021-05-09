<%@page import="java.sql.*"%>
<%@page import="databaseConnection.DbConnect"%>
<%
    DbConnect db = new DbConnect();
    Connection conn = db.openConnection();
    String query;
    String username = request.getParameter("username");
    String pass = request.getParameter("pass");
    String userType = request.getParameter("userType");
    if (userType.equals("admin")) {
        query = "select * from admin where username='" + username + "'and password='" + pass + "' ;";
    } else {
        query = "select * from student where enrollmentNo='" + username + "'and password='" + pass + "' ;";
    }
    ResultSet data = db.getData(conn, query);
    if (data.next()) {
        String name = data.getString("name");
        session.setAttribute("userName",username);
        session.setAttribute("user", name);
        session.setAttribute("type", userType);
        conn.close();
        if (userType.equals("student")) {
            response.sendRedirect("../studentProfile.jsp");
        } else {
            response.sendRedirect("../adminProfile.jsp");
        }
    } else {
        conn.close();
        session.setAttribute("message", "invalid Detail !");
        response.sendRedirect("../login.jsp");
//                out.print("Enrollment No or Password wrong !");
    }
%>

