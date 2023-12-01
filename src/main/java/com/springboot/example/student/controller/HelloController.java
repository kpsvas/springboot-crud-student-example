package com.springboot.example.student.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


/**
 * @author Srinivas
 */

@Controller
public class HelloController {


    /**
     * This is method for student registration *
     * @param name
     * @param model
     * @return
     */
    @GetMapping({"/", "/index"})
    public String hello(@RequestParam(value = "name", defaultValue = "World",
            required = true) String name, Model model) {
        model.addAttribute("name", name);
        return "index";
    }
}
