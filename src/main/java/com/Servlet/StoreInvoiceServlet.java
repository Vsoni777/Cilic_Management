package com.Servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Invoice;
import com.DAO.InvoiceItem;
import com.DB.InvoiveDBservice;

@WebServlet("/StoreInvoiceServlet")
public class StoreInvoiceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
    	String target="";
    	Invoice in=new Invoice();
        in.setInvoiceNumber(request.getParameter("invoiceNumber"));
        in.setInvoiceDate(request.getParameter("invoiceDate"));
        in.setDueDate(request.getParameter("dueDate"));
        in.setCustomerName(request.getParameter("customerName"));
        in.setAddress(request.getParameter("address"));
        in.setEmail(request.getParameter("email"));

        // Invoice item arrays
        List<InvoiceItem> items = new ArrayList<>();

        String[] descriptions = request.getParameterValues("description[]");
        String[] quantities = request.getParameterValues("quantity[]");
        String[] unitPrices = request.getParameterValues("unitPrice[]");
        
        for (int i = 0; i < descriptions.length; i++) {
            InvoiceItem item = new InvoiceItem();
            item.setDescription(descriptions[i]);
            item.setQuantity(Integer.parseInt(quantities[i]));
            item.setUnitPrice(Double.parseDouble(unitPrices[i]));
            items.add(item);
        }
        in.setItems(items);
        
        try {
        InvoiveDBservice db=new InvoiveDBservice();
        
			boolean isvalid=db.saveInvoice(in);
			 if (isvalid) {
				 request.setAttribute("sms", "records insert");


					target="/Invoice.jsp";
	                 // Redirect to success page if invoice is saved successfully
	            } else {
	            	request.setAttribute("sms","records not insert");
	               target="/Invoice.jsp"; // Redirect to error page if there was an error saving the invoice
	            }
			 RequestDispatcher rd = getServletContext().getRequestDispatcher(target);
				rd.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
			//response.sendRedirect("error.jsp");
		}
    
    }
}
