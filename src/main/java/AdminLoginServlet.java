

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Adminlogin",urlPatterns = "/Adminlogin")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/adminlogin.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String email = request.getParameter("adminemail");
		String password = request.getParameter("adminpassword");
		String error = ("Username or password is wrong.");
		boolean found;
		found = UsersDBUtil.adminvalidate(email, password);
		if(!found) {
			request.setAttribute("error", error);
			doGet(request, response);
		}else {
			getServletContext().getRequestDispatcher("/loginsuccessadmin.jsp").forward(request, response);
			String adminusername = UsersDBUtil.getAdminUsername(email, password);
			request.setAttribute("adminusername", adminusername);
		}
	}	

}
