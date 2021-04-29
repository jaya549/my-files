package com.cognizant.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cognizant.model.Course;
import com.cognizant.model.Employee;
import com.cognizant.model.Question;
import com.cognizant.service.CourseService;
import com.cognizant.service.EmployeeService;
import com.cognizant.service.QuestionService;
import com.cognizant.service.SkillService;
import com.cognizant.model.Skills;

@Controller
public class AdminController {
	@Autowired
	private EmployeeService eservice;
	@Autowired
	private SkillService skillsrv;	
	@Autowired
	private CourseService coursesrv;
	@Autowired
	private QuestionService questionsrv;
	@Autowired
	private HttpSession session;
	
	@GetMapping("/admin")
	public String AdminHome() {
		return "AdminHome";
	}
	
	@GetMapping("/employees")
	public String Employees(Model model) {
		List<Employee> list=eservice.findAll();
		model.addAttribute("list", list);
		return "Employees";
	}
	
	@GetMapping("/activate/{userid}")
	public String Activate(@PathVariable("userid") String userid){
		Employee emp=eservice.findById(userid).get();
		emp.setIsactive("Y");
		eservice.save(emp);
		return "redirect:/employees";
	}
	
	@GetMapping(path = {"/skills","/skills/{id}"})
	public String Skills(@PathVariable(name="id",required = false) Optional<Integer> id,Model model) {
		model.addAttribute("skills", skillsrv.findAll());
		if(id.isPresent()) {
			model.addAttribute("edit", true);
			model.addAttribute("ss", skillsrv.findById(id.get()).get());
		}
		return "Skills";
	}
	
	@PostMapping("/skills")
	public String SaveSkill(Skills skill){
		skillsrv.save(skill);
		session.setAttribute("msg", "Your details are submitted successfully");
		return "redirect:/skills";
	}	
	
	@GetMapping(path = {"/courses","/courses/{ccode}"})
	public String Courses(@PathVariable(name="ccode",required=false) String ccode,Model model) {
		System.out.println(ccode);
		if(ccode!=null) {
			Course c=coursesrv.findById(ccode).get();
			model.addAttribute("isedit", true);
			model.addAttribute("course", c);
			model.addAttribute("ccode",c.getCcode());
		}else {
			long count=coursesrv.count();
			model.addAttribute("ccode", String.format("CR%03d",count+1));
		}
		model.addAttribute("courses", coursesrv.findAll());
		model.addAttribute("skills", skillsrv.findAll());
		return "Courses";
	}
	
	@PostMapping("/savecourse")
	public String SaveCourse(Course c){
		coursesrv.save(c);
		session.setAttribute("msg", "Your details are submitted successfully");
		return "redirect:/courses";
	}
	
	@GetMapping(path = {"/questions/{ccode}"})
	public String Questions(@PathVariable(name="ccode") String ccode,Model model) {
		Course c=coursesrv.findById(ccode).get();
		model.addAttribute("c", c);
		model.addAttribute("questions", questionsrv.findByCcode(c));
		return "Questions";
	}
	
	@GetMapping(path = {"/addques/{ccode}"})
	public String AddQuestion(@PathVariable(name="ccode") String ccode,Model model) {
		Course c=coursesrv.findById(ccode).get();
		model.addAttribute("c", c);
		model.addAttribute("qid", questionsrv.countByCcode(c)+1);
		model.addAttribute("questions", questionsrv.findByCcode(c));
		return "AddQuestion";
	}
	
	@PostMapping("/savequestion")
	public String SaveQuestion(Question q) {
		System.out.println(q);
		questionsrv.save(q);
		session.setAttribute("msg", "Your details are submitted successfully");
		return "redirect:/questions/"+q.getCcode().getCcode();
	}
	
	@GetMapping(path = {"/editques/{id}"})
	public String EditQuestion(@PathVariable(name="id") int id,Model model) {
		Question q=questionsrv.findById(id).get();
		model.addAttribute("q", q);
		return "EditQuestion";
	}
	
}
