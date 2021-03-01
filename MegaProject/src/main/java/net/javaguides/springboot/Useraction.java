package net.javaguides.springboot;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class Useraction {

	@Autowired
	UserRepository userRepository;

	@GetMapping("hire")
	public ModelAndView showRegister() {
		ModelAndView mv = new ModelAndView("hire");
		return mv;
	}

	@PostMapping("/hired")
	public ModelAndView createUser(Hire user) {
		userRepository.save(user);

		ModelAndView mv = new ModelAndView("hire");
		mv.addObject("q", "1");
		return mv;
	}

	@GetMapping("/infolist")
	public ModelAndView infolist() {
		// String hspUsername,String hspPassword
		// Hospital
		// hospital=hospitalRepository.findByHspUsernameAndHspPassword(hspUsername,
		// hspPassword);
		/* int hospId=Integer.parseInt(hspId); */
		ModelAndView mv = new ModelAndView("ResponseHr");
		/* Hospital hospital=requestRepository.findById(hospId).get(); */
		List<Hire> reslist = userRepository.findAll();
		/* mv.addObject("hospital", hospital); */
		mv.addObject("reslist", reslist);
		mv.addObject("INFOLIST", 1);
		return mv;
	}

	@GetMapping("/delinfolist")
	  public ModelAndView deleteinfolist(String resid) {
		ModelAndView mv=new ModelAndView("ResponseHr");
		String strid=resid;
		int reid=Integer.parseInt(strid);	
		System.out.println(resid);
		Hire dr=userRepository.findById(reid).get();
		userRepository.delete(dr);
		List<Hire> reslist=userRepository.findAll();
		mv.addObject("reslist", reslist);
		mv.addObject("INFOLIST", 1);
		System.out.println("Candidate deleted successfully in admin dao");
	    return mv;
	  }

}
