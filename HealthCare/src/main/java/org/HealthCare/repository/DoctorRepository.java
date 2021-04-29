package org.HealthCare.repository;

import org.HealthCare.model.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface DoctorRepository extends CrudRepository<Doctor, Integer>,JpaRepository<Doctor, Integer> {	
	
	public Doctor findByNameAndPassword(String name, String password);
}
