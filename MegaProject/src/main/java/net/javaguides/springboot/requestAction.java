package net.javaguides.springboot;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/")
public class requestAction {

	
	@Autowired 
	RequestRepository requestRepository; 
	@GetMapping("request")
	public ModelAndView showRegister() {
		ModelAndView mv=new ModelAndView("Request");
		return mv;
	}
	//create
	@RequestMapping(value="/requested" ,method=RequestMethod.GET)
		public ModelAndView create(String technology, String exp, String sdate, String edate) {
			ModelAndView mv=new ModelAndView("Request");
			RequestFromPL p=new RequestFromPL(technology,  exp, sdate,edate);
			requestRepository.save(p);
			mv.addObject("q", "1");
           return mv;
		}
		
	@GetMapping("tlList")
	  public ModelAndView drList() {				
		
		ModelAndView mv=new ModelAndView("Manager");	
		List<RequestFromPL> reqlist=requestRepository.findAll();
		mv.addObject("reqlist", reqlist);
		mv.addObject("DRLIST", 1);
	    return mv;
	  }
	
	@GetMapping("/deltlList")
	  public ModelAndView deleteDr(String id) {
		ModelAndView mv=new ModelAndView("Manager");
		String strid=id;
		int reqid=Integer.parseInt(strid);	
		System.out.println(id);
		RequestFromPL dr=requestRepository.findById(reqid).get();
		requestRepository.delete(dr);
		List<RequestFromPL> reqlist=requestRepository.findAll();
		mv.addObject("reqlist", reqlist);
		mv.addObject("DRLIST", 1);
		System.out.println("doctor deleted successfully in admin dao");
	    return mv;
	  }
	
	
	
	
}
