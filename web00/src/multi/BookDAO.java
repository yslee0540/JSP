package multi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BookDAO {

	public ArrayList<BookVO> list() {
		ResultSet rs = null;
		
		//가방들 넣어줄 큰 컨테이너 역할
		//<BookVO> -> BookVO만 들어감
		ArrayList<BookVO> list = new ArrayList<>();
		BookVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "select * from book";
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			while (rs.next()) { //검색결과가 있는지 여부
				//System.out.println("검색결과 있음");
				bag = new BookVO();
				bag.setNo(rs.getInt("no"));
				bag.setTitle(rs.getString("title"));
				bag.setContent(rs.getString("content"));
				bag.setWriter(rs.getString("writer"));
				bag.setImg(rs.getString("img"));
				
				//list에 bag 추가
				list.add(bag);
			}
			ps.close(); con.close(); rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<BookVO> list2(String title) {
		ResultSet rs = null;
		
		//가방들 넣어줄 큰 컨테이너 역할
		//<BookVO> -> BookVO만 들어감
		ArrayList<BookVO> list = new ArrayList<>();
		BookVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "select * from book where title like ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%" + title + "%");
			
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			while (rs.next()) { //검색결과가 있는지 여부
				//System.out.println("검색결과 있음");
				bag = new BookVO();
				bag.setNo(rs.getInt("no"));
				bag.setTitle(rs.getString("title"));
				bag.setContent(rs.getString("content"));
				bag.setWriter(rs.getString("writer"));
				bag.setImg(rs.getString("img"));
				
				//list에 bag 추가
				list.add(bag);
			}
			ps.close(); con.close(); rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public BookVO one(int no) {
		ResultSet rs = null;
		BookVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "select * from book where no = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, no);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (rs.next()) { //검색결과가 있는지 여부
				System.out.println("검색결과 있음");
				bag = new BookVO();
				bag.setNo(rs.getInt("no"));
				bag.setTitle(rs.getString("title"));
				bag.setContent(rs.getString("content"));
				bag.setWriter(rs.getString("writer"));
				bag.setImg(rs.getString("img"));
				
			} else {
				System.out.println("검색결과 없음");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println(result);
		return bag;
	}
	
	public int delete(int no) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "delete from book where no = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, no);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("책 삭제 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println(result);
		return result;
	}
	
	public int update(BookVO bag) {
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
			String sql = "update book set content = ? where no = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getContent());
			ps.setInt(2, bag.getNo());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("책 수정 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println(result);
		return result;
	}
	
	public int insert(BookVO bag) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "insert into book values (?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			//R빼고 인덱스 0부터 시작, 유일하게 db는 인덱스가 1부터 시작
			ps.setInt(1, bag.getNo());
			ps.setString(2, bag.getTitle());
			ps.setString(3, bag.getContent());
			ps.setString(4, bag.getWriter());
			ps.setString(5, bag.getImg());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("책 등록 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
