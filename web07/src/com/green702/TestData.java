package com.green702;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web07.Member;

/**
 * Servlet implementation class TestData
 */
@WebServlet("/TD")
public class TestData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member member = new Member(); //자바빈 객체 생성
		member.setUserId("Ko");
		member.setUserName("고길동");//자바빈에 프로퍼티 저장
		
		request.setAttribute("member", member); //request 내장 객체에 속성으로 자바빈 객체 저장
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ex08_result.jsp");
		
		dispatcher.forward(request, response); //request내장객체아 함께 포워드 한다.
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
