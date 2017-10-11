package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class LoginServlit
 */
@WebServlet("/Login")
public class LoginServlit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlit() {
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
		// response.getWriter().append("Served at: "
		// ).append(request.getContextPath());
		// jsp 포워딩
		RequestDispatcher rd = request.getRequestDispatcher("/WebClass/Login");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s\n", id, pwd);

		boolean result = true;

		if (result) {
			// 세션에 사용자 정보를 생성해서 담기
			HttpSession session = request.getSession();
			UserVO user = new UserVO();
			user.setId(id);
			user.setName("홍길동");
			user.setNickname("의적");

			session.setAttribute("user", user);

			RequestDispatcher rd = request.getRequestDispatcher("/jsp/home.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost2(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s\n", id, pwd);

		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();

		/*
		 * { "id" : "testid" }
		 *
		 */

		// out.println("{");
		// out.println("\"id\":"+"\""+id+"\"");
		// out.println("}");

		// Json simple library
		// JSONObject json = new JSONObject();
		// json.put("id", id);
		// System.out.println(json.toJSONString());
		// out.write(json.toJSONString());

		// Gson Library사용해서 소스 작성하기

		Gson gson = new Gson();
		JsonObject object = new JsonObject();
		object.addProperty("id", id);

		String json = gson.toJson(object);
		System.out.println(json);
		out.write(json);

		out.close();

	}

}
