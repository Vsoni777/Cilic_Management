package com.DAO;

import java.util.List;

public class Invoice {
	
	    private String invoiceNumber;
	    private String invoiceDate;
	    private String dueDate;
	    private String customerName;
	    private String address;
	    private String email;
	    private List<InvoiceItem> items;
	    private double totalAmount;

	    // Getters and setters for all properties

	    public String getInvoiceNumber() {
	        return invoiceNumber;
	    }

	    public void setInvoiceNumber(String invoiceNumber) {
	        this.invoiceNumber = invoiceNumber;
	    }

	    public String getInvoiceDate() {
	        return invoiceDate;
	    }

	    public void setInvoiceDate(String invoiceDate) {
	        this.invoiceDate = invoiceDate;
	    }

	    public String getDueDate() {
	        return dueDate;
	    }

	    public void setDueDate(String dueDate) {
	        this.dueDate = dueDate;
	    }

	    public String getCustomerName() {
	        return customerName;
	    }

	    public void setCustomerName(String customerName) {
	        this.customerName = customerName;
	    }

	    public String getAddress() {
	        return address;
	    }

	    public void setAddress(String address) {
	        this.address = address;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public List<InvoiceItem> getItems() {
	        return items;
	    }

	    public void setItems(List<InvoiceItem> items) {
	        this.items = items;
	    }

	    public double getTotalAmount() {
	        return totalAmount;
	    }

	    public void setTotalAmount(double totalAmount) {
	        this.totalAmount = totalAmount;
	    }
	    

	    // Method to add a single item to the list
	    public void addItem(InvoiceItem item) {
	        this.items.add(item);
	    }

	    // Getter for the list of items
	    
	}


