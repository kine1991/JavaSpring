package ru.nikolay.jdbcTemplate.bd;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.nikolay.jdbcTemplate.objects.User;

import java.security.Principal;
import java.util.List;

@Controller
public class JDBCController {




    @Autowired
	private JDBCExample jdbcExample;

    @Secured(value = {"ROLE_USER", "ROLE_ADMIN"})
//	@PreAuthorize("#user.name == 'admin'")
	@RequestMapping(value = "/jdbcQueryAllUsers", method = RequestMethod.GET)
	public ModelAndView jdbcSelectAllUsers() {
		List<User> users = jdbcExample.queryAllUsers();
		users.toString();
		System.out.println(users.get(1));
		return new ModelAndView("jdbc/jdbc", "resultObject", users);
	}


//	@PreAuthorize("#user.name == 'admin'")
//	public void preAuthorizeMessageExample(Principal user) {
//		System.out.println("PreAuthorizeMessageExample" +user.getName());
//	}



    @RequestMapping(value = "/getUserById", method = RequestMethod.GET)
    public ModelAndView checkUser1(@ModelAttribute("user") User user) {


        System.out.println("привет как дела "+user);

//        jdbcExample.getUserById(1);

        return new ModelAndView("/delete","qqq", jdbcExample);
    }






}
