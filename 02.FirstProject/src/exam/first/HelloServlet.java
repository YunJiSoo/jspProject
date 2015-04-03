package exam.first;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")	//URL mapping
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {		//클라이언트가 서버쪽에 request했을 때 자동호출
        super(); //부모생성자 호출
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");	//클라이언트에서 인코딩할 때 설정
		response.setContentType("text/html; charset=UTF-8");	
		PrintWriter out = response.getWriter();	//out 객체가 자동으로 만들어지지 않아서 내가 만들어줘야 함
		//out.print("<html>");
		out.print("Hello-Get"+"<br>");
		String a = request.getParameter("name");
		String b = request.getParameter("id");
		String c = request.getParameter("pw");
		
		out.print("이름: "+a+"<br>");
		out.print("id: "+b+"<br>");
		out.print("password: "+c+"<br>");
		//out.print("</html>");
	} //get방식(주소 치는 것)으로 하면 이게 호출 됨

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); //한글 안깨지게
		PrintWriter out = response.getWriter();
		//out.print("<html>");	//1) html이라는 것을 알려주는 것, <br>적용된다.
		
		out.print("Hello-Post"+"<br>");
		String a = request.getParameter("name");
		String b = request.getParameter("id");
		String c = request.getParameter("pwd");
		
		out.print("이름: " + a + "<br>");
		out.print("id: " + b + "<br>");
		out.print("password: " + c + "<br>");
		//out.print("</html>");
	}  //post방식(외부에 노출되면 안되는 데이터, 글자수 많은 거)으로 하면 이게 호출 됨
}

