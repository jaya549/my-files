package org.HealthCare.Service;


import org.HealthCare.model.Admin;
import org.HealthCare.repository.AdminRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AdminService {
	private AdminRepository adminRepository;

	public AdminService(AdminRepository adminRepository) {
		super();
		this.adminRepository = adminRepository;
	}

	public Admin findByUsernameAndPassword(String name, String password) {
		return adminRepository.findByNameAndPassword(name, password);
	}
	

}
