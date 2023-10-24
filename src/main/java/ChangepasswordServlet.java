

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Changepassword",urlPatterns = "/Changepassword")
public class ChangepasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get attributes from ForgotServlet
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		// get user input
		String pass1 = request.getParameter("forgottenpassword");
		String pass2 = request.getParameter("cforgottenpassword");
		String error = ("Passwords do not match.");
		boolean updated =UsersDBUtil.Updatepassword(pass2, email);
		
		if (pass1.equals(pass2)) {
			if (updated) {
				getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}else {
			request.setAttribute("error", error);
			getServletContext().getRequestDispatcher("/changePassword.jsp").forward(request, response);
		}
	}

}
