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
public class Admin_updateNotice {
	final String command = "updateNotice.ad";
	final String getPage = "update_notice";
	final String gotoPage = "redirect:/addNotice.ad";
@Autowired
NoticeDao dao;
	
@RequestMapping(value = command,method = RequestMethod.GET)
public ModelAndView doAction(@RequestParam("noticeno") int noticeno) {
	ModelAndView mav = new ModelAndView();
	System.out.println(noticeno);
	Notice notice =dao.getOneData(noticeno);
	
	mav.addObject("notice", notice);
	mav.setViewName(getPage);
	return mav;
	}
@RequestMapping(value = command,method = RequestMethod.POST)
public ModelAndView doAction(Notice notice) {
	ModelAndView mav = new ModelAndView();
	dao.updateData(notice);
	mav.setViewName(gotoPage);
	return mav;
}
}
