<%@page import="java.sql.*"%>
<%@page import="databaseConnection.DbConnect"%>
<%
    String prgName=request.getParameter("prgname");
    String erNo = (String) session.getAttribute("userName");
    DbConnect db = new DbConnect();
    String query = "delete from participate where enrollmentNo='"+erNo+"' and programName='"+prgName+"';";
    if(db.executeMyQuery(query))
    {
        out.print("Deleted Sucessfuly..");
    }
    else{
        out.print("Something went wrong,Try again !");
    }

%>