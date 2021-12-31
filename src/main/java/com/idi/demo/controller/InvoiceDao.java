package com.idi.demo.controller;

import java.util.List;


public interface InvoiceDao {

	public List<Invoice>getInvoices(int id);
	public void setInvoices(int id,List<Invoice>invoices );
	public void removeInvoice(int invoice_);

}
