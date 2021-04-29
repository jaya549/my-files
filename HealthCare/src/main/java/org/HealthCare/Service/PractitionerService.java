package org.HealthCare.Service;

import java.util.ArrayList;
import java.util.List;

import org.HealthCare.model.Practitioner;
import org.HealthCare.repository.PractitionerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PractitionerService {
	@Autowired
	private PractitionerRepository practitionerRepository;
	
	
	public PractitionerService(PractitionerRepository practitionerRepository) {
		this.practitionerRepository=practitionerRepository;
	}
	
	public void saveMyPractitioner(Practitioner practitioner ) {
		practitionerRepository.save(practitioner);
	}
	
	public List<Practitioner> showAllPractitioners(){
		List<Practitioner> practitioners = new ArrayList<Practitioner>();
		for(Practitioner practitioner : practitionerRepository.findAll()) {
			practitioners.add(practitioner);
		}
		
		return practitioners;
	}
	
	public void deleteMyPractitioner(int id) {
		practitionerRepository.deleteById(id);
	}
	
	public Practitioner get(int id) {
		return practitionerRepository.findById(id).get();
	}
	
	
	public Practitioner findByUsernameAndPassword(String name, String password) {
		return practitionerRepository.findByNameAndPassword(name, password);
	}
	


}
