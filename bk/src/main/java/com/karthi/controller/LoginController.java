package com.karthi.controller;

//import java.util.List;

import javax.servlet.http.HttpSession;
//import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
//import org.springframework.validation.BindingResult;
//import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.karthi.model.User;
import com.karthi.service.UserService;

@Controller
@RequestMapping("log")
public class LoginController {
	private static final Logger LOGGER = Logger.getLogger(LoginController.class);

	@Autowired
	private UserService userService;

	@PostMapping("/login")
	public String login(@RequestParam("emailId") String userName, @RequestParam("password") String password,
			ModelMap modelMap, HttpSession session) {
		/*LOGGER.info("Entering Login " + userName + "-"+ password );
		LOGGER.debug(new Object[] { userName, password });

		User user = userService.findByUserNameAndPassword(userName, password);
		LOGGER.info("User:" + user);
		if (user != null) {
			session.setAttribute("LOGGED_IN_USER", user);
			LOGGER.info("Login Success");
			return "redirect:../book";
		} else {
			modelMap.addAttribute("ERROR_MESSAGE", "Invalid Email Id/Password");
			LOGGER.error("Login Failure");*/
			return "redirect:../book";
		}
	

	@GetMapping
	public String login() {
		return "user/login";
	}

	/*@GetMapping("/register")
	public String showRegsiter() {
		return "user/register";
	}

	@PostMapping("/register")
	public String register(@ModelAttribute @Valid RegistrationForm user, BindingResult result,ModelMap modelMap, 
			HttpSession session) throws Exception {
		try {

			System.out.println("Registraion Form :" + user);
			
			if (result.hasErrors()) {
				modelMap.addAttribute("errors", result.getAllErrors());
				modelMap.addAttribute("regFormData", user );
				return "user/register";
			}else {
				userService.register(user);
				
				return "redirect:../";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.addAttribute("regFormData", user );
			modelMap.addAttribute("ERROR_MESSAGE", e.getMessage());
			return "user/register";
		}

	}*/

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
