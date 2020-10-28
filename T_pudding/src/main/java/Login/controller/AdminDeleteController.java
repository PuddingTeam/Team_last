package Login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Login.model.CustomerDao;

@Controller
public class AdminDeleteController {

	final String command = "delete.me"; 
	final String getPage = "redirect:/admin_customerlist.me"; 

	@Autowired
	CustomerDao customerDao; 

	@RequestMapping(command)
	public ModelAndView doAction(@RequestParam(value="customerno", required=true) int customerno){
		
		customerDao.deleteData(customerno);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(getPage);
		return mav;
	}
}
