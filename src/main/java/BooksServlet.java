
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "booksservlet", urlPatterns = "/Books")
public class BooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/loginsuccessadmin.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String bookname = request.getParameter("bookname");
		String bookauthor = request.getParameter("bookauthor");
		String bookprice = request.getParameter("bookprice");
		String bookavailability 	= request.getParameter("bookavailability");
		String bookquantity = request.getParameter("bookquantity");
		String error = ("All fields must be filled.");
		String success = ("Book has been registered.");
		String updated = ("Book has been updated.");
		String bug = ("Something went wrong");
		String choice = request.getParameter("Submited");
		if (choice.equals("Submit")) {
			if ((bookname.isEmpty()) || (bookauthor.isEmpty()) || (bookprice.isEmpty()) || (bookavailability.isEmpty())) {
				request.setAttribute("error", error);
				doGet(request, response);
			} else {
				boolean found = UsersDBUtil.insertBook(bookname, bookauthor, bookprice, bookavailability, bookquantity);
				if (found) {
					UsersDBUtil.insertBook(bookname, bookauthor, bookprice, bookavailability, bookquantity);
					request.setAttribute("success", success);
					doGet(request, response);
				} else {
					request.setAttribute("bug", bug);
				}
			}
		} else {
			if ((!bookname.isEmpty()) || (!bookauthor.isEmpty()) || (!bookprice.isEmpty())
					|| (!bookavailability.isEmpty())) {
				String dbookname = request.getParameter("bookname");
				boolean found = UsersDBUtil.updateBook(bookname, bookauthor, bookprice, bookavailability, bookquantity,
						dbookname);					
				request.setAttribute("updated", updated);
			}else {
				request.setAttribute("booknotupdated", "Insert a book to modify");
			}
			doGet(request, response);
		}

	}
}
