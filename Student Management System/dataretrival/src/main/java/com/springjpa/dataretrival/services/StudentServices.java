package com.springjpa.dataretrival.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springjpa.dataretrival.entities.Student;
import com.springjpa.dataretrival.repos.StudentRepository;

@Service
public class StudentServices {
	
	@Autowired
	private StudentRepository studRepo;
	
	public String addNewStudent (Student obj)
	{
		
		try {
			studRepo.save(obj);
			return "success";
		}
		catch(Exception e) {
			return "Failed";
		}
		
	}
	
	public List<Student> getAllStudents()
	{
		List<Student> list=studRepo.findAll();
		return list;
	}
	
	public String updateStudent (Student obj) {
		Optional<Student> existing=studRepo.findById(obj.getRollno());
		if(existing.isPresent()) {
			studRepo.save(obj);
			return "Updated";
		}
		else {
			return "Not Found";
		}
	}
	
	public String deleteStudent(int rollno)
	{
		Student obj= studRepo.findByRollno(rollno);
		if(obj!=null)
		{
			System.out.println(obj.getRollno());
			System.out.println(obj.getStudnm());
			studRepo.delete(obj);
			return "success";
		}
		else {
			return "failed";
		}
	}
	
	public List<Student> searchOnCourse(String course)
	{
		List<Student> list=studRepo.findByCourse(course);
		return list;
	}
	
	public Student searchOnRolloRange(int rollno)
	{
		return studRepo.findByRollno(rollno);
	
	}

}
