package Music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Music.model.MusicDao;

@Controller
public class SearchController {
	
	final String command = "Search.ms";
	final String getPage = "SearchMusic";
	
	@Autowired
	MusicDao musicdao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doAction() {
		
		
		
		return getPage;
	}
	
}
