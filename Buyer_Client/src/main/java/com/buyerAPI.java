package com;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;
import java.util.Scanner; 
import model.Buyer;

/**
 * Servlet implementation class buyerAPI
 */
@WebServlet("/buyerAPI")
public class buyerAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Buyer buyer = new Buyer();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public buyerAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	//doPost to insert a buyer
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String output = buyer.insertBuyer(request.getParameter("firstName"),
								request.getParameter("lastName"),
								request.getParameter("address"),
								request.getParameter("email"),
								request.getParameter("phoneNo"),
								request.getParameter("userName"),
								request.getParameter("password"));
		
		response.getWriter().write(output);
	}
	
	
	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
