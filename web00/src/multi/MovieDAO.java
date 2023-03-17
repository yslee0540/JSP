package multi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MovieDAO {

	public ArrayList<MovieVO> list() {
		ResultSet rs = null;
		
		//가방들 넣어줄 큰 컨테이너 역할
		ArrayList<MovieVO> list = new ArrayList<>();
		MovieVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "select id, title, content from movie";
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			while (rs.next()) { //검색결과가 있는지 여부
				//System.out.println("검색결과 있음");
				bag = new MovieVO();
				bag.setId(rs.getString("id"));
				bag.setTitle(rs.getString("title"));
				bag.setContent(rs.getString("content"));
				
				//list에 bag 추가
				list.add(bag);
			}
			ps.close(); con.close(); rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public MovieVO one(String id) {
		ResultSet rs = null;
		MovieVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "select * from movie where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (rs.next()) { //검색결과가 있는지 여부
				System.out.println("검색결과 있음");
				String id2 = rs.getString("id");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String location = rs.getString("location");
				String director = rs.getString("director");
				
				//검색결과를 검색화면 UI로 주어야 함
				bag = new MovieVO();
				bag.setId(id2);
				bag.setTitle(title);
				bag.setContent(content);
				bag.setLocation(location);
				bag.setDirector(director);
				
			} else {
				System.out.println("검색결과 없음");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println(result);
		return bag;
	}
	
	public int delete(String id) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "delete from movie where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("회원탈퇴처리 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println(result);
		return result;
	}
	
	public int update(MemberVO bag) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			// 3. con부품으로 sql스트링에 있는 것 sql부품으로 만들기
			String sql = "update movie set tel = ? where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getTel());
			ps.setString(2, bag.getId());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("회원수정처리 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println(result);
		return result;
	}
	
	public int insert(MovieVO bag) {
		//1. 가방을 받아서 변수에 넣기
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "insert into movie values (?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			//R빼고 인덱스 0부터 시작, 유일하게 db는 인덱스가 1부터 시작
			ps.setString(1, bag.getId());
			ps.setString(2, bag.getTitle());
			ps.setString(3, bag.getContent());
			ps.setString(4, bag.getLocation());
			ps.setString(5, bag.getDirector());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			//insert, update, delete문만(실행결과가 int)
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("영화등록 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
