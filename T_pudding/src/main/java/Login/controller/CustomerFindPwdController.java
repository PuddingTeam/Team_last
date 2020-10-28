package Login.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
public class CustomerFindPwdController {

	final String command = "/findpwd.me";
	final String getPage = "FindPwdForm";
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
								@RequestParam(value="customer_id",required=true) String customer_id
								) throws IOException {
		
		
		Customer bean = customerDao.getPwdFind(customer_name,customer_id);
		
		ModelAndView mav = new ModelAndView(); 
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		
		if(bean == null) {	
			System.out.println("id, name 둘다  없음");
			pw.println("<script type='text/javascript'>");
			pw.println("alert('회원정보가 없습니다.');");
			pw.println("</script>");
			pw.flush();   //내보내기
			return new ModelAndView(getPage);
		}																			
		else {
			System.out.println(bean.getCustomer_id());
			System.out.println(bean.getCustomer_name());
			
			if(bean.getCustomer_name().equals(customer_name)){//아이디와 이름이같으면 
				System.out.println("이름과 아이디 같음");
				pw.println("<script type='text/javascript'>");
				pw.println("alert('비밀번호는 "+bean.getCustomer_passwd()+"입니다.')");
		        pw.println("</script>");
		        pw.flush();   //내보내기
				mav.setViewName(gotoPage);
				return mav;
			}else {																		//이름 같고 번호 틀림 똑같이 length로 만들 것
				System.out.println("아이디와 이름이 틀림");
				pw.println("<script type='text/javascript'>");
				pw.println("alert('이름 틀렸습니다.');");
				pw.println("</script>");
				pw.flush();   //내보내기
				mav.setViewName(getPage);
				return mav;
			}
		}
		
		
	}
}










