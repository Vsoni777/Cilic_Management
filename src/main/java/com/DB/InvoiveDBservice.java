package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.DAO.Invoice;
import com.DAO.InvoiceItem;

public class InvoiveDBservice {
	Connection con=null;
	public InvoiveDBservice() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","vivek","Vi_soni777@&");
			}catch(Exception e) {
				System.out.println(e);
			}
	}
	public boolean saveInvoice(Invoice in) throws SQLException {
        	PreparedStatement pstmt=null;
       
        try {
             // Enable transaction

            // Insert invoice details
            String insertInvoiceQuery = "INSERT INTO invoices (invoice_number, invoice_date, due_date, customer_name, address, email) VALUES (?, ?, ?, ?, ?, ?)";
             pstmt = con.prepareStatement(insertInvoiceQuery);
            pstmt.setString(1, in.getInvoiceNumber());
            pstmt.setString(2, in.getInvoiceDate());
            pstmt.setString(3, in.getDueDate());
            pstmt.setString(4, in.getCustomerName());
            pstmt.setString(5, in.getAddress());
            pstmt.setString(6, in.getEmail());
            int a=pstmt.executeUpdate();
            pstmt.close();
            if (a != 1) {
                return false; // Failed to insert invoice details
            }
            
            // Get the auto-generated invoice ID
            String getInvoiceIdQuery = "SELECT LAST_INSERT_ID() AS invoice_id";
            PreparedStatement getInvoiceIdStmt = con.prepareStatement(getInvoiceIdQuery);
            int invoiceId;
            try (ResultSet rs = getInvoiceIdStmt.executeQuery()) {
                rs.next();
                invoiceId = rs.getInt("invoice_id");
            }

            // Insert invoice items
            List<InvoiceItem> items = in.getItems();
            String insertInvoiceItemQuery = "INSERT INTO invoice_items (invoice_id, description, quantity, unit_price) VALUES (?, ?, ?, ?)";
            try(PreparedStatement ps = con.prepareStatement(insertInvoiceItemQuery)){
            for (InvoiceItem item : items) {
                ps.setInt(1, invoiceId);
                ps.setString(2, item.getDescription());
                ps.setInt(3, item.getQuantity());
                ps.setDouble(4, item.getUnitPrice());
                int x=ps.executeUpdate();
                
                if (x != 1) {
                    return false; // Failed to insert invoice item
                }
            }
           }
            return true;
          } catch (SQLException e) {
           System.out.println(e);
           return false;
        }
    }
	
	public List<Invoice> getInvoicedata() {
		 List<Invoice> invoices = new ArrayList<>();
	 
	            String query = "SELECT i.*, ii.* FROM invoices i JOIN invoice_items ii ON i.invoice_number = ii.invoice_id";
	            try (PreparedStatement statement = con.prepareStatement(query)) {
	                try (ResultSet resultSet = statement.executeQuery()) {
	                    while (resultSet.next()) {
	                        Invoice in = new Invoice();
	                        in.setInvoiceNumber(resultSet.getString("invoice_number"));
	                        // Set other properties of the invoice
	                        in.setInvoiceDate(resultSet.getString("invoice_date"));
	                        in.setDueDate(resultSet.getString("due_date"));
	                        in.setCustomerName(resultSet.getString("customer_name"));
	                        in.setAddress(resultSet.getString("address"));
	                        in.setEmail(resultSet.getString("email"));
	                        InvoiceItem item = new InvoiceItem();
	                        
	                        item.setDescription(resultSet.getString("description"));
	                        // Set other properties of the invoice item
	                        item.setDescription(resultSet.getString("quantity"));
	                        item.setDescription(resultSet.getString("unitPrice"));
	                        // Add the invoice item to the corresponding invoice
	                        in.addItem(item);
	                        
	                        // Add the invoice to the list
	                        invoices.add(in);
	                    }
	                }
	            }catch(Exception e) {
	            	System.out.println(e);
	            	}
	            return invoices;
	            }
}
	

