package Music.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Music.model.CartDao;
import Music.model.Music;
import Music.model.MusicDao;

@Controller
public class CartdeleteController {
	
	final String command = "cartdelete.ms";
	final String gotoPage = "redirect:/listcart.ms";
	
	@Autowired
	MusicDao musicdao;
	
	@Autowired
	CartDao cartdao;
	
	@Autowired
	ServletContext servletcontext;
	
	
	@RequestMapping(command)
	public String doAction(HttpSession session,
						@RequestParam("cno") int cno) {
		
//		if(session.getAttribute("loginInfo") == null) {						
//			session.setAttribute("destination",  "redirect:/detail.prd?num="+music.getMno());		
//			return "redirect:/loginForm.me";									
//		}
						
		cartdao.deletecart(cno); 
			
			
			return gotoPage;													
	
						
	}
}
