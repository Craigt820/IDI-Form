package com.idi.demo.beans;

import java.util.ArrayList;
import java.util.List;

public class InvoiceList {

    private List<Invoice> invoiceList;

    public InvoiceList() {
        this.invoiceList = new ArrayList<>();
    }

    public InvoiceList(List<Invoice> invoices) {
        this.invoiceList = invoices;
    }

    public List<Invoice> getInvoiceList() {
        return invoiceList;
    }

    public void setInvoiceList(List<Invoice> invoices) {
        this.invoiceList = invoices;
    }
}
