package Music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import Music.model.Music;
import Music.model.MusicDao;


@Controller
public class PuddingMusic_Chart {

	final String command = "puddingmusic_chart.ms";
	final String singercommand = "puddingmusic_singerchart.ms";
	final String heartcommand = "puddingmusic_heartchart.ms";
    final String recountcommand = "puddingmusic_recountchart.ms";
    final String searchcommand = "puddingmusic_searchchart.ms"; 
	final String getPage = "puddingmusic_chart";
	final String recountPage = "puddingmusic_recountchart";
	final String getPage2 = "puddingmusic_mainchart";
	final String heartaddcommand = "puddingmusic_heartadd.ms";
	final String heartrecountaddcommand = "puddingmusic_recountheartadd.ms";
	
		@Autowired
		MusicDao dao;
		
		@RequestMapping(command)
		public ModelAndView doAction(ModelAndView mav) {
			List<Music> lists = dao.getDataList();
			mav.addObject("lists", lists);
			mav.setViewName(getPage2);
			return mav;
		}
		
		@RequestMapping(singercommand)
		public ModelAndView singerdoAction(ModelAndView mav,
										@RequestParam("music_singer")String music_singer) {
			System.out.println("music_singer:"+music_singer);
			List<Music> lists = dao.getSingerDataList(music_singer);
			System.out.println("lists size()"+lists.size());
			mav.addObject("lists", lists);
			mav.setViewName(getPage2);
			return mav;
		}
		
		@RequestMapping(searchcommand)
		  public ModelAndView keydoAction(ModelAndView mav,HttpServletResponse response,
				  				@RequestParam("search") String search) throws IOException {
			 	search="%"+search+"%";
			 	PrintWriter pw = response.getWriter();  
			 	 response.setContentType("text/html;charset=UTF-8"); 
		       List<Music> lists = dao.getDataSearchtList(search);
		       if(lists.size()==0) {
		    	   pw.println("<script type='text/javascript'>");
			         pw.println("alert('검색결과가 없습니다');");
			         pw.println("history.back()" );
			         pw.println("</script>");
			         pw.flush();
		       
		       }
		       
		       mav.addObject("lists", lists);
		       mav.setViewName(getPage2);
		       return mav;
		      } @RequestMapping(heartcommand)
			  public ModelAndView doAction2(ModelAndView mav) {
			         List<Music> lists = dao.getDataHeartList();
			       mav.addObject("lists", lists);
			       mav.setViewName(getPage);
			       return mav;
			      }

		      @RequestMapping(recountcommand)
		      public ModelAndView doAction3(ModelAndView mav) {
		         List<Music> lists = dao.getDataRecountList();
		         mav.addObject("lists", lists);
		         mav.setViewName(recountPage);
		         return mav;
		      }
		      
		      @RequestMapping(heartaddcommand)
		      public ModelAndView heartadd(ModelAndView mav, @RequestParam("musicheart") int musicheart,
		  			@RequestParam("mno") int mno) {
		    	  dao.heartPlus(musicheart, mno);
		 		 mav.setViewName("redirect:/puddingmusic_heartchart.ms");
		 		 return mav;
		      }
		      
		      @RequestMapping(heartrecountaddcommand)
		      public ModelAndView heartrecountadd(ModelAndView mav, @RequestParam("musicheart") int musicheart,
			  			@RequestParam("mno") int mno) {
			    	  dao.heartPlus(musicheart, mno);
			 		 mav.setViewName("redirect:/puddingmusic_recountchart.ms");
			 		 return mav;
			      }
		
		
	}
