<%@page import="databaseConnection.DbConnect"%>
<%

    String oldPass = request.getParameter("old");
    String newPass = request.getParameter("new");
    String username = (String) session.getAttribute("userName");
    String tempQuery = "select * from admin where username='" + username + "' and password='" + oldPass + "';";
    DbConnect db = new DbConnect();
    if (db.searchData(tempQuery)) {

        String query = "update admin set password='" + newPass + "' where username='" + username + "';";
        if (db.executeMyQuery(query)) {
            out.print("Password Change Succesfully");
        } else {
            out.print("Something went wrong,Try Again...");
        }
    } else {
        out.print("Password is wrong");
    }


%>