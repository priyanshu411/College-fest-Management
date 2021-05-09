package databaseConnection;

import java.sql.*;

public class DbConnect {

    //open the connection
    public Connection openConnection() {
        String connectionUrl = "jdbc:sqlserver://LAPTOP-HCD08HR8;databaseName=College_fest;IntegratedSecurity=true";
        Connection con = null;

        try {
            con = DriverManager.getConnection(connectionUrl);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return (con);
    }

    // execute Query
    public boolean executeMyQuery(String query) {
        // objects 
        Statement st;
        Connection con;
        try {
            con = openConnection();
            if (con != null) {
                st = con.createStatement();
                int no = st.executeUpdate(query);
                if (no > 0) {
                    st.close();
                    con.close();
                    return (true);

                } else {
                    st.close();
                    con.close();
                    return (false);
                }
            }
            return false;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    //FOR RESULT SET (SELECT QUERY)
    public boolean searchData(String query) {
        // objects 
        Statement st;
        Connection con;
        ResultSet rs;
        try {
            con = openConnection();
            if (con != null) {
                st = con.createStatement();
                rs = st.executeQuery(query);
                if (rs.next()) {
                    st.close();
                    con.close();
                    return (true);

                } else {
                    st.close();
                    con.close();
                    return (false);
                }
            }
            return false;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    //for get data(select query)
    public ResultSet getData(Connection con, String query) {
        // objects 
        Statement st;
        ResultSet rs = null;
        try {
            if (con != null) {
                st = con.createStatement();
                rs = st.executeQuery(query);
            }
            return (rs);

        } catch (SQLException ex) {
            ex.printStackTrace();
            return (rs);
        }
    }

}
