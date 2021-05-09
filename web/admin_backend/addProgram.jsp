<%@page import="databaseConnection.DbConnect"%>
<%
    String event=request.getParameter("event");
    String program=request.getParameter("PrgName");
    String tempquery="select * from program where programName='"+program+"';";
    String adminUserName = (String) session.getAttribute("userName");
   DbConnect db = new DbConnect();
   if(db.searchData(tempquery))
   {
      out.print("Program already exist"); 
   }
   else{
       boolean flag1=false,flag2=false;
      
       String query1="insert into program (programName,eventName) values('"+program+"','"+event+"');";
       String query2="insert into manageProgram (username,programName) values('"+adminUserName+"','"+program+"');";
     
       //first execute query1 because we create forign key of username & programName in manageprogram table
       flag1 =db.executeMyQuery(query1);  
       flag2 =db.executeMyQuery(query2);
      
       
       if(flag1 && flag2)
       {
           out.print("Program Add uccessfully");
       }
       else{
           out.print("something went wrong ,try again !");
       }
   }
%>