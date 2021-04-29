package org.HealthCare.repository;


import org.HealthCare.model.Practitioner;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface PractitionerRepository extends CrudRepository<Practitioner, Integer>,JpaRepository<Practitioner, Integer> {	
	
	public Practitioner findByNameAndPassword(String name, String password);
}
