package Admin.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Admin.model.Notice;
import Admin.model.NoticeDao;
@Controller
public class C_NoticeCon {
	final String command = "CNoticeC.ad";
	final String getPage = "c_notice_c";

	@Autowired
	NoticeDao dao;
	
	@RequestMapping(command)
	public ModelAndView doAction(ModelAndView mav,@RequestParam("noticeno") int noticeno) {
System.out.println(noticeno);
		dao.addCount(noticeno);
		Notice notice = dao.getOneData(noticeno);
		mav.addObject("notice", notice);
		mav.setViewName(getPage);
		return mav;
	}

}
