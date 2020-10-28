package Music.controller;

import java.io.BufferedReader;


import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Login.model.Customer;
import Music.model.Music;
import Music.model.MusicDao;
import Music.model.Cart;
import Music.model.CartDao;

@Controller
public class CartAddController {
	
	final String command = "addcart.ms";
	final String gotoPage = "redirect:/listcart.ms";
	
	@Autowired
	MusicDao musicdao;
	
	@Autowired
	CartDao cartdao;
	
	@Autowired
	ServletContext servletcontext;
	
	
	@RequestMapping(command)
	public String doAction(HttpSession session,
						@RequestParam("mno") int mno,
						@RequestParam(value="userid",required = false)String userid,Music music,
						HttpServletResponse response) throws IOException {
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		
		if(session.getAttribute("loginInfo") == null) {
			pw.println("<script type='text/javascript'>");
			System.out.println("로그인해라");
			pw.println("alert('로그인 페이지로 이동합니다.');");
			pw.println("</script>");
			pw.flush();
			session.setAttribute("destination",  "redirect:/addcart.ms?mno="+music.getMno()+"&userid="+userid);  		
			return "forward:/loginForm.me";									
		}else {
		Customer customer = (Customer)session.getAttribute("loginInfo");
		String userid2=customer.getCustomer_id();
		List<Cart> cart =cartdao.getDataList(userid2);
		
		for(int i=0;i<cart.size();i++) {
			if(cart.get(i).getCart_mno()==mno) {
				pw.println("<script type='text/javascript'>");
				pw.println("alert('이미 담겨있는 노래입니다.');");
				pw.println("history.back()" );
				pw.println("</script>");
				pw.flush();
				return null;	
			}
			
		}
		music = musicdao.getOneData(mno);
		cartdao.insertdata(music, userid2); 
		return gotoPage;													
		
	
	
		}	
	}
}









