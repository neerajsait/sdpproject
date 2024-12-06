package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Recruiter;
import com.klef.jfsd.springboot.repository.RecruiterRepository;
import com.klef.jfsd.springboot.service.RecruiterService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class RecruiterController {
	@Autowired
	private RecruiterService service;
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("rereg1")
	public ModelAndView rereg1()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("rereg1");
		return mv;
	}
	
	
	@GetMapping("rehome")
	public ModelAndView rehome()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("rehome");
		return mv;
	}
	
	@GetMapping("relogin")
	public ModelAndView relogin()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("relogin");
		return mv;
	}
	
	@PostMapping("checkrelogin")
	//@ResponseBody
	public ModelAndView checkRecruiterlogin(HttpServletRequest request)
	{
		
		ModelAndView mv = new ModelAndView();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
	
		Recruiter recruiter = service.checkRecruiterlogin(email, password);
		//System.out.println(recruiter.toString());
		
		if(recruiter != null)
		{
			
//			HttpSession session = request.getSession();
//			session.setAttribute("recruiter", recruiter);
			//session.setMaxInactiveInterval(5); 
			mv.setViewName("rehome");
			
		}
		
		else{
			mv.setViewName("relogin");
			mv.addObject("message","login failed");
		}
		return mv;
	}
	
//	@PostMapping("insertre")
//	public ModelAndView insertre(HttpServletRequest request) {
//		String name = request.getParameter("");
//	}

}
