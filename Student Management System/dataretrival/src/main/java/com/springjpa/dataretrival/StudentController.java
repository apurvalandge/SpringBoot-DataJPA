package com.springjpa.dataretrival;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springjpa.dataretrival.entities.Student;
import com.springjpa.dataretrival.services.StudentServices;


@Controller
public class StudentController {

	@Autowired
	private StudentServices studServ;
	@GetMapping("/")
	public String home()
	{
	return "index.html";	
	}
	
	@GetMapping("/student")
	public String add() {
		return "AddStudent.html";
	}
	
	@PostMapping("/addstud")
	public String addStudent(Student obj , Model M)
	{
		String status = studServ.addNewStudent(obj);
		if("success".equals(status)) {
		 M.addAttribute("msg" , "Student added successfully");
		} else {
		 M.addAttribute("msg" , "Failed to add student");
		}
		 return "Status.jsp";
		
	}
	
	@GetMapping("/students")
	public String showStudents (Model M)
	{
		List<Student> list=studServ.getAllStudents();
		M.addAttribute("students",list);
		return "StudentList.jsp";
		
	}
	
	@GetMapping("/update")
	public String updateStud()
	{
		return "UpdateStudent.jsp";
	}
	
	@PostMapping("/updatestudent")
	public String updateStud(Student obj, Model M)
	{
		String status= studServ.updateStudent(obj);
		if("Updated".equals(status)) {
			M.addAttribute("msg","Updated Successfully");
		}
		else {
			M.addAttribute("msg", "Failed to Update");
		}
		return "Status.jsp";
	}
	
	@GetMapping("/delete")
	public String delStudent()
	{
		return "DeleteStudent.html";
	}
	
	@PostMapping("/deletestudent")
	public String deletestud(int rollno, Model M)
	{
		String status= studServ.deleteStudent(rollno);
		if("success".equals(status)) {
			M.addAttribute("msg","Deleted Successfully");
		}
		else {
			M.addAttribute("msg", "Failed to Delete");
		}
		return "Status.jsp";
	}
	
	@GetMapping("/search")
	public String searchStud()
	{
		return "SearchStudent.jsp";
	}
	
	@PostMapping("/searchsoncourse")
	public String search(String course,Model m)
	{
		List<Student> list=studServ.searchOnCourse(course);
		m.addAttribute("students", list);
		return "StudentList.jsp";
	}
	
	@PostMapping("/searchonrollno")
	public String searchRollno(@RequestParam(required = false) Integer rollno, Model m) {

			Student obj=studServ.searchOnRolloRange(rollno);
					m.addAttribute("data" ,obj);
			return "SearchResult.jsp";
		
		
	}
}
