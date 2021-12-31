package com.idi.demo.controller;

import java.util.List;


public interface ProjectDao {
	
	public List<ProjectInfo>getProjects(); 
	public void removeProject(int id);
    public ProjectInfo getProjectById(int id);
}
