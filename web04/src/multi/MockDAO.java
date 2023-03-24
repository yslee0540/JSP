package multi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class MockDAO {

	public int insert(MockVO bag) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "insert into mock values (?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			ps.setString(2, bag.getFirst_name());
			ps.setString(3, bag.getLast_name());
			ps.setString(4, bag.getEmail());
			ps.setString(5, bag.getGender());
			ps.setString(6, bag.getAddress());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("등록 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
