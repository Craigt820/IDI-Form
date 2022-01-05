package com.idi.demo.dao;

import com.idi.demo.beans.Invoice;

import java.util.List;


public interface InvoiceDao {

	public List<Invoice>getInvoices(int id);
	public void setInvoices(int id,List<Invoice>invoices );
	public void removeInvoice(int invoice_);

}
