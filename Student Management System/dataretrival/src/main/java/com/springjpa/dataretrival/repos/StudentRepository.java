package com.springjpa.dataretrival.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.springjpa.dataretrival.entities.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student , Integer>{

	List <Student> findByCourse(String course);
	Student findByRollno(int rollno);
	
	@Query("select s from Student s where s.rollno between :min and :max")
	List <Student> findByStudentsInRollnoRange(@Param("min") int min, @Param("max") int max);
	
	@Query("select count (s) from Student s where s.course = :course")
	long countByCourse(@Param("course") String course);
}
