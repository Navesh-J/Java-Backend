//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
import java.sql.*;
public class Main {
    public static void main(String[] args) {
        //import package
        //load and register
        //create connection
        //create statement
        //execute statement
        //process results
        //close

        String uname="yash",pass="mota",tech="Python";
        int uid = 104;

        String url = "jdbc:mysql://localhost:3306/users";
        String user = "root";
        String password = "navesh";
        String sqlView = "select *  from login";
        String sqlInsert = "insert into login values(?,?,?,?)";

        try {
//            Class.forName("org.mysql.cj.jdbc.Driver");    //optional
            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connection successful!");
//            Statement st = conn.createStatement();
//            ResultSet rs = st.executeQuery(sql);
            PreparedStatement ps = conn.prepareStatement(sqlInsert);
            ps.setString(1,uname);
            ps.setString(2,pass);
            ps.setInt(3,uid);
            ps.setString(4,tech);
            ps.execute();
            PreparedStatement view = conn.prepareStatement(sqlView);
            ResultSet rs = view.executeQuery(sqlView);
            while(rs.next()){
                System.out.print(rs.getString(1)+"\t");
                System.out.print(rs.getString(2)+"\t");
                System.out.print(rs.getInt(3)+"\t");
                System.out.println(rs.getString(4)+"\t");
            }
            conn.close();
            System.out.println("Connection Closed!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}