package com.cognizant.service;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Course;
import com.cognizant.model.Question;

@Repository
public interface QuestionService  extends JpaRepository<Question,Integer>{
	
	@Query("SELECT q FROM Question q WHERE q.ccode = ?1")
    List<Question> findByCcode(Course ccode);
	
	@Query("SELECT count(q) FROM Question q WHERE q.ccode = ?1")
    int countByCcode(Course ccode);
}
