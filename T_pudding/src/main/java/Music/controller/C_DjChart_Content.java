package Music.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Music.model.Dj;
import Music.model.DjDao;
import Music.model.Music;
import Music.model.MusicDao;

@Controller
public class C_DjChart_Content {
	
	final String command = "C_dj_C.ms";
	final String acommand = "A_dj_C.ms";
	final String getPage = "C_music_chart";
	final String agetPage = "A_music_chart";

	@Autowired
	MusicDao dao;
	
	@Autowired
	DjDao Ddao;
	
	@Autowired
	ServletContext servletcontext;
	
	@RequestMapping(command)
	public ModelAndView doAction(ModelAndView mav, @RequestParam("dj_no") int dj_no ) throws IOException {
		Dj dj= Ddao.selectOne(dj_no);
		List<Music> list= new ArrayList<Music>(); 
		String [] arr = dj.getDj_list().split(",");	
		for (int j = 0; j < arr.length; j++) {
			System.out.println(arr[j]);
			Music music = dao.getmusicdj(arr[j]);
			System.out.println(music.getMusic_date());
			list.add(music);
		}
		System.out.println(list.get(0).getMusic_ganre());
		mav.addObject("DJ",dj.getDj_code());
		mav.addObject("list",list);
		mav.setViewName(getPage);
		return mav;
	}
	@RequestMapping(acommand)
	public ModelAndView doAction2(ModelAndView mav, @RequestParam("dj_no") int dj_no ) throws IOException {
		Dj dj= Ddao.selectOne(dj_no);
		List<Music> list= new ArrayList<Music>(); 
		String [] arr = dj.getDj_list().split(",");	
		for (int j = 0; j < arr.length; j++) {
			System.out.println(arr[j]);
			Music music = dao.getmusicdj(arr[j]);
			System.out.println(music.getMusic_date());
			list.add(music);
		}
		System.out.println(list.get(0).getMusic_ganre());
		mav.addObject("DJ",dj.getDj_code());
		mav.addObject("list",list);
		mav.setViewName(agetPage);
		return mav;
	}
	
}
