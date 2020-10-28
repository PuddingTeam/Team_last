package Order.controller;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Login.model.CustomerDao;
import Music.model.Cart;
import Music.model.CartDao;
import Music.model.Music;
import Music.model.MusicDao;
import Order.model.OrderDao;
import Order.model.OrderDto;

@Controller
public class OrderController {
   
   final String command = "/order.od";
   final String insertcommand = "/insertorder.od";
   final String insertonecommand = "/insertorderone.od";
   final String directcommand = "/directorder.od";
   final String getPage = "Ordermain";
   final String gotoPage = "OrderList";

   
   @Autowired
   CartDao cartdao;
     
   @Autowired
   OrderDao orderdao;

   @Autowired
   MusicDao musicdao;
   
   @RequestMapping(value=command, method = RequestMethod.GET)
   public ModelAndView doAction(HttpServletResponse response,@RequestParam("userid") String userid
                   ) throws IOException {
   List<Cart> lists =   new ArrayList<Cart>();
   ModelAndView mav = new ModelAndView();
   PrintWriter pw = response.getWriter();
   response.setContentType("text/html;charset=UTF-8");
   lists = cartdao.Allselectdata(userid);
   
   
   if(lists.size() != 0) {
	   
      mav.addObject("lists",lists);
      mav.setViewName(getPage);
      return mav;                                                             
   }else {
      pw.println("<script type='text/javascript'>");
        pw.println("alert('장바구니에 담긴 노래가 없습니다');");
        pw.println("history.back()" );
        pw.println("</script>");
        pw.flush(); 
        return null;
   }
   
   }
   
   @RequestMapping(value=directcommand, method = RequestMethod.GET)
   public String doAction(@RequestParam("mno") int mno, Model model,HttpSession session,
                HttpServletResponse response   ) throws IOException {
      
      PrintWriter pw = response.getWriter();
      response.setContentType("text/html;charset=UTF-8");
      
      if(session.getAttribute("loginInfo") == null) {
         
         pw.println("<script type='text/javascript'>");
         pw.println("alert('로그인페이지로 이동합니다.');");
         pw.println("</script>");
         pw.flush();         
         session.setAttribute("destination",  "redirect:/directorder.od?mno="+mno);      
         return "forward:/loginForm.me";                           
      }else {
   Music music = new Music();
   music = musicdao.selectOne(mno);
   
   model.addAttribute("music",music);
         return getPage;                                                             
   }
   }
   
   
   

   @RequestMapping(insertcommand)
       public ModelAndView doAction(HttpSession session,
             @RequestParam(value="orderuser", required=true) String orderuser,            
              HttpServletResponse response
              ) throws IOException {
          
         boolean flag = false;
          //cart테이블에있는 user기준으로 데이터 불러와서 List에 담기
          List<Cart> lists =   new ArrayList<Cart>();      
          List<Cart> list = new ArrayList<Cart>(); 
          PrintWriter pw = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
          String title = "";
        lists = cartdao.Allselectdata(orderuser);
          ModelAndView mav = new ModelAndView();
          OrderDto orderlists = new OrderDto();
          for(int i=0; i<lists.size(); i++)  {
             int mno =  lists.get(i).getCart_mno();
             orderlists = orderdao.getuserid(orderuser, mno);
              if(orderlists==null) {                                 
                 list.add(lists.get(i));                                          
              }else {
                 flag = true;
              	  title+= orderlists.getOrders_title()+"-"+orderlists.getOrders_singer()+"\\n";
                 }
          }	


          if(flag==false) {
          for(int j=0;j<list.size();j++) {
             orderdao.insertorder(list.get(j));
          }
          cartdao.deleteUsercart(orderuser);
          mav.addObject("list",list);
          mav.addObject("orderuser",orderuser);
          mav.setViewName(gotoPage);           
         }else {
      	   pw.println("<script type='text/javascript'>");
             pw.println("alert('구매하시려는 노래  중 아래 \\n"+title+"는 이미 결제한 노래입니다.')");  
             pw.println("</script>");
             pw.flush(); 
             
             mav.setViewName("forward:/listcart.ms");
         }

          return mav;
       }
    
    
   
      //상품->바로결제하기
      @RequestMapping(insertonecommand)
      public ModelAndView doAction(HttpSession session,@RequestParam(value="orderuser", required=true) String orderuser,
                              @RequestParam(value="mno", required=true) int mno,
                              HttpServletResponse response) throws IOException {
         
    	  PrintWriter pw = response.getWriter();
          response.setContentType("text/html;charset=UTF-8");
         ModelAndView mav = new ModelAndView();
         //music테이블에있는 mno기준으로 데이터 불러와서 Music bean에 담기
               Music music = new Music();
               music = musicdao.selectOne(mno);
               String title;
               OrderDto orderlists = new OrderDto();
               orderlists = orderdao.getuserid(orderuser, mno);
               if(orderlists==null) {                                 
            	   //Music bean 가지고 insert하기
                   music.setUser(orderuser);  
                   orderdao.insertOne(music);
                   mav.addObject("music",music);
                   mav.setViewName(gotoPage);
                }
               
               if(orderlists!=null) {
                 title=orderlists.getOrders_title();
                 pw.println("<script type='text/javascript'>");
                 pw.println("alert('구매하시려는   "+title+" 은 이미 결제한 노래입니다.')");  
                 pw.println("</script>");
                 pw.flush(); 
                 
                 mav.setViewName("forward:/puddingmusic_chart.ms");
                }
               
               return mav;
      }

}








