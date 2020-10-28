package Music.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Music.model.Music;
import Music.model.MusicDao;
import Order.model.OrderDao;
import Order.model.OrderDto;

@Controller
public class PuddingChart_Content {
	
	final String command = "pudding_chartcontent.ms";
	final String getPage = "puddingChartContent";
	final String heartcommand = "heart.ms";
	final String mainheartcommand="mainheart.ms";
	final String chartheartcommand = "chartheart.ms";
	
	@Autowired
	MusicDao dao;
	
	@Autowired
	OrderDao orderdao;
	
	@Autowired
	ServletContext servletcontext;
	
	@RequestMapping(command)
	public ModelAndView doAction(ModelAndView mav, @RequestParam("mno") int mno,
			HttpSession session) throws IOException {
		Music music = dao.getOneData(mno);
		dao.recountplus(mno);
		String uploadtxt = servletcontext.getRealPath("/resources/txt/");
		String lyics="";
		File file = new File(uploadtxt+music.getMusic_lyics());
		FileReader filereader = new FileReader(file);
		BufferedReader bufReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
		String line = "";
		while((line = bufReader.readLine()) != null){
			//System.out.println(line);
			lyics+=line+"<br>";
		}
	Customer customer =	(Customer) session.getAttribute("loginInfo");
		
		if(customer==null) {
			bufReader.close();
			filereader.close();
			mav.addObject("lyics", lyics);		
			mav.addObject("music",music);
			mav.setViewName(getPage);
			return mav;
		}
		else {
		OrderDto orderplay = orderdao.getuserid(customer.getCustomer_id(),mno);
		
		bufReader.close();
		filereader.close();
		mav.addObject("lyics", lyics);
		mav.addObject("orderplay",orderplay);
		mav.addObject("music",music);
		mav.setViewName(getPage);
		return mav;
		}
	}
	
	@RequestMapping(heartcommand)
	public ModelAndView heartdoAction(ModelAndView mav, @RequestParam("musicheart") int musicheart,
			@RequestParam("mno") int mno   ) {
		 dao.heartPlus(musicheart, mno);
		 mav.setViewName("redirect:/pudding_chartcontent.ms?mno="+mno);
		 return mav;
		
	}
	
	@RequestMapping(mainheartcommand)
	public ModelAndView mainheartdoAction(ModelAndView mav, @RequestParam("musicheart") int musicheart,
			@RequestParam("mno") int mno) {
		 dao.heartPlus(musicheart, mno);
		mav.setViewName("redirect:/Main.ms?mno="+mno);
		 return mav;
		
	}
	
	@RequestMapping(chartheartcommand)
	public ModelAndView chartheartdoAction(ModelAndView mav, @RequestParam("musicheart") int musicheart,
			@RequestParam("mno") int mno) {
		 dao.heartPlus(musicheart, mno);
		mav.setViewName("redirect:/puddingmusic_chart.ms?mno="+mno);
		 return mav;
		
	}
}
