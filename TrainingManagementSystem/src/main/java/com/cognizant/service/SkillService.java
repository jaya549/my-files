package com.cognizant.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Skills;

@Repository
public interface SkillService extends JpaRepository<Skills, Integer> {
	
}
