package com.cognizant.service;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Course;
import com.cognizant.model.Question;
import com.cognizant.model.Skills;

@Repository
public interface CourseService  extends JpaRepository<Course,String>{
	@Query("SELECT c FROM Course c WHERE c.skill = ?1")
    List<Course> findBySkill(Skills skill);
}
