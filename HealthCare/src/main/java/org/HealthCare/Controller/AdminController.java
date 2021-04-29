package org.HealthCare.Controller;

import javax.servlet.http.HttpServletRequest;

import org.HealthCare.Service.AdminService;
import org.HealthCare.model.Admin;
import org.HealthCare.model.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/welcome3")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage3";
	}
	
	@RequestMapping("/loginAdmin")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "adminLogin";
	}
	
	@RequestMapping ("/login-admin")
	public String loginUser(@ModelAttribute Admin admin, HttpServletRequest request) {
		if(adminService.findByUsernameAndPassword(admin.getName(), admin.getPassword())!=null) {
			return "adminSuccess";
		}
		else {
			request.setAttribute("error", "Invalid Name or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage3";
			
		}
	}
	
}
