package com.emp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class inputOk_Servlet
 */
@WebServlet("/inputOk_Servlet")
public class inputOk_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public inputOk_Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		request.setCharacterEncoding("euc-kr");

		String emp_id = request.getParameter("emp_id");
		String ename = request.getParameter("ename");
		int salary = Integer.parseInt(request.getParameter("salary"));
		String depart = request.getParameter("depart");				//input폼에서 데이터 받음
		EmpDTO dto = new EmpDTO(emp_id, ename, salary, depart); 	//매개변수 있는 생성자 (dto 바구니에 정보 저장되어있음)
		dto.setEmp_id(emp_id);		//dto객체의 setter를 이용해 정보를 넣어줌
		dto.setEname(ename);
		dto.setSalary(salary);
		dto.setDepart(depart);

		EmpDAO dao = new EmpDAO();	//DAO객체 생성

		boolean bool = dao.registerEmp(dto);	//DAO객체의 registerEmp 메소드 호출
		//registerEmp는 리턴값이 부울형임
		if (bool) {
			response.sendRedirect("SelectDAOServlet");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
