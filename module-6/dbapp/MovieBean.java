// MovieBean.java
// Brian Preston - CSD430 - Module 6
// Purpose: JavaBean to access brian_movies_data table

package mybeans;

import java.sql.*;
import java.util.ArrayList;

public class MovieBean {
    
    private String url = "jdbc:mysql://localhost:3306/CSD430?serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false";
    private String user = "student1";
    private String password = "pass";

    public ArrayList<Integer> getMovieIds() {
        ArrayList<Integer> ids = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT movie_id FROM brian_movies_data");
            while (rs.next()) {
                ids.add(rs.getInt("movie_id"));
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ids;
    }

    public ResultSet getMovieById(int movieId) {
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement ps = conn.prepareStatement(
                "SELECT * FROM brian_movies_data WHERE movie_id = ?");
            ps.setInt(1, movieId);
            rs = ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }
}


