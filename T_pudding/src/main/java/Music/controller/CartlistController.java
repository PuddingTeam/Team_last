package Music.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Music.model.Cart;
import Music.model.CartDao;
import Music.model.Music;
import Music.model.MusicDao;


@Controller
public class CartlistController {
	
		final String command = "/listcart.ms";
		final String getPage = "CartList";
		
		@Autowired
		CartDao cartdao;
		
		@Autowired
		ServletContext servletcontext;
		
		
		@RequestMapping(command)
		public ModelAndView doAction(HttpSession session,HttpServletResponse response
							) throws IOException {
			int amount =0;
			ModelAndView mav = new ModelAndView();
			PrintWriter pw = response.getWriter();
			response.setContentType("text/html;charset=UTF-8");
			if(session.getAttribute("loginInfo") == null) {
				pw.println("<script type='text/javascript'>");
				pw.println("alert('로그인 페이지로 이동합니다.');");
				pw.println("</script>");
				pw.flush();
				
				session.setAttribute("destination",  "redirect:/listcart.ms");
				
				mav.setViewName("forward:/loginForm.me");
				return mav;
			}				
			Customer customer = (Customer)session.getAttribute("loginInfo");
	         String userid=customer.getCustomer_id();
	         
	         
	         List<Cart> cartlists = cartdao.getDataList(userid);
			
			Cart cart = new Cart();
			
			for(int i=0;i<cartlists.size();i++) {
			amount += cartlists.get(i).getCart_price();
			}
			mav.addObject("cartlists", cartlists);
			session.setAttribute("amount", amount);
			mav.setViewName(getPage);
			
				return mav;																				
		}
	
	
}
