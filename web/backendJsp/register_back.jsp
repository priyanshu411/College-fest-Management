<%@page import="databaseConnection.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register backend page</title>
    </head>
    <body>

        <%
            String name, er_no, password, contact;

            name = request.getParameter("name");
            er_no = request.getParameter("er_no");
            contact = request.getParameter("contact");
            password = request.getParameter("pass");
            DbConnect db = new DbConnect();

            String searchQuery = "select *from student where enrollmentNo='" + er_no + "'";
            if (db.searchData(searchQuery) == false) {
                String query = "insert into student(name,enrollmentNo,contactNo,password) values('" + name + "','" + er_no + "','" + contact + "','" + password + "');";
                if (db.executeMyQuery(query)) {
                    out.print("Registration Successful...");
                } else {
                    out.print("Somthing went wrong try again !");
                }
            } else {
                out.print("Enrollment Number already used !");
            }

        %>

    </body>
</html>
