package com.idi.demo.controller;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.List;


@Repository
public class ModeDaoImpl implements ModeDao {

    //Direct Injection - looks into the config file and injects the bean
    private EntityManager entityManager;

    @Autowired
    public ModeDaoImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Transactional
    @Override
    public List<Mode> getModes() {
        Session session = entityManager.unwrap(Session.class);

        //Only query invoices that are from a certain Project
        Query<Mode> query = session.createQuery("FROM Mode", Mode.class);
//		System.out.println("Proj Info ID: " + id);
        List<Mode> modes = query.getResultList();
        return modes;
    }



}
