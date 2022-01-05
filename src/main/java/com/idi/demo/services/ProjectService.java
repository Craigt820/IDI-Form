package com.idi.demo.services;

import com.idi.demo.beans.ProjectInfo;

import java.util.List;


public interface ProjectService {
	
	public List<ProjectInfo>getProjects();
	public void removeProject(int id);
    public ProjectInfo getProjectById(int id);
}
