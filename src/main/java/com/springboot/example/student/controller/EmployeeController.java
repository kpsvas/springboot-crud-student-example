package com.springboot.example.student.controller;

import com.springboot.example.student.model.Employee;
import com.springboot.example.student.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping (value="employee")
public class EmployeeController {

    @Autowired
    EmployeeRepository employeeRepository;

    @RequestMapping (value = "/list", method = RequestMethod.GET)
    public String getEmployees(Model model){
        List<Employee> employees = employeeRepository.findAll();
        model.addAttribute("employees", employees);
        return "employee/employees";
    }

}
