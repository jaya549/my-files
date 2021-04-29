package com.cognizant.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cognizant.model.Admin;
import com.cognizant.model.Employee;
import com.cognizant.service.AdminService;
import com.cognizant.service.EmployeeService;

@Controller
public class HomeController {
	
	@Autowired
	private EmployeeService eservice;
	@Autowired
	private AdminService admin;
	@Autowired
	private HttpSession session;
	
	@GetMapping("/")
	public String HomePage() {
		if(admin.count()==0) {
			admin.save(new Admin("admin","admin","Admin"));
		}
		return "index";
	}
	
	@GetMapping("/login")
	public String LoginPage() {
		return "Login";		
	}
	
	@PostMapping("/login")
	public String Validate(String userid,String pwd,String role) {
		if(role.equals("Admin")) {
			Optional<Admin> res=admin.findById(userid);
			if(res.isPresent()) {
				if(!res.get().getPwd().equals(pwd)) {
					session.setAttribute("error", "Incorrect password");
					return "redirect:/login";
				}else {
					session.setAttribute("userid", userid);
					session.setAttribute("role", role);
					session.setAttribute("name", "Administrator");
					return "redirect:/admin";
				}
			}else {
				session.setAttribute("error", "Incorrect userid");
				return "redirect:/login";
			}
		}
		else {
		Optional<Employee> result=eservice.findById(userid);
		
		if(result.isPresent()) {
				Employee emp=result.get();
				if(!emp.getPwd().equals(pwd)) {
					session.setAttribute("error", "Incorrect password");
					return "redirect:/login";
				}
				else if(emp.getIsactive().equals("N")) {
					session.setAttribute("error", "Userid not active. Contact Administrator");
					return "redirect:/login";
				}				
				else {
					session.setAttribute("userid", userid);
					session.setAttribute("role", emp.getRole());
					session.setAttribute("name", emp.getFname());
					return "redirect:/emps";
				}
			}else {
				session.setAttribute("error", "Incorrect userid");
				return "redirect:/login";
			}		
		}
	}
	
	@GetMapping("/register")
	public String RegisterPage(Model model) {
		long count=eservice.count();
		model.addAttribute("userid", String.format("user%03d",count+1));
		return "Register";
	}
	
	@PostMapping("/register")
	public String Registration(Employee emp) {
		emp.setRole("Employee");
		emp.setIsactive("N");
		eservice.save(emp);
		session.setAttribute("msg", "Your details have been saved successfully");
		return "redirect:/register";
	}
	
	@GetMapping("/emps")
	public String EmpHome() {
		return "EmpHome";
	}
	
	@GetMapping("/logout")
	public String Logout() {
		session.invalidate();
		return "redirect:/login";
	}
}
