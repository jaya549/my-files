package org.HealthCare.Controller;



import org.HealthCare.Service.DoctorService;
import org.HealthCare.Service.PatientService;
import org.HealthCare.Service.PractitionerService;
import org.HealthCare.model.Doctor;
import org.HealthCare.model.Patient;
import org.HealthCare.model.Practitioner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private DoctorService doctorService;
	@Autowired
	private PractitionerService practitionerService;
	@Autowired
	private PatientService patientService;

	
	
	@GetMapping("/savedoctor")
	public String saveDoctor(@RequestParam String name,@RequestParam String password, @RequestParam String specialist, @RequestParam int experience, @RequestParam String address, @RequestParam String emailId, @RequestParam Long contactNumber) {
		Doctor doctor = new Doctor(name,password,specialist,experience,address,emailId,contactNumber);
		doctorService.saveMyDoctor(doctor);
		return "Doctor Saved";
	}
	
	@GetMapping("/savepractitioner")
	public String savePractitioner(@RequestParam String name,@RequestParam String password, @RequestParam String specialist, @RequestParam String address, @RequestParam String emailId, @RequestParam Long contactNumber) {
		Practitioner practitioner = new Practitioner(name,password,specialist,address,emailId,contactNumber);
		practitionerService.saveMyPractitioner(practitioner);
		return "Practitioner Saved";
	}
	
	@GetMapping("/savepatient")
	public String savePatient(@RequestParam String name,@RequestParam String password, @RequestParam String address,@RequestParam String gender,@RequestParam String disease, @RequestParam String emailId, @RequestParam Long contactNumber) {
		Patient patient = new Patient(name,password,address,gender,disease,emailId,contactNumber);
		patientService.saveMyPatient(patient);
		return "Patient Saved";
	}
}

