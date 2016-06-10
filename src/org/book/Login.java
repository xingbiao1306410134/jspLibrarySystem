package org.book;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//PrintWriter out = response.getWriter();
		String temp;
		String name = (temp = request.getParameter("userName")) == null ? new String("") : temp;
		String passwd = (temp = request.getParameter("passwd")) == null ? new String("") : temp;
		String admin = (temp = request.getParameter("admin")) == null ? new String("") : temp;
		if(!admin.equals(""))
		{
			Admin user = new Admin();
			user.setName(name);
			user.setPasswd(passwd);
			if(user.confirm())
			{
				request.getSession().setAttribute("user", user);
				request.getSession().setAttribute("class", "admin");
				response.sendRedirect(request.getContextPath()+"/admin.jsp");
			}
			else response.sendRedirect(request.getContextPath()+"/loginFail.html");
		}
		else
		{
			User user = new User();
			user.setName(name);
			user.setPasswd(passwd);
			if(user.confirm())
			{
				request.getSession().setAttribute("user", user);
				request.getSession().setAttribute("class", "user");
				response.sendRedirect(request.getContextPath()+"/myLibrary.jsp");
			}
			else response.sendRedirect(request.getContextPath()+"/loginFail.html");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
