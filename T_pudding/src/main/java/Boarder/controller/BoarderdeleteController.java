package Boarder.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Boarder.model.Boarder;
import Boarder.model.BoarderDao;
import Boarder.model.Recontent;
import Boarder.model.RecontentDao;

@Controller
public class BoarderdeleteController {
   
   final String command = "/delete.bd";
   final String gotoPage = "redirect:/boarderList.bd";
   final String recommand = "recontentdelete.bd";
   final String regotoPage="redirect:/content.bd";
   
   
   @Autowired    
   BoarderDao boardDao;
   
   @Autowired
   RecontentDao recontentdao;
   
   @RequestMapping(command)
   public String doAction(   HttpServletRequest request, HttpServletResponse response,
         @RequestParam(value="boardno",required=true) int boardno,
                     @RequestParam(value="board_passwd",required=true) String board_passwd) throws IOException {
       
      PrintWriter pw = response.getWriter();                     
         response.setContentType("text/html;charset=UTF-8"); 
      Boarder dbboard = boardDao.getoneBoardList(boardno);
       System.out.println("dbboard.getBoard_passwd():"+dbboard.getBoard_passwd());
       System.out.println("board_passwd:"+board_passwd);
      
       if(dbboard.getBoard_passwd().equals(board_passwd)) {
      boardDao.deleteboard(boardno);
      return gotoPage;
      } else {
           pw.println("<script type='text/javascript'>");
            pw.println("alert('비밀번호가일치하지 않습니다');");
            pw.println("history.back()" );
            pw.println("</script>");
            pw.flush(); 
            return null;
      }
      
   }
   

   @RequestMapping(recommand)
   public String recontentdoAction(@RequestParam("recontentno")int recontentno,
         @RequestParam("boardno")int boardno,
         @RequestParam("board_passwd") String board_passwd,
         HttpServletResponse response) throws IOException {
      
         PrintWriter pw = response.getWriter(); 
            response.setContentType("text/html;charset=UTF-8"); 
         Recontent recontent = recontentdao.OneRecontentList(recontentno);
         
         if(recontent.getRecontent_passwd().equals(board_passwd)) {
            recontentdao.deleterecontent(recontentno);
      
            return "redirect:/content.bd?boardno="+boardno;
         }else {
            pw.println("<script type='text/javascript'>");
               pw.println("alert('비밀번호가일치하지 않습니다');");
               pw.println("history.back()" );
               pw.println("</script>");
               pw.flush(); 
               return null;
         }
      
      
   }
}