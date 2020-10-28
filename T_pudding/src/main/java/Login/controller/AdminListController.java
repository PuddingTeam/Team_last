package Login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Login.model.CustomerDao;

import utility.Paging;
@Controller
public class AdminListController {

	final String command = "/admin_customerlist.me";  
	final String getPage = "Customerlist"; 

	@Autowired
	CustomerDao customerDao; 

	
			
	@RequestMapping(command)
	public ModelAndView doAction(@RequestParam(value="whatColumn", required = false) String whatColumn,
			@RequestParam(value="keyword", required = false) String keyword,
			@RequestParam(value="pageNumber", required = false) String pageNumber,
			@RequestParam(value="pageSize", required = false) String pageSize,
			Customer customer,
			HttpServletRequest request,
			HttpSession session
			) throws IOException {
		
			ModelAndView mav = new ModelAndView();
			
			if(session.getAttribute("loginInfo") == null) {						
        	session.setAttribute("admin",  "redirect:/admin_customerlist.me");
        	mav.setViewName("redirect:/loginForm.me");
        	return mav;
			}
			
			Map<String,String> map = new HashMap<String,String>();
			map.put("whatColumn",whatColumn); 
			map.put("keyword", "%"+keyword+"%"); 
			
			int totalCount = customerDao.getTotalCount(map);
			String url = request.getContextPath() + command; // admin.ad
			Paging pageInfo = new Paging(pageNumber,pageSize,totalCount,url,whatColumn,keyword);
			
			
			
			List<Customer> lists = customerDao.getDataList(pageInfo,map);
			
			System.out.println(lists.size());
			
			
			mav.addObject("lists", lists);
			mav.addObject("pageInfo", pageInfo);
			mav.setViewName(getPage);
			return mav;

		
	}
}
