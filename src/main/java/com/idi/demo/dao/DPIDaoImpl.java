package com.idi.demo.dao;


import com.idi.demo.beans.DPI;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.List;


@Repository
public class DPIDaoImpl implements DPIDao {

    //Direct Injection - looks into the config file and injects the bean

    private EntityManager entityManager;

    @Autowired
    public DPIDaoImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Transactional
    @Override
    public List<DPI> getDPI() {

        Session session = entityManager.unwrap(Session.class);
        //Only query invoices that are from a certain Project
        Query<DPI> query = session.createQuery("FROM DPI", DPI.class);
        return query.getResultList();
    }


}
