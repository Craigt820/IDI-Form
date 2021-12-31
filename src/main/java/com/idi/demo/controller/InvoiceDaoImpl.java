package com.idi.demo.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.List;


@Repository
public class InvoiceDaoImpl implements com.idi.demo.controller.InvoiceDao {


    //Direct Injection - looks into the config file and injects the bean
    private EntityManager entityManager;

    @Autowired
    public InvoiceDaoImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Transactional
    @Override
    public List<com.idi.demo.controller.Invoice> getInvoices(int id) {
        Session session = entityManager.unwrap(Session.class);

        //Only query invoices that are from a certain Project
        Query<com.idi.demo.controller.Invoice> query = session.createQuery("FROM Invoice where proj_id=:param", com.idi.demo.controller.Invoice.class);
        query.setParameter("param", id);
//		System.out.println("Proj Info ID: " + id);
        List<com.idi.demo.controller.Invoice> invoices = query.getResultList();
        return invoices;
    }

    @Transactional
    @Override
    public void setInvoices(int id, List<com.idi.demo.controller.Invoice> invoices) {
        Session session = entityManager.unwrap(Session.class);
        for (com.idi.demo.controller.Invoice invoice : invoices) {
//            invoice.setProj_id(id);
            session.saveOrUpdate(invoice);
        }
        session.flush();

    }

    @Transactional
    @Override
    public void removeInvoice(int invoice_id) {
        Session session = entityManager.unwrap(Session.class);
        // delete object with/ primary key
        Query theQuery = session.createQuery("delete from Invoice  where id=:id");
        theQuery.setParameter("id", invoice_id);
        theQuery.executeUpdate();
    }


}
