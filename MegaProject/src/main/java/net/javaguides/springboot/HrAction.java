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
public class HrAction {
	
	@Autowired
	HrRepository hrRepository; 
	
	@GetMapping("hr-register")
	public ModelAndView showRegister() {
		
		ModelAndView mv=new ModelAndView("hr-register");
		return mv;
	}
	//create
		@PostMapping("hr-register")
		public ModelAndView create(String hrname,String hrpassword,String hremail,String hrmobile,String hrcity) {
			ModelAndView mv=new ModelAndView("Home");
			
			
			Hr h=new Hr(hrname,hrpassword,hremail,hrmobile,hrcity);
			hrRepository.save(h);
			return mv;
			
		}
		
		
		@GetMapping("/hr-login")
		public ModelAndView log() {
			ModelAndView mv=new ModelAndView("hr-login");
			return mv;
		}
		
		@RequestMapping(value="/Authentlogin1" ,method=RequestMethod.GET)
		public ModelAndView Authenticate1(String hremail,String hrpassword) {
			
			Hr hr= hrRepository.findByHremailAndHrpassword(hremail, hrpassword);
			
			if(hr!=null) {
				ModelAndView mv=new ModelAndView("profile");
				mv.addObject("hr", hr);
				mv.addObject("q",1);
				return mv;
			}
			
			else {
				ModelAndView mv=new ModelAndView("message");
			 mv.addObject("sendvalue","user not found for below hremail & hrpassword").addObject("hremail", hremail).addObject("hrpassword", hrpassword);
	         return mv;
			}
		}
		
		

		@GetMapping("update-opt1")
		public ModelAndView patientUpdateOpt1(String hremail,String hrpassword) {
			
			
			Hr hr= hrRepository.findByHremailAndHrpassword(hremail, hrpassword);
			
			if(hr!=null) {
				ModelAndView mv=new ModelAndView("profile");
				mv.addObject("hr", hr);
				mv.addObject("u", 2);
				return mv;
			}
			
			else {
				ModelAndView mv=new ModelAndView("profile");
		         mv.addObject("u", 0);
	         return mv;
			}
		}
		
	     @GetMapping("upd-patient1")
	     public ModelAndView patientupdated1(String ide, String hrname,String hremail,String hrmobile,String hrcity) {
	    	  int id=Integer.parseInt(ide);
	    
	    	  
	    Hr hr = hrRepository.findById(id);
	  		
	  		if(hr!=null) {
	  			hr.setid(id);
	  			hr.setHrname(hrname);
	  			hr.setHremail(hremail);
	  			hr.setHrmobile(hrmobile);
	  			hr.setHrcity(hrcity);
	  			
	  			hrRepository.save(hr);
	  			
	  			ModelAndView mv=new ModelAndView("profile");
	  			mv.addObject("hr", hr);
	  			mv.addObject("u", 1);
	  			return mv;
	  		}
	  		
	  		else {
	  			ModelAndView mv=new ModelAndView("message");
	  		 mv.addObject("sendvalue","user not found for below hrname & hrpassword");
	           return mv;
	  		}
	  		
	  		
	  }
		
}