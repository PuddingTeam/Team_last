package Admin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Admin {
final String command = "admin.ad";
final String getPage = "a_main";

@RequestMapping(value = command, method = RequestMethod.GET)
public String doAction(HttpSession session) {
		/*
		 * if(session.getAttribute("loginInfo") == null) {
		 * session.setAttribute("destination","redirect:/admin.ad"); return
		 * "redirect:/loginForm.me"; } else {
}
		 */
		return getPage;
}
@RequestMapping(value = command, method = RequestMethod.POST)
public ModelAndView doAction() {
	ModelAndView mav = new ModelAndView();
	mav.setViewName(getPage);
	return mav;
	}


}
