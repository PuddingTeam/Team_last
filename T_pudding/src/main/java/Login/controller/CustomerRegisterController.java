package Login.controller;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Login.model.CustomerDao;



@Controller
public class CustomerRegisterController {

	final String command = "/registerForm.me";
	final String getPage = "RegisterForm";
	final String gotoPage = "redirect:/loginForm.me"; // MemberListController

	@Autowired
	CustomerDao customerDao;

	// MemberLoginForm.jsp 
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doAction() {

		return getPage;
	}

	//MemberRegisterForm.jsp ���� ��û�� 
	@RequestMapping(value=command, method=RequestMethod.POST) // MemberLoginForm.jsp���� �Ѿ��
	public ModelAndView doAction(@Valid Customer customer,BindingResult result,HttpServletResponse response) throws IOException {

		Customer dbcustomer = customerDao.getData(customer.getCustomer_id());	//db안에 select한 값
		PrintWriter pw = response.getWriter();
		
		response.setContentType("text/html;charset=UTF-8");
		ModelAndView mav = new ModelAndView();
		//중복검사
			
	
		if(result.hasErrors()) { 			//유효성 검사 오류 뜨면
			mav.setViewName(getPage);
			return mav;
		}
		else {								//유효성검사 오류 안뜨면
			if(dbcustomer != null){		//
				System.out.println("아이디와 db아이디가 중복됨");
				pw.println("<script type='text/javascript'>");
				pw.println("alert('아이디가 중복됩니다.');");
				pw.println("</script>");
				pw.flush();   //내보내기
				return new ModelAndView(getPage);
			}
			else {
			customerDao.insertData(customer);
			mav.setViewName(gotoPage);
			return mav;
			}
			
		}
		
			
	}
	
	
}



	