package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class in_out_Servlet
 */
@WebServlet("/in_out_Servlet")
public class in_out_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public in_out_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		response.setContentType("text/html; charset=EUC-KR");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		double su1 = Double.parseDouble(num1);
		double su2 = Double.parseDouble(num2);
		
		double add = su1 + su2;
		double sub = su1 - su2;
		double mul = su1 * su2;
		double divide = su1 / su2;
		
		request.setAttribute("su1", su1);
		request.setAttribute("su2", su2);
		
		request.setAttribute("add", add);
		request.setAttribute("sub", sub);
		request.setAttribute("mul", mul);
		request.setAttribute("ddd", divide);
		
		RequestDispatcher dis = request.getRequestDispatcher("out_num.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
