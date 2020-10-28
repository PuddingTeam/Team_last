package Boarder.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Boarder.model.Boarder;
import Boarder.model.BoarderDao;
import Boarder.model.Recontent;
import Boarder.model.RecontentDao;
import Login.model.Customer;

@Controller
public class BoarderUpdateController {
	
	final String command = "/update.bd";
	final String getPage = "boarder_UpdateForm";
	final String gotoPage = "redirect:/boarderList.bd";
	final String recontentupdatecommand = "recontentupdate.bd";
	final String getrecontentPage = "recontent_updateForm";
	
	
	@Autowired    
	BoarderDao boardDao;
	
	@Autowired
	RecontentDao recontentdao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doAction(@RequestParam("boardno")int boardno,
							Model model							
			) {
		Boarder lists = boardDao.getoneBoardList(boardno);
		model.addAttribute("lists", lists);				
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doAction(@ModelAttribute("bo") @Valid Boarder board,
								HttpServletRequest request
								,@RequestParam(value="boardno", required = false) int boardno
								,HttpServletResponse response) throws IOException {
		 PrintWriter pw = response.getWriter();                     
	      response.setContentType("text/html;charset=UTF-8");   	
		ModelAndView mav = new ModelAndView();
		
		Boarder dbboarderpasswd = boardDao.getData(board.getBoard_passwd(),boardno); 
		
		if(dbboarderpasswd==null) {
	         
	         pw.println("<script type='text/javascript'>");
	         pw.println("alert('비밀번호가일치하지 않습니다');");
	         pw.println("history.back()" );
	         pw.println("</script>");
	         pw.flush();   	         
	      }
		else {
		 pw.println("<script type='text/javascript'>");	
		 pw.println("alert('비밀번호가 일치합니다');");				 
		 pw.println("</script>");
		 pw.flush();
		 boardDao.updateBoard(board);		 
		}
		return new ModelAndView("forward:/boarderList.bd");
		
	}
	
	@RequestMapping(value=recontentupdatecommand, method=RequestMethod.GET)
	public String reupdatedoAction(@RequestParam("recontentno")int recontentno,
			@RequestParam("boardno")int boardno,
							Model model							
			) {
		Recontent recontent = recontentdao.OneRecontentList(recontentno);
		model.addAttribute("recontent",recontent);	
		model.addAttribute("boardno",boardno);
		return getrecontentPage;
	}
	
	@RequestMapping(value=recontentupdatecommand, method=RequestMethod.POST)
	public ModelAndView reupdatedoAction(Recontent recontent,
			@RequestParam("boardno")int boardno,
			@RequestParam("recontentno")int recontentno	,HttpServletResponse response															
			) throws IOException {
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		Recontent dbrecontentpasswd = recontentdao.getData(recontent.getRecontent_passwd(),recontentno); 
		
		ModelAndView mav = new ModelAndView();
		System.out.println(recontent.getRecontent_boardno());
		System.out.println(recontent.getRecontent_content());
		System.out.println(recontent.getRecontent_passwd());
		
		
		if(dbrecontentpasswd==null) {
	         
	         pw.println("<script type='text/javascript'>");
	         pw.println("alert('비밀번호가 일치하지 않습니다');");
	         pw.println("history.back();" );
	         pw.println("</script>");
	         pw.flush();   	         	         
	      }
		
		else {
		 pw.println("<script type='text/javascript'>");	
		 pw.println("alert('비밀번호가 일치합니다');");		 	 
		 pw.println("</script>");
		 pw.flush();
		 recontentdao.Updaterecontent(recontent);
		
		}			
		return new ModelAndView("forward:/boarderList.bd");		
		
	}
	
}
