package org.HealthCare.Service;

import java.util.ArrayList;
import java.util.List;

import org.HealthCare.model.Patient;
import org.HealthCare.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class PatientService {
	@Autowired
	private PatientRepository patientRepository;
	
	public PatientService(PatientRepository patientRepository) {
		this.patientRepository=patientRepository;
	}
	
	public void saveMyPatient(Patient patient ) {
		patientRepository.save(patient);
	}
	
	public List<Patient> showAllPatients(){
		List<Patient> patients = new ArrayList<Patient>();
		for(Patient patient : patientRepository.findAll()) {
			patients.add(patient);
		}
		
		return patients;
	}
	
	public void deleteMyPatient(int id) {
		patientRepository.deleteById(id);
	}
	
	public Patient get(int id) {
		return patientRepository.findById(id).get();
	}
	

	
	public Patient findByUsernameAndPassword(String name, String password) {
		return patientRepository.findByNameAndPassword(name, password);
	}
	


}
