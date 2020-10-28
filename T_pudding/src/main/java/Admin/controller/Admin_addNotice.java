package Admin.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Admin.model.Notice;
import Admin.model.NoticeDao;

@Controller
public class Admin_addNotice {
	final String command = "addnotices.ad";
	final String getPage = "add_notice";
	final String gotoPage = "redirect:/addNotice.ad";
	
@Autowired
NoticeDao dao;
	
@RequestMapping(value = command,method = RequestMethod.GET)
public ModelAndView doAction() {
	ModelAndView mav = new ModelAndView();
	mav.setViewName(getPage);
	return mav;
	}
@RequestMapping(value = command,method = RequestMethod.POST)
public ModelAndView doAction(@Valid Notice notice, BindingResult result) {
	ModelAndView mav = new ModelAndView();
	if (result.hasErrors()) {
		mav.setViewName(getPage);
		return mav;
	}
	dao.insertData(notice);
	mav.setViewName(gotoPage);
	return mav;
}
}
