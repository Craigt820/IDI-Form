package com.idi.demo.controller;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;


@Repository
public class GeneralDaoImpl implements GeneralDao {

    //Direct Injection - looks into the config file and injects the bean

    private EntityManager entityManager;

    @Autowired
    public GeneralDaoImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Transactional
    @Override
    public General getGeneral(int id) {

        Session session = entityManager.unwrap(Session.class);
        //Only query invoices that are from a certain Project
        Query<General> query = session.createQuery("FROM General where proj_id=:param", General.class);
        query.setParameter("param", id);
        return (General) query.getResultList().stream().findFirst().orElse(null);
    }


}
