package Boarder.controller;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import Boarder.model.BoarderDao;
import Boarder.model.Recontent;
import Boarder.model.RecontentDao;
import utility.Paging;
import Boarder.model.Boarder;
@Controller
public class BoarderList {
	
	final String command = "/boarderList.bd";
	final String getPage = "boarder_list";
	
	
	@Autowired
	BoarderDao boardDao;
	

	
	@RequestMapping(command)
	public ModelAndView doAction(HttpSession session,   HttpServletRequest request, 
			@RequestParam(value="whatColumn", required = false) String whatColumn,
				@RequestParam(value="keyword", required = false) String keyword,
				@RequestParam(value="pageNumber", required = false) String pageNumber,
				@RequestParam(value="pageSize", required = false) String pageSize,				
				HttpServletResponse response) throws IOException {
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		
		ModelAndView mav = new ModelAndView();   
		if(session.getAttribute("loginInfo") == null) {
			pw.println("<script type='text/javascript'>");
			pw.println("alert('로그인 페이지로 이동합니다.');");
			pw.println("</script>");
			pw.flush();
			
			session.setAttribute("destination",  "redirect:/boarderList.bd");
			mav.setViewName("forward:/loginForm.me");
			return mav;
		}
		
		
			Map<String,String> map = new HashMap<String,String>();
			map.put("whatColumn",whatColumn); 
			map.put("keyword", "%"+keyword+"%"); 
			
			int totalCount =boardDao.getTotalCount(map);
			String url = request.getContextPath() +  command; 
			
			
			Paging pageInfo = new Paging(pageNumber,pageSize,totalCount,url,whatColumn,keyword);
			
			 List<Boarder> lists = boardDao.getBoardList(pageInfo,map);
		   
			 mav.addObject("lists", lists); 
			 mav.addObject("pageInfo",pageInfo);
			 mav.setViewName(getPage);
			return mav;
		} 
	

	
	

}
