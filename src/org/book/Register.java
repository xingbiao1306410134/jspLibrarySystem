package org.book;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String temp;
		String name = (temp = request.getParameter("userName")) == null ? new String("") : temp;
		String passwd = (temp = request.getParameter("passwd")) == null ? new String("") : temp;
		String idCard = (temp = request.getParameter("idCard")) == null ? new String("") : temp;
		String email = (temp = request.getParameter("email")) == null ? new String("") : temp;
		String phone = (temp = request.getParameter("phone")) == null ? new String("") : temp;

		User user = new User();
		user.setName(name);
		user.setPasswd(passwd);
		user.setIdCard(idCard);
		user.setPhone(phone);
		user.setEmail(email);
		boolean b = name.length() >= 6 && passwd.length() >= 6 && user.register();
		if(b)
		{
			response.sendRedirect(request.getContextPath()+"/registerOK.jsp");
			return;
		}
		else
		{
			response.sendRedirect(request.getContextPath()+"/register.jsp?fail=1");
			return;
		}
	}

}
