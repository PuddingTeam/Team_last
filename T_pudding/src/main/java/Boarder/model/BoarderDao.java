package Boarder.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Login.model.Customer;
import utility.Paging;


@Component("myBoarderDao") 
public class BoarderDao {

	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	String namespace="Boarder.model.Boarder";
	
	public void insertBoard(Boarder board) {
		
		sqlSessionTemplate.insert(namespace+".InsertBoard",board);
		    
	}  
	
	public List<Boarder> getBoardList(Paging pageInfo, Map<String, String> map) {
		 List<Boarder> lists = new ArrayList<Boarder>();
		 RowBounds rowBounds = new RowBounds(pageInfo.getOffset(),pageInfo.getLimit());
		lists = sqlSessionTemplate.selectList(namespace+".SelectBoard",map,rowBounds);
		return lists;   
	}

	public Boarder getoneBoardList(int boardno) {
		
		Boarder bean = sqlSessionTemplate.selectOne(namespace+".SelectoneNum" ,boardno);
		return bean;
	}

	public void deleteboard(int boardno) {
		int cnt = sqlSessionTemplate.delete(namespace+".DeleteBoard",boardno);
		System.out.println(cnt);
		
	}
  
	public void updateBoard(Boarder board) {
		int cnt = sqlSessionTemplate.update(namespace+".UpdateBoard",board);
	}

	public int getTotalCount(Map<String, String> map) {
		
		int cnt = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		return cnt;
		
	}
	
	public void addCount(int boardno) {
		sqlSessionTemplate.update(namespace+".addCount", boardno);
	}

	public Boarder getData(String board_passwd, int boardno) {
		Boarder boarder_passwd = null;
		Boarder boarder =  new Boarder();
		boarder.setBoard_passwd(board_passwd);
		boarder.setBoardno(boardno);
		boarder_passwd = sqlSessionTemplate.selectOne(namespace + ".GetpasswdData",boarder); 
		return boarder_passwd;		
		
	}

}
