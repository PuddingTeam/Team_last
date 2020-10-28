package Admin.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Admin.model.Notice;
import Admin.model.NoticeDao;
import utility.Paging;

@Controller
public class Admin_Notice {
	final String command = "/addNotice.ad";
	final String getPage = "a_notice";

	@Autowired
	NoticeDao dao;
	
	@RequestMapping(command)
	public ModelAndView doAction(ModelAndView mav, HttpServletRequest request,
			@RequestParam(value="pageNumber", required = false) String pageNumber,
			@RequestParam(value="pageSize", required = false) String pageSize,
			@RequestParam(value="whatColumn", required = false) String whatColumn,
			@RequestParam(value="keyword", required = false) String keyword) {
       
		Map<String,String> map = new HashMap<String,String>();
		map.put("whatColumn",whatColumn); 
		map.put("keyword", "%"+keyword+"%"); 
		
		int totalCount=dao.getTotalCount();
		String url=request.getContextPath()+command;
		Paging pageInfo = new Paging(pageNumber,pageSize,totalCount,url,whatColumn,keyword);
		
		
		List<Notice> lists = dao.getDataList(pageInfo,map);		
						
		mav.addObject("lists", lists);
		mav.addObject("pageInfo",pageInfo);
		mav.setViewName(getPage);
		return mav;
	}

}
