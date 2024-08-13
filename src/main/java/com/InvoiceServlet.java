package com;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Invoice;
import com.DB.InvoiveDBservice;

@WebServlet("/InvoiceServlet")
public class InvoiceServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	InvoiveDBservice db = new InvoiveDBservice();
        List<Invoice> invoices = db.getInvoicedata();
        
        // Set the invoices as an attribute in the request
        request.setAttribute("invoices", invoices);
        
        // Forward the request to the JSP page for display
        request.getRequestDispatcher("/viewinvoice.jsp").forward(request, response);
    }
}
