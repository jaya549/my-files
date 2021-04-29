package org.HealthCare.Controller;

import javax.servlet.http.HttpServletRequest;

import org.HealthCare.Service.PatientService;
import org.HealthCare.model.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PatientController {
	@Autowired
	private PatientService patientService;
	
	
	
	@RequestMapping("/welcome2")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage2";
	}

	@RequestMapping("/register2")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage2";
	}
	@PostMapping("/save-patient1")
	public String editPatient(@ModelAttribute Patient patient, BindingResult bindingResult, HttpServletRequest request) {
		patientService.saveMyPatient(patient);
		request.setAttribute("mode", "MODE_HOME");
		return "adminSuccess";
	}

	@PostMapping("/save-patient")
	public String registerPatient(@ModelAttribute Patient patient, BindingResult bindingResult, HttpServletRequest request) {
		patientService.saveMyPatient(patient);
		request.setAttribute("mode", "MODE_HOME");
		return "patientRegSuccess";
	}

	@GetMapping("/show-patients")
	public String showAllUsers(HttpServletRequest request) {
		request.setAttribute("patients", patientService.showAllPatients());
		request.setAttribute("mode", "ALL_PATIENTS");
		return "adminSuccess";
	}

	@RequestMapping("/delete-patient")
	public String deleteUser(@RequestParam int id, HttpServletRequest request) {
		patientService.deleteMyPatient(id);
		request.setAttribute("patients", patientService.showAllPatients());
		request.setAttribute("mode", "ALL_PATIENTS");
		return "adminSuccess";
	}
	
	@RequestMapping("/edit-patient")
	public String editPatient(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("patient", patientService.get(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcomepage2";
	}
	
	
	
	@RequestMapping("/login2")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage2";
	}
	
	@RequestMapping ("/login-patient")
	public String loginUser(@ModelAttribute Patient patient, HttpServletRequest request) {
		if(patientService.findByUsernameAndPassword(patient.getName(), patient.getPassword())!=null) {
			return "patientLoginSuccess";
		}
		else {
			request.setAttribute("error", "Invalid Name or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage2";
			
		}
	}

	

}
