package Admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Boarder.model.Boarder;
import Order.model.OrderDto;
import utility.Paging;
import Order.model.OrderDao;

@Controller
public class Admin_FineBuyList {

	final String getPage = "finebuylist";
	final String searchcommand = "searchlist.ad";
	
	@Autowired
	OrderDao orderdao;
	
	@RequestMapping(searchcommand)
	public ModelAndView doAction(  
		@RequestParam(value="whatColumn", required=false) String whatColumn,
		@RequestParam(value="keyword", required=false) String keyword,
		@RequestParam(value="pageNumber", required = false) String pageNumber,
		@RequestParam(value="pageSize", required = false) String pageSize,
		HttpServletRequest request) { 
		
	
		 Map<String, String> map = new HashMap<String, String>();
		map.put("whatColumn", whatColumn); map.put("keyword", "%"+keyword+"%");
		
		
		List<OrderDto> lists = orderdao.getDataSearchList(map);
		ModelAndView mav = new ModelAndView();
		mav.addObject("lists", lists); 
		
		mav.setViewName(getPage);
		return mav;
		
	}
}
