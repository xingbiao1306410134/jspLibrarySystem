package org.book;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddBook
 */
@WebServlet("/AddBook")
public class AddBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if(session.getAttribute("list") == null)
		{
			response.sendRedirect(request.getContextPath()+"/addBook.jsp?mess=1");
			session.setAttribute("mess", "没有获取到任何book！");
			return;
			//debug
			//System.out.println("get " + list);
		}
		LinkedList<Book>list = ((LinkedList<Book>)(session.getAttribute("list")));
		Iterator it = list.iterator();
		int sum = 0;
		while( it.hasNext())
		{
			Book b = (Book)(it.next());
			if(b.insert())
			{
				sum ++;
			}
		}
		session.setAttribute("list", null);
		response.sendRedirect(request.getContextPath()+"/addBook.jsp?mess=1");
		session.setAttribute("mess", "成功录入" + sum + "条记录！");
		return;
			
	}

}
