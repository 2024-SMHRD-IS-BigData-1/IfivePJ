package frontcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;


@WebServlet("*.do")
public class frontcontroller extends HttpServlet {
	public interface Command {

	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String requestURI =  request.getRequestURI();
		
		String contextpath =  request.getContextPath();
		
		String resultURL = requestURI.substring(contextpath.length() + 1);
		
		Command service = null;
		
		
		
//		if (resultURL.equals("LoginService.do")) {
//			 service = new LoginService();
//		}
		
		String moveURL =service.execute(request, response);
		
		if (moveURL != null) {
		response.sendRedirect(moveURL);
		}
	
	
	}

}
