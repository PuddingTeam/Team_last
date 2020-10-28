package Music.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Music.model.Dj;
import Music.model.DjDao;
import Music.model.Music;
import Music.model.MusicDao;

@Controller
public class MainController {
	
	final String command = "Main.ms";
	final String getPage = "Main";
	
	@Autowired
	MusicDao musicdao;
	
	@Autowired
	DjDao dao;

	
	@RequestMapping(command)
	public ModelAndView doAction(HttpSession session, Model model) {
		
		ModelAndView mav = new ModelAndView();
		
		List<Dj> list = dao.getDataList();
		System.out.println("lists.size() : " + list.size());
		System.out.println(list.toString());
		model.addAttribute("list", list);
		
		
		List<Music> listheart = musicdao.getheartlist();
		List<Music> listrecount = musicdao.getrecountlist();				
		List<Music> lists =	musicdao.getDataList();
		mav.addObject("lists",lists);
		mav.addObject("listheart",listheart);
		mav.addObject("listrecount",listrecount);
		  Customer loginInfo = (Customer)session.getAttribute("loginInfo"); 
	      
	      session.setAttribute("destination","redirect:/Main.ms");

		
		mav.setViewName(getPage);
		return mav;
	}
}
