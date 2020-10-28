package Login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Login.model.CustomerDao;


@Controller
public class CustomerFindIdController {

	final String command = "/findid.me";
	final String getPage = "FindIdForm";
	final String gotoPage = "LoginForm";
	

	@Autowired
	CustomerDao customerDao;

	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doAction() {
		return getPage; 
	}

	@RequestMapping(value=command , method=RequestMethod.POST)
	public ModelAndView doAction(Customer customer,HttpServletResponse response,
			@RequestParam(value="customer_name",required=true) String customer_name,
			@RequestParam(value="customer_hpnumber",required=true) String customer_hpnumber   ) throws IOException {

		Customer customerbean = customerDao.getOneData(customer_name,customer_hpnumber);
		
		ModelAndView mav = new ModelAndView();
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		
		if(customerbean == null) {	
			pw.println("<script type='text/javascript'>");
			pw.println("alert('회원정보가 없습니다.');");
			pw.println("</script>");
			pw.flush();   //내보내기
			return new ModelAndView(getPage);
		}																			
		else {			
			
			if(customerbean.getCustomer_hpnumber().equals(customer_hpnumber)){//이름과  번호가 같으면 
				System.out.println("이름과 휴대폰번호 둘다 같음");
				pw.println("<script type='text/javascript'>");
		        pw.println("alert('아이디는 "+customerbean.getCustomer_id()+"입니다.')");
		        pw.println("</script>");
		        pw.flush();   //내보내기
		        return new ModelAndView(gotoPage);
			}else {																		//이름 같고 번호 틀림 똑같이 length로 만들 것
				System.out.println("이름과 휴대폰번호 둘다 없음");
				pw.println("<script type='text/javascript'>");
				pw.println("alert('번호 틀렸습니다.');");
				pw.println("</script>");
				pw.flush();   //내보내기
				mav.setViewName(getPage);
				return mav;
			}
		}


	}
}
