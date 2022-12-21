

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Update",urlPatterns = "/Update")
public class UpdateuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		String phonenumber = (String) session.getAttribute("phonenumber");
		String email = (String) session.getAttribute("email");
		String password = (String) session.getAttribute("password");
		//
		String newusername = request.getParameter("inputusername");
		String newphonenumber = request.getParameter("inputphonenumber");
		String newemail = request.getParameter("inputuseremail");
		String newpassword = request.getParameter("inputpassword");
		String updated = ("Profile updated.");
		
		if (!newusername.isEmpty()) {
			UsersDBUtil.setUsername(newusername, email, password);
			request.setAttribute("username", newusername);
		}
		if (!newphonenumber.isEmpty()) {
			UsersDBUtil.setPhonenumber(newphonenumber, email, password);
			request.setAttribute("phonenumber", newphonenumber);
		}
		if (!newemail.isEmpty()) {
			UsersDBUtil.setEmail(newemail, email, password);
			request.setAttribute("email", newemail);
		}
		if (!newpassword.isEmpty()) {
			UsersDBUtil.setPassword(newpassword,email, password);
		}
		request.setAttribute("updated", updated);
		doGet(request, response);
				
		} 
}
	

