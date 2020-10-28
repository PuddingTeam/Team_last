package Login.controller;



import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Login.model.CustomerDao;

@Controller
public class CustomerMypageUpdateController {
   
   final String command = "/myPageUpdate.me";  
   final String getPage = "MyPageUpdateForm";
   final String gotoPage = "redirct:/myPageList.me";
 
   
   
   @Autowired
   CustomerDao customerDao;
   
   @RequestMapping(value=command,method=RequestMethod.GET)
   public ModelAndView doAction(@RequestParam(value="customerno") int customerno) {
	 ModelAndView mav = new ModelAndView();
	 Customer customer = customerDao.customergetnum(customerno);
	 mav.addObject("customer",customer);
	 mav.setViewName(getPage);
	   return mav;
	   
   }
   @RequestMapping(value=command,method=RequestMethod.POST)
   public ModelAndView doAction(@Valid Customer customer,BindingResult result,HttpSession session) {
	   ModelAndView mav = new ModelAndView();
	   System.out.println("customer email"+  customer.getCustomer_email());
	   if(result.hasErrors()) {
		   mav.setViewName(getPage);
		   return mav;
	   }
	 Customer loginInfo =  (Customer)session.getAttribute("loginInfo");
	   customerDao.updatemypageupdate(customer);
	   mav.addObject("loginInfo",loginInfo);
	   mav.setViewName("redirect:/myPageList.me");
	   return mav;
	   
	   
   }
}
