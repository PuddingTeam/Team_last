package Music.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Music.model.Dj;
import Music.model.DjDao;
import Music.model.Djmusic;
import Music.model.Music;
import Music.model.MusicDao;


@Controller
public class Dj_delete {
	final String command = "deleteDj.ms";
	final String gotoPage = "redirect:/Djlist.ms";
	@Autowired
	MusicDao dao;

	@Autowired
	DjDao daodj;

	@RequestMapping(command)
	public ModelAndView doAction(@RequestParam("dj_no") int dj_no) throws IllegalStateException, IOException {
		ModelAndView mav = new ModelAndView();
		Dj dj = daodj.selectOne(dj_no);
		System.out.println("code"+dj.getDj_code());
		List<Music> list = dao.getDataList();
		System.out.println("list.size():"+list.size());
		String song = " ";
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getMusic_dj()!=null) {
				System.out.println(list.get(i).getMusic_dj());
				String [] arr = list.get(i).getMusic_dj().split(",");
				
				System.out.println( "musictitle:"+list.get(i).getMusic_title());
				System.out.println( "musictitle:"+list.get(i).getMusic_dj());
				System.out.println("arr 길이:"+arr.length);
				System.out.println("1");
				for (int j = 0; j < arr.length; j++) {
					if (arr.length==1) {
						System.out.println("하나있는:"+list.get(i).getMusic_singer());
						Djmusic djmusic = new Djmusic(list.get(i).getMusic_title(),song);
						dao.deleteoneDj(djmusic);
					}else {
						System.out.println(arr[j]);
						System.out.println(dj.getDj_code());
						System.out.println("2");
						if(arr[j].equals(dj.getDj_code())) {
							song=(list.get(i).getMusic_title()).replace(arr[j], " ");
							Djmusic djmusic = new Djmusic(list.get(i).getMusic_title(),song);
							System.out.println("song:"+song);
							dao.deleteDj(djmusic);
						}
						else {
							System.out.println("없음");
						}
					}
				}
				
			}
		}
		daodj.deleteData(dj_no);
		mav.setViewName(gotoPage);
		return mav;
	}

}
