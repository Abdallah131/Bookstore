

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login",urlPatterns = "/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("loginemail");
		String password = request.getParameter("loginpassword");
		String error = ("Username or password is wrong.");
		boolean found;
		HttpSession session = request.getSession();
		found = UsersDBUtil.validate(email, password);
		if(!found) {
			request.setAttribute("error", error);
			doGet(request, response);
		}else {
			String username = UsersDBUtil.getUsername(email, password);
			String phonenumber = UsersDBUtil.getPhonenumber(email, password);
			String Email = UsersDBUtil.getEmail(email, password);
			String pass = UsersDBUtil.getPassword(Email, password);
			session.setAttribute("username", username);
			session.setAttribute("phonenumber", phonenumber);
			session.setAttribute("email", Email);
			session.setAttribute("password", pass);
			getServletContext().getRequestDispatcher("/loginsuccess.jsp").forward(request, response);
		}
	}

}
