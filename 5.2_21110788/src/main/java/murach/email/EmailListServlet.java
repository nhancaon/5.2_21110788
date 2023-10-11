package murach.email;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import murach.business.User;

@WebServlet("/emailList")
public class EmailListServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/index.jsp";
		request.setCharacterEncoding("UTF-8");
		// get current action
		String action = request.getParameter("action");
		if (action == null) {
			action = "join";
		}
		// perform action and set URL to appropriate page
		if (action.equals("join")) {
			url = "/index.jsp"; // the "join" page

		} else if (action.equals("add")) {
			// get parameter from the request
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			String dateOfBirth = request.getParameter("dateofbirth");
			String heard = request.getParameter("radio");
			String answer = request.getParameter("checkbox");
			String Contact = request.getParameter("typeofContact");
			String message = "";
			User user = new User(firstName, lastName, email, dateOfBirth);

			if (firstName == null || lastName == null || email == null || dateOfBirth == null || firstName.isEmpty()
					|| lastName.isEmpty() || email.isEmpty() || dateOfBirth.isEmpty()) {
				message = "Please fill out all four text boxes.";
				url = "/index.jsp";
			} else {
				message = "Here is the information that you enter:";
				url = "/thanks.jsp";
			}
			request.setAttribute("heard", heard);
			request.setAttribute("answer", answer);
			request.setAttribute("Contact", Contact);
			request.setAttribute("user", user);
			request.setAttribute("message", message);
		}

		// forward request and response objects to specified URL
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		
		doPost(request, response);
	}
}
