<%@page import="databaseConnection.DbConnect"%>
<%

    String eventName = request.getParameter("event");
    String date = request.getParameter("date");
    String adminUserName = (String) session.getAttribute("userName");
    String tempQuery = "select * from event where eventName='" + eventName + "';";
    String query1 = "insert into event (eventName,eventDate) values ('" + eventName + "','" + date + "')";
    String query2 = "insert into manageEvent (username,EventName) values('" + adminUserName + "','" + eventName + "');";
    DbConnect db = new DbConnect();
    if (db.searchData(tempQuery)) {
        out.print("Event Already Exist");
    } else {
        boolean flag1=db.executeMyQuery(query1);
        boolean flag2=db.executeMyQuery(query2);
        if (flag1 && flag2) {
            out.print("Event Added Successfully");
        } else {
            out.print("something went wrong ,try again !");
        }
    }

%>