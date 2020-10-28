package Login.controller;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Login.model.CustomerDao;
import Order.model.OrderDao;
import Order.model.OrderDto;

@Controller
public class CustomerMypageController {
   
   final String command = "/myPageList.me"; 
   final String getPage = "MyPageListForm";
 
   
   
   @Autowired
   CustomerDao customerDao;
   @Autowired 
   OrderDao ordersdao;
   
   @RequestMapping(command)
   public String doAction(Model model, HttpSession session,
		   HttpServletResponse response) throws IOException {
	   Customer loginInfo = (Customer)session.getAttribute("loginInfo");
	   PrintWriter pw = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
	   
	   if(loginInfo == null) {
		   pw.println("<script type='text/javascript'>");
			pw.println("alert('로그인 페이지로 이동합니다.');");
			pw.println("</script>");
			pw.flush(); 
		   
		session.setAttribute("destination","redirect:/myPageList.me");
		return "forward:/loginForm.me";
		}
	   else {
			Customer lists = customerDao.getData(loginInfo.getCustomer_id());
			List<OrderDto> orderlists = ordersdao.getUserOrderlistsdata(loginInfo.getCustomer_id());
			model.addAttribute("orderlists",orderlists);
			model.addAttribute("lists",lists);
			  return getPage; 
		}	   
   }
}
