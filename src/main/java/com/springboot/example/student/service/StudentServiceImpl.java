package com.springboot.example.student.service;

import com.springboot.example.student.model.Student;
import com.springboot.example.student.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    public StudentRepository studentRepository;

    public List<Student> getStudents(){

        return studentRepository.findAll();
    }

    public Student saveStudent(Student student)
    {
        Student studentDb = studentRepository.save(student);
        return studentDb;
    }


   public void deleteStudent(Student student){
            studentRepository.delete(student);
    }

    @Override
    public Student getStudentById(Integer id) {
        return studentRepository.findById(id).orElse(null);
    }

}
