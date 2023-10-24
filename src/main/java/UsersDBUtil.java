import java.sql.*;

public class UsersDBUtil {
	public static boolean updateBook(String bookname, String bookauthor, String bookprice, String bookavailability,
		String bookquantity, String dbookname) {
		boolean updated = false;
		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement(
					"UPDATE books SET bookname=?,bookauthor=?,bookprice=?,bookavailability=?,bookquantity=? WHERE bookname = ?");
			stmt.setString(1, bookname);
			stmt.setString(2, bookauthor);
			stmt.setString(3, bookprice);
			stmt.setString(4, bookavailability);
			stmt.setString(5, bookquantity);
			stmt.setString(6, dbookname);
			rs = stmt.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return updated;
	}

	public static boolean insertBook(String bookname, String bookauthor, String bookprice, String bookavailability,
			String bookquantity) {
		boolean success = false;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			Statement stmt = con.createStatement();
			String sql = ("INSERT INTO books(bookid,bookname,bookauthor,bookprice,bookavailability,bookquantity) VALUES(18,'"
					+ bookname + "','" + bookauthor + "','" + bookprice + "','" + bookavailability + "','"
					+ bookquantity + "')");
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				success = true;
			} else {
				success = false;
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return success;
	}

	public static boolean Updatepassword(String password, String email) {

		boolean updated = false;
		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("UPDATE regularusers SET password=? WHERE email = ?");
			stmt.setString(1, password);
			stmt.setString(2, email);
			rs = stmt.executeUpdate();

			if (rs > 0) {
				updated = true;
			} else {
				updated = false;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return updated;

	}

	public static boolean forgotvalidation(String email) {
		boolean found = false;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("SELECT * FROM regularusers WHERE email= ?");
			stmt.setString(1, email);
			rs = stmt.executeQuery();

			if (rs.next()) {
				found = true;
			} else {
				found = false;
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return found;
	}

	public static void setPassword(String npass, String email, String password) {

		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("UPDATE regularusers SET password=? WHERE email = ? AND password = ?");
			stmt.setString(1, npass);
			stmt.setString(2, email);
			stmt.setString(3, password);
			rs = stmt.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public static void setEmail(String nemail, String email, String password) {

		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("UPDATE regularusers SET email=? WHERE email = ? AND password = ?");
			stmt.setString(1, nemail);
			stmt.setString(2, email);
			stmt.setString(3, password);
			rs = stmt.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public static void setPhonenumber(String phonenumber, String email, String password) {

		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("UPDATE regularusers SET phonenumber=? WHERE email = ? AND password = ?");
			stmt.setString(1, phonenumber);
			stmt.setString(2, email);
			stmt.setString(3, password);
			rs = stmt.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public static void setUsername(String username, String email, String password) {

		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("UPDATE regularusers SET username=? WHERE email = ? AND password = ?");
			stmt.setString(1, username);
			stmt.setString(2, email);
			stmt.setString(3, password);
			rs = stmt.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public static boolean adminvalidate(String email, String password) {
		boolean found = false;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser","blyat");
			stmt = con.prepareStatement("SELECT * FROM admins WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			if (rs.next()) {
				found = true;
			} else {
				found = false;
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return found;
	}

	public static boolean validate(String email, String password) {
		boolean found = false;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("SELECT * FROM regularusers WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			if (rs.next()) {
				found = true;
			} else {
				found = false;
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return found;
	}

	public static boolean insertUser(String username, String email, String password, String phonenumber) {

		boolean success = false;
		int id=4;
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			Statement stmt = con.createStatement();
			String sql = ("INSERT INTO regularusers(username,email,password,phonenumber,userid) VALUES('" + username + "','"
					+ email + "','" + password + "','" + phonenumber + "','" + id + "')");
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				success = true;
				id++;
			} else {
				success = false;
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return success;
	}

	public static boolean insertAdmin(String username, String email, String password, String phonenumber, String rank) {

		boolean success = false;

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			Statement stmt = con.createStatement();
			String sql = ("INSERT INTO admins(username,email,password,phonenumber,adminid,adminrank) VALUES('" + username
					+ "','" + email + "','" + password + "','" + phonenumber + "','" + 4 + "','" + rank + "')");
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				success = true;
			} else {
				success = false;
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return success;
	}

	public static String getAdminUsername(String email, String password) {
		String Name = null;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("SELECT * FROM admins WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			while (rs.next()) {
				String name = rs.getString(1);
				Name = name;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
		return Name;
	}

	public static String getUsername(String email, String password) {
		String Name = null;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("SELECT * FROM regularusers WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			while (rs.next()) {
				String name = rs.getString(1);
				Name = name;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
		return Name;
	}

	public static String getEmail(String email, String password) {
		String Email = null;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("SELECT * FROM regularusers WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			while (rs.next()) {
				String dbemail = rs.getString(2);
				Email = dbemail;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
		return Email;
	}

	public static String getPhonenumber(String email, String password) {
		String Phonenumber = null;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("SELECT * FROM regularusers WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			while (rs.next()) {
				String number = rs.getString(4);
				Phonenumber = number;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
		return Phonenumber;
	}

	public static String getPassword(String email, String password) {
		String Password = null;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bookstoreuser",
					"blyat");
			stmt = con.prepareStatement("SELECT * FROM regularusers WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			while (rs.next()) {
				String pass = rs.getString(3);
				Password = pass;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
		return Password;
	}
}
