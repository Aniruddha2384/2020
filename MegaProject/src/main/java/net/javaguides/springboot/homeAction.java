package net.javaguides.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/")
public class homeAction {
	
	@Autowired
	ProjectleadRepository projectleadRepository; 

	@GetMapping("home")
	public ModelAndView showhome()
	{
		ModelAndView mv=new ModelAndView("Home");
				return mv;
	}
	
	@GetMapping("about")
	public ModelAndView showabout()
	{
		ModelAndView mv=new ModelAndView("About");
				return mv;
	}
	
	
	@GetMapping("reg")
	public ModelAndView showRegister() {
		ModelAndView mv=new ModelAndView("Register");
		return mv;
	}
	//create
		@PostMapping("registered")
		public ModelAndView create(String username,String password,String email,String mobile) {
			ModelAndView mv=new ModelAndView("Home");
			
			
			ProjectLead p=new ProjectLead(username,password,email,mobile);
			projectleadRepository.save(p);
			return mv;
		}
		
		
		@GetMapping("/login")
		public ModelAndView log() {
			ModelAndView mv=new ModelAndView("Login");
			return mv;
		}
		
		 @RequestMapping(value="/Authentlogin" ,method=RequestMethod.GET) 
		public ModelAndView Authenticate(String email,String password) {
			
			ProjectLead projectlead=projectleadRepository.findByEmailAndPassword(email, password);
			
			if(projectlead!=null) {
				ModelAndView mv=new ModelAndView("Appointment");
				mv.addObject("projectlead", projectlead);
				
				return mv;
			}
			
			else {
				ModelAndView mv=new ModelAndView("Login");
				mv.addObject("projectlead", projectlead);
			mv.addObject("q", 1);
	         return mv;
			}
		}
		
		
		
		
		@GetMapping("update-opt")
		public ModelAndView patientUpdateOpt(String email,String password) {
			
			
			ProjectLead projectlead=projectleadRepository.findByEmailAndPassword(email, password);
			System.out.println("lead" +projectlead.getUsername()+" "+projectlead.getPassword());
			if(projectlead!=null) {
				ModelAndView mv=new ModelAndView("Appointment");
				mv.addObject("projectlead", projectlead);
				mv.addObject("u", 2);
				return mv;
			}
			
			else {
				ModelAndView mv=new ModelAndView("Appointment");
		         mv.addObject("u", 0);
	         return mv;
			}
		}
		
	     @GetMapping("upd-patient")
	     public ModelAndView patientupdated(String ide, String username,String email,String mobile) {
	    	  int id=Integer.parseInt(ide);
	    
	    	  
	    	  ProjectLead projectlead=projectleadRepository.findById(id).get();
	  		
	  		if(projectlead!=null) {
	  			projectlead.setId(id);
	  			projectlead.setUsername(username);
	  			projectlead.setEmail(email);
	  			projectlead.setMobile(mobile);
	  			
	  			projectleadRepository.save(projectlead);
	  			
	  			ModelAndView mv=new ModelAndView("Appointment");
	  			mv.addObject("projectlead", projectlead);
	  			mv.addObject("u", 1);
	  			return mv;
	  		}
	  		
	  		else {
	  			ModelAndView mv=new ModelAndView("message");
	  		 mv.addObject("sendvalue","user not found for below username & password");
	           return mv;
	  		}
	    	  
	    	  
	     }
		
	  
			
		
		
		
}
