package org.HealthCare.Controller;



import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.HealthCare.Service.PractitionerService;
import org.HealthCare.model.Practitioner;
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
public class PractitionerController {

	@Autowired
	private PractitionerService practitionerService;
	
	@RequestMapping("/welcome1")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage1";
	}

	@RequestMapping("/register1")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage1";
	}
	@PostMapping("/save-practitioner1")
	public String editPractitioner(@ModelAttribute Practitioner practitioner, BindingResult bindingResult, HttpServletRequest request) {
		practitionerService.saveMyPractitioner(practitioner);
		request.setAttribute("mode", "MODE_HOME");
		return "adminSuccess";
	}

	@PostMapping("/save-practitioner")
	public String registerPractitioner(@ModelAttribute Practitioner practitioner, BindingResult bindingResult, HttpServletRequest request) {
		practitionerService.saveMyPractitioner(practitioner);
		request.setAttribute("mode", "MODE_HOME");
		return "practitionerRegSuccess";
	}

	@GetMapping("/show-practitioners")
	public String showAllPractitioners(HttpServletRequest request) {
		request.setAttribute("practitioners", practitionerService.showAllPractitioners());
		request.setAttribute("mode", "ALL_PRACTITIONERS");
		return "adminSuccess";
	}

	@RequestMapping("/delete-practitioner")
	public String deletePractitioner(@RequestParam int id, HttpServletRequest request) {
		practitionerService.deleteMyPractitioner(id);
		request.setAttribute("practitioners", practitionerService.showAllPractitioners());
		request.setAttribute("mode", "ALL_PRACTITIONERS");
		return "adminSuccess";
	}
	
	@RequestMapping("/edit-practitioner")
	public String editPractitioner(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("practitioner", practitionerService.get(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcomepage1";
	}
	
	
	
	@RequestMapping("/login1")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage1";
	}
	
	@RequestMapping ("/login-practitioner")
	public String loginUser(@ModelAttribute Practitioner practitioner, HttpServletRequest request) {
		if(practitionerService.findByUsernameAndPassword(practitioner.getName(), practitioner.getPassword())!=null) {
			return "practitionerLoginSuccess";
		}
		else {
			request.setAttribute("error", "Invalid Name or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage1";
			
		}
	}

	
}


	
	
	

