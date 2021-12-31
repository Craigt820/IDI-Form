package com.idi.demo.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.List;


@Repository
public class ProjectDaoImpl implements com.idi.demo.controller.ProjectDao{
	
	@Autowired
	public ProjectDaoImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	//Direct Injection - looks into the config file and injects the bean
	private EntityManager entityManager;


	@Transactional
	@Override
	public List<ProjectInfo> getProjects() {
		Session session = entityManager.unwrap(Session.class);
		
		//Only query invoices that are from a certain Project
		Query<ProjectInfo> query = session.createQuery("FROM ProjectInfo order by pName",ProjectInfo.class);
		List<ProjectInfo> projects = query.getResultList();
		return projects;
	}

	@Transactional
	@Override
	public void removeProject(int id) {
		// get the current hibernate session
		Session session = entityManager.unwrap(Session.class);

		// delete object with/ primary key
		Query theQuery = session.createQuery("delete from ProjectInfo where id=:param");
		theQuery.setParameter("param", id);
		theQuery.executeUpdate();
	}
	
	@Transactional
	@Override
	public ProjectInfo getProjectById(int id) {
		Session session = entityManager.unwrap(Session.class);

		Query<ProjectInfo> theQuery = session.createQuery("FROM ProjectInfo WHERE id=:param",ProjectInfo.class);
        theQuery.setParameter("param",id);
        return (ProjectInfo)theQuery.getSingleResult();

	}

	

}
