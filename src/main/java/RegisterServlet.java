

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Register",urlPatterns = "/Register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("registername");
		String phonenumber = request.getParameter("registerphonenumber");
		String email = request.getParameter("registeremail");
		String password = request.getParameter("registerpassword");
		String error = ("All fields must be filled.");
		String success = ("Thank you for your registration.");
		String exists = ("Email is already registered.");
		if ((username.isEmpty()) || (phonenumber.isEmpty()) || (email.isEmpty()) || (password.isEmpty())) {
			request.setAttribute("error", error);
			doGet(request, response);
		} else {
			boolean found = UsersDBUtil.validate(email, password);
			if (!found) {
			UsersDBUtil.insertUser(username, email, password, phonenumber);
			request.setAttribute("success", success);
			doGet(request, response);
			}else {
				request.setAttribute("exists", exists);
				doGet(request, response);
			}
	
		}
	}

}
