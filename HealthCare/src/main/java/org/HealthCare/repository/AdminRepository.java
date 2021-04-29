package org.HealthCare.repository;


import org.HealthCare.model.Admin;
import org.springframework.data.repository.CrudRepository;

public interface AdminRepository extends CrudRepository<Admin, Integer>{
	public Admin findByNameAndPassword(String name, String password);

}
