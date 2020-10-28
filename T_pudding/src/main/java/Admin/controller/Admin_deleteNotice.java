package Admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Admin.model.Notice;
import Admin.model.NoticeDao;

@Controller
public class Admin_deleteNotice {
	final String command = "deleteNotice.ad";
	final String getPage = "redirect:/addNotice.ad";
@Autowired
NoticeDao dao;
	
@RequestMapping(command)
public ModelAndView doAction(@RequestParam("noticeno")int noticeno) {
	ModelAndView mav = new ModelAndView();
	int cnt = dao.deleteData(noticeno);
	System.out.println("cnt: "+cnt);
	mav.setViewName(getPage );
	return mav;
	}
}
