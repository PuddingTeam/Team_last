package Music.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import Music.model.Music;
import Music.model.MusicDao;


@Controller
public class Music_delete {
	final String command = "delete.ms";
	final String gotoPage = "redirect:/list.ms";
	@Autowired
	MusicDao dao;
	@Autowired
	ServletContext servletcontext;

@RequestMapping(command)
public ModelAndView doAction(@RequestParam("mno") int mno) throws IllegalStateException, IOException {
	ModelAndView mav = new ModelAndView();
	Music music = new Music();
	music = dao.selectOne(mno);
	String uploadimg = servletcontext.getRealPath("/resources/imgs/");
	String uploadsong = servletcontext.getRealPath("/resources/song/");
	String uploadtxt = servletcontext.getRealPath("/resources/txt/");
	File filei = new File(uploadimg+music.getMusic_image());
	File files = new File(uploadsong+music.getMusic_song());
	File filet = new File(uploadtxt+music.getMusic_lyics());
	filei.delete();
	files.delete();
	filet.delete();
	dao.deleteData(mno);
	mav.setViewName(gotoPage);
	return mav;
}

}
