package com.springboot.example.student.controller;

import com.springboot.example.student.model.Student;
import com.springboot.example.student.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class StudentController {

    @Autowired
    public StudentService studentService;

    @RequestMapping(value="/listStudent", method = RequestMethod.GET)
    public String listStudent(Model model)
    {
        List<Student> studentList = studentService.getStudents();
        model.addAttribute("students", studentList);
        return "listStudent";
    }

    @RequestMapping(value="/addStudent", method = RequestMethod.GET)
    public String showStudent(Model model)
    {
        model.addAttribute("student", new Student());
        return "student";
    }

    @RequestMapping(value="/addStudent", method = RequestMethod.POST)
    public String addStudent(@ModelAttribute("student") Student student, Model model)
    {
        if(student != null){
            studentService.saveStudent(student);
            model.addAttribute("warning", "Student Registration Success");
        }
        else{
            model.addAttribute("danger","Something Going Bad" );
        }
        return "redirect:/listStudent";
    }

    @RequestMapping(value="/deleteStudent", method = RequestMethod.GET)
    public String deleteStudent(@RequestParam ("id") Integer id,  Model model)
    {
        Student student = studentService.getStudentById(id);
        studentService.deleteStudent(student);
        return "redirect:/listStudent";
    }

    @RequestMapping(value="/editStudent", method = RequestMethod.GET)
    public String editStudent(@RequestParam ("id") Integer id,  Model model)
    {
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "editStudent";
    }

    @RequestMapping(value="/editStudent", method = RequestMethod.POST)
    public String editStudent(@ModelAttribute("student") Student student, Model model)
    {
        Student studentDb = studentService.getStudentById(student.getId());
        if(studentDb != null){
            studentDb.setName(student.getName());
            studentDb.setEmail(student.getEmail());
            studentDb.setAddress(student.getAddress());
            studentService.saveStudent(studentDb);
            model.addAttribute("warning", "Student Registration Success");
        }
        else{
            model.addAttribute("danger","Something Going Bad" );
        }
        return "redirect:/listStudent";
    }
}
