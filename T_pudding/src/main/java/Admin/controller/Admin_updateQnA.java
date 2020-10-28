package Admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Admin.model.QnA;
import Admin.model.QnADao;


@Controller
public class Admin_updateQnA {
	final String command = "updateqna.ad";
	final String getPage = "update_QnA";
	final String gotoPage = "redirect:/addQA.ad";
@Autowired
QnADao dao;

@RequestMapping(value = command,method = RequestMethod.GET)
public ModelAndView doAction(@RequestParam("qna_no") int qna_no) {
	ModelAndView mav = new ModelAndView();
	QnA qna = dao.getOneData(qna_no);
	mav.addObject("qna", qna);
	mav.setViewName(getPage);
	return mav;
	}
@RequestMapping(value = command,method = RequestMethod.POST)
public ModelAndView doAction(QnA qna) {
	System.out.println(qna.getQna_no());
	ModelAndView mav = new ModelAndView();
	int cnt = dao.getupdate(qna);
	System.out.println(cnt);
	mav.setViewName(gotoPage);
	return mav;
}
}
