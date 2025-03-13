package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.adddriver;
import service.web_service;


@WebServlet("/driverstb")
public class driverstb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public driverstb() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		web_service service1=new web_service();
		ArrayList<adddriver> custom = service1.getalldriver();
		request.setAttribute("cust", custom);
		RequestDispatcher dispacher=request.getRequestDispatcher("drivertb.jsp");
		dispacher.forward(request, response);
		
	}

}
