package Music.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Music.model.Dj;
import Music.model.DjDao;
import Music.model.Music;
import Music.model.MusicDao;

@Controller
public class C_Dj_list {
	final String command = "c_Djlist.ms";
	final String getPage = "C_list_DJ";

	@Autowired
	DjDao dao;
	
	@RequestMapping(command)
	public ModelAndView doAction(ModelAndView mav, Model model) {
		List<Dj> lists = dao.getDataList();
		System.out.println("lists.size() : " + lists.size());
		System.out.println(lists.toString());
		model.addAttribute("lists", lists);
		mav.setViewName(getPage);
		return mav;
	}

}
