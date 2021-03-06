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

	//Convert Request parameters to Map
	private static Map getParasMap(HttpServletRequest request)
	{
		Map<String, String> map = new HashMap<String, String>();
		try
		{
			Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
			String queryString = scanner.hasNext()? scanner.useDelimiter("\\A").next():"";
			
			scanner.close();
			
			String[] params = queryString.split("&");
			for (String param: params) 
			{
				String[] p = param.split("=");
				map.put(p[0], p[1]);
				
			}
		}catch(Exception ex) {
			
		}
		return map;
	}
	
	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */

	//doPut for Update buyer details 
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map paras = getParasMap(request);
		
		System.out.println(paras.get("firstName").toString());
		System.out.println(paras.get("lastName").toString());
		System.out.println(paras.get("address").toString());
		System.out.println(paras.get("email").toString());
		System.out.println(paras.get("phoneNo").toString());
		System.out.println(paras.get("userName").toString());
		System.out.println(paras.get("password").toString());
		
		String output = buyer.UpdateBuyer(paras.get("hidBuyerIDSave").toString(),
				   paras.get("firstName").toString(),
		           paras.get("lastName").toString(),  
		           paras.get("address").toString().replace("+", " "),  
		           paras.get("email").toString().replace("%40", "@"),
		           paras.get("phoneNo").toString(),
		           paras.get("userName").toString(),
		           paras.get("password").toString()
		  
		 ); 
			response.getWriter().write(output);
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */

	//Delete buyer
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Map paras = getParasMap(request);
		System.out.println("Delete value" + paras.get("buyerID").toString());
		String output = buyer.deleteBuyer(paras.get("buyerID").toString());
		response.getWriter().write(output);

	}

}
