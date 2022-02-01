package com.pma.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pma.spring.web.entity.ProjectRegister;
import com.pma.spring.web.repository.ProjectRepository;

@Service
public class ProjectServiceImpl implements ProjectService{
	
	@Autowired
	ProjectRepository projectRepository;

	@Override
	public ProjectRegister save(ProjectRegister project) {
		ProjectRegister optionalSave = projectRepository.save(project) ;
		return optionalSave;
	}
	
	@Override
	public List<ProjectRegister> findAll() {
		// TODO Auto-generated method stub		
		List<ProjectRegister> projectList = projectRepository.findAll();		
		if(projectList.isEmpty()) {
			return null;
		}
		return projectList;
	}

}
