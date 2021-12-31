package com.idi.demo.controller;


import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
public class FormatDaoImpl implements FormatDao {

    //Direct Injection - looks into the config file and injects the bean

    private EntityManager entityManager;

    @Autowired
    public FormatDaoImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Transactional
    @Override
    public List<Format> getFormat() {

        Session session = entityManager.unwrap(Session.class);
        //Only query invoices that are from a certain Project
        Query<Format> query = session.createQuery("FROM Format", Format.class);
        return query.getResultList();
    }


}
