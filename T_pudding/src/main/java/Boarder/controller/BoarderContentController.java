package Boarder.controller;

import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Boarder.model.Boarder;
import Boarder.model.BoarderDao;
import Boarder.model.Recontent;
import Boarder.model.RecontentDao;
  
@Controller
public class BoarderContentController {
	
	
	final String command = "/content.bd";
	final String recommand = "/recontentinsert.bd";
	final String getPage = "boarder_contentForm";
	
	@Autowired    
	BoarderDao boardDao;
	
	@Autowired
	RecontentDao recontentDao;
	
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public ModelAndView doAction(@RequestParam(value="boardno",required=true) int boardno) {		
		boardDao.addCount(boardno);
		Boarder lists = boardDao.getoneBoardList(boardno);
		
		List<Recontent> recontent = recontentDao.getRecontentList(boardno);
		 ModelAndView mav = new ModelAndView();      
		 mav.addObject("lists", lists);
		 mav.addObject("recontent", recontent);
		 mav.setViewName(getPage);
		return mav;
	}  
	
	@RequestMapping(value=recommand, method=RequestMethod.POST)
	public ModelAndView doAction(Recontent insertrecontent,
			HttpServletRequest request,
			@RequestParam(value="recontent_boardno",required=true) int boardno
								) {
		ModelAndView mav = new ModelAndView();      
		recontentDao.insertBoard(insertrecontent);
		
		Boarder lists = boardDao.getoneBoardList(boardno);
		
		List<Recontent> recontent = recontentDao.getRecontentList(boardno);
			      						
		mav.addObject("recontent", recontent);
		 mav.addObject("lists", lists);
		 mav.setViewName(getPage);
		return mav;
	}
	/*
	@RequestMapping(recommand)
	public String doAction(@RequestParam(value="boardno",required=true) int boardno, 
									HttpServletRequest request, Model mav) {
		List<Recontent> recontent = recontentDao.getRecontentList(boardno);
		System.out.println("&**&&&*listsize():"+recontent.size());
		mav.addAttribute("recontent",recontent);

			return getPage;
	}
	*/
}
