package ru.nikolay.jdbcTemplate.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ru.nikolay.jdbcTemplate.bd.JDBCExample;

import java.security.Principal;

@Controller
public class LoginController {

	@Autowired
	private JDBCExample jdbcExample;


	@RequestMapping(value = {"/", "login"}, method = RequestMethod.GET)
	public ModelAndView login2(@RequestParam(value = "error", required = false) String error) {
		ModelAndView modelAndView = new ModelAndView();
		if (error != null) {
			modelAndView.addObject("error", "Invalid username or password!");
		}
		modelAndView.setViewName("login");
		return modelAndView;
	}


	@RequestMapping(value = "/check-user2", method = RequestMethod.GET)
	public ModelAndView checkUser2() {
		return new ModelAndView("security/main");

	}


	@RequestMapping(value = "/accessDenied1", method = RequestMethod.GET)
	public ModelAndView accessDenied(Principal user) {
		ModelAndView model = new ModelAndView();

		if (user != null) {
			model.addObject("errorMsg", user.getName() + " you do not have access to this page");
		} else {
			model.addObject("errorMsg", " you do not have access to this page");
		}
		model.setViewName("/security/accessDenied");
		return model;
	}





















}
