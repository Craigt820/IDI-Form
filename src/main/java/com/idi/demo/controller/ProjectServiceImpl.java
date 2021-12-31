package com.idi.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private com.idi.demo.controller.ProjectDao projectDao;
	
	@Transactional
	@Override
	public List<ProjectInfo> getProjects() {
		return projectDao.getProjects();
	}
	
	@Transactional
	@Override
	public void removeProject(int id) {
		projectDao.removeProject(id);
	}

	@Transactional
	@Override
	public ProjectInfo getProjectById(int id) {
		return  projectDao.getProjectById(id);
	}

}
