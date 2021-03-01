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
public class ManagerAction {

	@Autowired
	ProjectManagerRepository projectManagerRepository;
	@Autowired
	RequestRepository requestRepository;

	@GetMapping("/mlogin")
	public ModelAndView log() {
		ModelAndView mv = new ModelAndView("ProjectManagerLogin");
		return mv;
	}

	@GetMapping("mregister")
	public ModelAndView showRegister() {
		ModelAndView mv = new ModelAndView("mregister");
		return mv;
	}

	// create
	@PostMapping("mregistered")
	public ModelAndView create(String mname, String mpassword, String memail, String mmobile) {
		ModelAndView mv = new ModelAndView("mregister");

		ProjectManagerLogin p = new ProjectManagerLogin(mname, mpassword, memail, mmobile);
		projectManagerRepository.save(p);
		return mv;
	}

	@RequestMapping(value = "/mAuthentlogin", method = RequestMethod.GET)
	public ModelAndView Authenticate(String memail, String mpassword) {

		ProjectManagerLogin projectmanager = projectManagerRepository.findByMemailAndMpassword(memail, mpassword);
		System.out.println("Check check");
		if (projectmanager != null) {
			ModelAndView mv = new ModelAndView("managerprofile");
			mv.addObject("projectmanager", projectmanager);

			return mv;
		}

		else {
			ModelAndView mv = new ModelAndView("mlogin");
			mv.addObject("projectmanager", projectmanager);
			mv.addObject("q", 1);
			return mv;
		}
	}

	@GetMapping("mupdate")
	public ModelAndView mUpdate(String memail, String mpassword) {

		ProjectManagerLogin projectmanager = projectManagerRepository.findByMemailAndMpassword(memail, mpassword);

		if (projectmanager != null) {
			ModelAndView mv = new ModelAndView("managerprofile");
			mv.addObject("projectmanager", projectmanager);
			mv.addObject("u", 2);
			return mv;
		}

		else {
			ModelAndView mv = new ModelAndView("managerprofile");
			mv.addObject("u", 0);
			return mv;
		}
	}

	@GetMapping("updmanager")
	public ModelAndView patientupdated(String idee, String mname, String memail, String mmobile) {
		int id = Integer.parseInt(idee);

		ProjectManagerLogin projectmanager = projectManagerRepository.findByMid(id);

		if (projectmanager != null) {
			projectmanager.setMid(id);
			projectmanager.setMname(mname);
			projectmanager.setMemail(memail);
			projectmanager.setMmobile(mmobile);

			projectManagerRepository.save(projectmanager);

			ModelAndView mv = new ModelAndView("managerprofile");
			mv.addObject("projectmanager", projectmanager);
			mv.addObject("u", 1);
			return mv;
		}

		else {
			ModelAndView mv = new ModelAndView("message");
			mv.addObject("sendvalue", "user not found for below username & password");
			return mv;
		}

	}
	/*
	 * @GetMapping("/tlList") public ModelAndView drList() { //String
	 * hspUsername,String hspPassword //Hospital
	 * hospital=hospitalRepository.findByHspUsernameAndHspPassword(hspUsername,
	 * hspPassword); int hospId=Integer.parseInt(hspId); ModelAndView mv=new
	 * ModelAndView("managerprofile"); Hospital
	 * hospital=requestRepository.findById(hospId).get(); List<RequestFromPL>
	 * reqlist=requestRepository.findAll(); mv.addObject("hospital", hospital);
	 * mv.addObject("reqlist", reqlist); mv.addObject("DRLIST", 1); return mv; }
	 */

}
