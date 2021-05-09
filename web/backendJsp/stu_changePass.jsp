<%@page import="databaseConnection.DbConnect"%>
<%

    String oldPass = request.getParameter("old");
    String newPass = request.getParameter("new");
    String erNo = (String) session.getAttribute("userName");
    String tempQuery = "select * from student where enrollmentNo='" + erNo + "' and password='" + oldPass + "';";
    DbConnect db = new DbConnect();
    if (db.searchData(tempQuery)) {

        String query = "update student set password='" + newPass + "' where enrollmentNo='" + erNo + "';";
        if (db.executeMyQuery(query)) {
            out.print("Password Change Succesfully");
        } else {
            out.print("Something went wrong,Try Again...");
        }
    } else {
        out.print("Password is wrong");
    }


%>