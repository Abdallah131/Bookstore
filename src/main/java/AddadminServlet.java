

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "New admin",urlPatterns = "/Addadmin")
public class AddadminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/adminprofile.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("newadminusername");
		String email = request.getParameter("newadminpassword");
		String password = request.getParameter("newadminpassword");
		String phonenumber = request.getParameter("newadminnumber");
		String rank = request.getParameter("newadminrank");
		String error =("All fields must be filled");
		String success = ("Admin added successfully");
		if ((username.isEmpty()) || (email.isEmpty()) || (password.isEmpty()) || (phonenumber.isEmpty()) || (rank.isEmpty())) {
			request.setAttribute("error", error);
			doGet(request, response);
		} else {
			boolean found = UsersDBUtil.insertAdmin(username, email,password,phonenumber,rank);
			if (found) {
				UsersDBUtil.insertAdmin(username, email,password,phonenumber,rank);
				request.setAttribute("success", success);
				doGet(request, response);
				}
	}
}
}


