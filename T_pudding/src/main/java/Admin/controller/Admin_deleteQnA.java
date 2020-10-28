package Admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Admin.model.QnADao;

@Controller
public class Admin_deleteQnA {
	final String command = "deleteqna.ad";
	final String getPage = "redirect:/addQA.ad";
@Autowired
QnADao dao;
	
@RequestMapping(command)
public ModelAndView doAction(@RequestParam("qna_no")int qna_no) {
	ModelAndView mav = new ModelAndView();
	int cnt = dao.deleteData(qna_no);
	System.out.println("cnt: "+cnt);
	mav.setViewName(getPage );
	return mav;
	}
}
