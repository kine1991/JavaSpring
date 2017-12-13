package ru.nikolay.springDataJpa.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.nikolay.springDataJpa.model.Employee;
import ru.nikolay.springDataJpa.service.EmployeeService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class ControllerSpringDataJpa {

    @Autowired
    private EmployeeService employeeService;


    @RequestMapping(value = "/springDataJpa", method = RequestMethod.GET)
    public String listEmployee(Model model) {
        model.addAttribute("employee", new Employee());
        model.addAttribute("listEmployee", this.employeeService.listEmployee());
        return "springDataJpa/employee";
    }

    @RequestMapping(value = "/springDataJpa/add", method = RequestMethod.POST)
    public String addEmployye(@ModelAttribute("employee") Employee employee) {
        if (employee.getId() == null) {
            this.employeeService.addEmploee(employee);
        } else {
            this.employeeService.updateEmployee(employee);
        }
//        this.employeeService.addEmploee(employee);
        return "redirect:/springDataJpa";
    }

    @RequestMapping("/removeEmployee/{id}")
    public String removeEmployee(@PathVariable("id") Long id, Model model) {
        this.employeeService.removeEmployee(id);
        return "redirect:/springDataJpa";
    }
//
    @RequestMapping("/editEmployee/{id}")
    public String editEmployee(@PathVariable("id") Long id, Model model) {
        model.addAttribute("employee", this.employeeService.getEmployeeById(id));
        model.addAttribute("listEmployee", this.employeeService.listEmployee());
        return "springDataJpa/employee";
    }

//    @RequestMapping("employee/{id}")
//    public String employeeData(@PathVariable("id") Long id, Model model) {
//        model.addAttribute("employee", this.employeeService.getEmployeeById(id));
//        return "employeeData";
//    }




//    @RequestMapping(value="/employeeSearch/{id}")
//    public ModelAndView Search2(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request, HttpServletResponse response) {
//        ModelAndView mav = new ModelAndView("springDataJpa/employee");
//
//        mav.addObject("id", id);
//        mav.addObject("searchResult", this.employeeService.getEmployeeById(id));
//
//        System.out.println(id);
//        return mav;
//    }


    @RequestMapping(value="/employeeSearch/{char}")
    public ModelAndView Search2(@RequestParam(value = "char", required = false) String firstName, HttpServletRequest request, HttpServletResponse response, Employee employee) {
        ModelAndView mav = new ModelAndView("springDataJpa/employee");
        mav.addObject("employee", employee);
        mav.addObject("char", firstName);

        System.out.println(firstName+"!!!");
        if (firstName!=""){
            mav.addObject("searchResult", this.employeeService.findEmployeeByFirstName(firstName));
        }else {
            mav.addObject("message", "Must not be empty!");
        }
        mav.addObject("listEmployee", this.employeeService.listEmployee());
        return mav;

    }










//    @RequestMapping(value = "/employeeSearch/{searchByFirstName}" , method = RequestMethod.POST)
//    public String employeeSearch(@PathVariable("searchByFirstName") String firstName, Model model, Employee employee) {
//        model.addAttribute("searchByFirstName", firstName);
//        model.addAttribute("searchResult", this.employeeService.findEmployeeByFirstName("aaa"));
//        System.out.println(firstName);
//        return "springDataJpa/employee";
//    }

}