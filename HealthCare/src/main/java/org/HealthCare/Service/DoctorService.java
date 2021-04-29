package org.HealthCare.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.HealthCare.model.Doctor;
import org.HealthCare.repository.DoctorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DoctorService {
	@Autowired
	private DoctorRepository doctorRepository;
	
	
	public DoctorService(DoctorRepository doctorRepository) {
		this.doctorRepository=doctorRepository;
	}
	
	public void saveMyDoctor(Doctor doctor ) {
		doctorRepository.save(doctor);
	}
	
	public List<Doctor> showAllDoctors(){
		List<Doctor> doctors = new ArrayList<Doctor>();
		for(Doctor doctor : doctorRepository.findAll()) {
			doctors.add(doctor);
		}
		
		return doctors;
	}
	
	public void deleteMyDoctor(int id) {
		doctorRepository.deleteById(id);
	}
	
	public Doctor get(int id) {
		return doctorRepository.findById(id).get();
	}
	

	
	public Doctor findByUsernameAndPassword(String name, String password) {
		return doctorRepository.findByNameAndPassword(name, password);
	}
	

	
	

}
