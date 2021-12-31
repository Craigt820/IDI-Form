package com.idi.demo.controller;

import java.util.List;


public interface ProjectService {
	
	public List<ProjectInfo>getProjects(); 
	public void removeProject(int id);
    public ProjectInfo getProjectById(int id);
}
