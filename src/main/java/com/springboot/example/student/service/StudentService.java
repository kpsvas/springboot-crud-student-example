package com.springboot.example.student.service;

import com.springboot.example.student.model.Student;

import java.util.List;

public interface StudentService {

    List<Student> getStudents();

    Student saveStudent(Student student);

    void deleteStudent(Student student);

    Student getStudentById(Integer id);

}
