<%@page import="java.sql.*"%>
<%@page import="databaseConnection.DbConnect"%>
<%
    DbConnect db = new DbConnect();
    String temp = request.getParameter("program");
    String program[] = temp.split(",");
    String erNo = (String) session.getAttribute("userName");
    int count = 0;
    for (int i = 0; i < program.length; i++) {
        String query = "insert into participate (enrollmentNo,programName) values('" + erNo + "','" + program[count] + "');";
        if (db.executeMyQuery(query)) {
            count++;
        }
    }
    if (count == program.length)
        out.print("Data inserted Succesfully...");
    else {
        out.print("Something went wrong,plese contact to organiser...");
    }
%>
