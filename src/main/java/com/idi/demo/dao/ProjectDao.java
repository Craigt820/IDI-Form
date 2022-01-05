package com.idi.demo.dao;

import com.idi.demo.beans.ProjectInfo;

import java.util.List;


public interface ProjectDao {
	
	public List<ProjectInfo>getProjects();
	public void removeProject(int id);
    public ProjectInfo getProjectById(int id);
}
