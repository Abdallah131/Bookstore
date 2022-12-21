

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Codevalidation",urlPatterns = "/Codevalidation")
public class CodevalidationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/codevalidate.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get random int generated in forgotservlet
		int otpinserted = Integer.parseInt(request.getParameter("codeinserted"));
		String error= ("Code is invalid.");
		HttpSession session = request.getSession();
		int otp = (int)session.getAttribute("otp");
		// test if otp inserted by the user equals the otp sent to email
		if (otp == otpinserted) {
			getServletContext().getRequestDispatcher("/changepassword.jsp").forward(request, response);
		}else {
			request.setAttribute("error", error);
			doGet(request, response);
		}
	}

}
