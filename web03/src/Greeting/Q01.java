package Greeting;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Q01
 */
@WebServlet("/Q01")
public class Q01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Q01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
	      String gender = request.getParameter("gender");
	      String email = request.getParameter("email");
	      String content = request.getParameter("content");
	      
	      response.setContentType("text/html;charset=UTF-8");
	      PrintWriter out = response.getWriter();
	      
	      out.println(" 입력한 정보"+"<hr>");

	      out.println("성별 : "+gender+"<br>");
	      out.println("메일 정보 수신 여부 : "+email+"<br>");
	      out.println("가입인사 : "+"<br>"+content);
	      

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
