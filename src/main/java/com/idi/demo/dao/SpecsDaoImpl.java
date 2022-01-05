package com.idi.demo.dao;

import com.idi.demo.beans.Specs;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.List;


@Repository
public class SpecsDaoImpl implements SpecsDao {


    //Direct Injection - looks into the config file and injects the bean
    private EntityManager entityManager;

    @Autowired
    public SpecsDaoImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }


    @Transactional
    @Override
    public List<Specs> getSpecs(int id) {
        Session session = entityManager.unwrap(Session.class);

        //Only query specs that are from a certain Project
        Query<Specs> query = session.createQuery("FROM Specs where proj_id=:param", Specs.class);
        query.setParameter("param", id);
//		System.out.println("Proj Info ID: " + id);
        List<Specs> specs = query.getResultList();
        return specs;
    }

    @Transactional
    @Override
    public void setSpecs(int id, List<Specs> specs) {
        Session session = entityManager.unwrap(Session.class);
        for (Specs spec : specs) {
            spec.setProj_id(id);
            session.save(spec);
        }
    }

    @Transactional
    @Override
    public void updateSpecs(int id, List<Specs> specs) {
        Session session = entityManager.unwrap(Session.class);
        for (Specs spec : specs) {
//            spec.setProj_id(id);
            session.update(spec);
        }
    }

    @Transactional
    @Override
    public void removeSpec(int spec_id) {
        Session session = entityManager.unwrap(Session.class);
        // delete object with/ primary key
        Query theQuery = session.createQuery("delete from Specs  where id=:id");
        theQuery.setParameter("id", spec_id);
        theQuery.executeUpdate();
    }

    @Transactional
    @Override
    public Specs getSpecById(int id) {
        return null;
    }
}
