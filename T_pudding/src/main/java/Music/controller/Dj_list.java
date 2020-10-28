package Music.controller;

import java.util.ArrayList;
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
public class Dj_list {
	final String command = "Djlist.ms";
	final String getPage = "list_Dj";

	@Autowired
	DjDao dao;
	
	@Autowired
	MusicDao mdao;
	
	@RequestMapping(command)
	public ModelAndView doAction(ModelAndView mav, Model model) {
		List<Dj> lists = dao.getDataList();
		System.out.println("lists.size() : " + lists.size());
		System.out.println(lists.toString());
		//mav.addObject("lists", lists);
		List<Music> music = mdao.getDataList();
		List<Music> music2 = new ArrayList<Music>(); 
		List<Dj> lists2 = new ArrayList<Dj>();
		for (int j = 0; j < lists.size(); j++) {
			String [] arr =lists.get(j).getDj_list().split(",");
			for (int i = 0; i < music.size(); i++) {
				for (int k = 0; k < arr.length; k++) {
					if (music.get(i).getMusic_title().equals(arr[k])) {
						Music music3=mdao.getmusicdj(music.get(i).getMusic_title());
						music3.setUser(lists.get(j).getDj_code());
						music2.add(music3);
					}
					
				}
			}
		}
		model.addAttribute("lists", lists);
		model.addAttribute("music2", music2);
		mav.setViewName(getPage);
		return mav;
	}

}
