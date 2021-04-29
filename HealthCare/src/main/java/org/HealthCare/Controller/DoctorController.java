package org.HealthCare.Controller;



import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.HealthCare.Service.DoctorService;
import org.HealthCare.model.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DoctorController {

	@Autowired
	private DoctorService doctorService;
	
	@GetMapping("/")
	public String hello() {
		return "index";
	}
	
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage";
	}
	@PostMapping("/save-doctor1")
	public String editDoctor(@ModelAttribute Doctor doctor, BindingResult bindingResult, HttpServletRequest request) {
		doctorService.saveMyDoctor(doctor);
		request.setAttribute("mode", "MODE_HOME");
		return "adminSuccess";
	}
	@PostMapping("/save-doctor")
	public String registerUser(@ModelAttribute Doctor doctor, BindingResult bindingResult, HttpServletRequest request) {
		doctorService.saveMyDoctor(doctor);
		request.setAttribute("mode", "MODE_HOME");
		return "doctorRegSuccess";
	}

	@GetMapping("/show-doctors")
	public String showAllUsers(HttpServletRequest request) {
		request.setAttribute("doctors", doctorService.showAllDoctors());
		request.setAttribute("mode", "ALL_DOCTORS");
		return "adminSuccess";
	}

	@RequestMapping("/delete-doctor")
	public String deleteUser(@RequestParam int id, HttpServletRequest request) {
		doctorService.deleteMyDoctor(id);
		request.setAttribute("doctors", doctorService.showAllDoctors());
		request.setAttribute("mode", "ALL_DOCTORS");
		return "adminSuccess";
	}
	
	@RequestMapping("/edit-doctor")
	public String editDoctor(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("doctor", doctorService.get(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcomepage";
	}
	
	
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
	}
	
	@RequestMapping ("/login-doctor")
	public String loginUser(@ModelAttribute Doctor doctor, HttpServletRequest request) {
		if(doctorService.findByUsernameAndPassword(doctor.getName(), doctor.getPassword())!=null) {
			return "doctorLoginSuccess";
		}
		else {
			request.setAttribute("error", "Invalid Name or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
			
		}
	}

	
}


	
	
	

