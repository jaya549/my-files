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
import com.cognizant.model.ExamQuiz;
import com.cognizant.model.Question;
import com.cognizant.model.Skills;
import com.cognizant.service.CourseService;
import com.cognizant.service.EmployeeService;
import com.cognizant.service.QuestionService;
import com.cognizant.service.SkillService;

@Controller
public class EmployeeController {
	
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
	
	@GetMapping(path={"/skillslist","/skillslist/{id}"})
	public String skills(@PathVariable(name="id",required = false) Optional<Integer> id, Model model) {
		model.addAttribute("skills", skillsrv.findAll());
		if(id.isPresent()) {
			model.addAttribute("show", true);
			Skills skill=skillsrv.findById(id.get()).get();
			model.addAttribute("skill",skill);
			List<Course> clist=coursesrv.findBySkill(skill);
			model.addAttribute("clist", clist);
		}
		return "SkillLists";
	}
	
	@GetMapping("/assessments")
	public String Asssessments(Model model) {
		model.addAttribute("courses", coursesrv.findAll());
		return "Assessments";
	}
	
	@GetMapping("/assess/{ccode}")
	public String AsssessmentDetails(@PathVariable(name="ccode") String ccode,Model model) {
		Course c=coursesrv.findById(ccode).get();
		model.addAttribute("c", c);
		model.addAttribute("qcount", questionsrv.countByCcode(c));
		return "AssessDetails";
	}
	
	@GetMapping("/exam/{ccode}")
	public String Examination(@PathVariable(name="ccode") String ccode,Model model){
		Course c=coursesrv.findById(ccode).get();
		List<Question> qlist=questionsrv.findByCcode(c);
		model.addAttribute("qlist", qlist);
		model.addAttribute("ccode", ccode);
		return "Examination";
	}
	
	@PostMapping("/saveexam")
	public String SubmitExamination(ExamQuiz exam,Model model){
		int correct=0;
		int total=exam.getCans().size();
		for(int i=0;i<total;i++) {
			if(exam.getAns().get(i).equals(exam.getCans().get(i)))
				correct++;
		}
		model.addAttribute("correct", correct);
		model.addAttribute("total", total);
		model.addAttribute("result", correct*100/total > 40 ? "Pass":"Fail");
		return "ExamResult";
	}
	
	@GetMapping(path={"/elearning","/start/{id}"})
	public String elearning(@PathVariable(name="id",required = false) Optional<Integer> id, Model model) {
		model.addAttribute("skills", skillsrv.findAll());
		if(id.isPresent()) {
			model.addAttribute("id", id.get());
			model.addAttribute("show", true);
			if(id.get()==1)
				model.addAttribute("skill", "Java");
			else
				model.addAttribute("skill", "Python");
		}
		return "ELearning";
	}
	
	@GetMapping(path={"/learn/{id}/{ch}"})
	public String learnSkill(@PathVariable(name="id") Integer id,@PathVariable(name="ch") Integer ch, Model model) {
		model.addAttribute("skills", skillsrv.findAll());
		if(id==1)
			return "java/ch"+ch;
		else
			return "python/ch"+ch;
	
	}
}
