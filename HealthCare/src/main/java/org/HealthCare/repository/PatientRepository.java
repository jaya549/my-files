package org.HealthCare.repository;


import org.HealthCare.model.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface PatientRepository extends CrudRepository<Patient, Integer>,JpaRepository<Patient, Integer> {

	public Patient findByNameAndPassword(String name, String password);
}
