package Music.model;

import java.util.ArrayList;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Music.model.Music;

@Component("cartdao")
public class CartDao {
	
private String namespace = "Music.model.Cart";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public void insertdata(Music music, String userid) {
		music.setUser(userid);
		
		sqlSessionTemplate.insert(namespace+".cartinsert",music);
	}

	public List<Cart> getDataList(String userid) {
		
		List<Cart> lists = new ArrayList<Cart>();
		
		lists =	sqlSessionTemplate.selectList(namespace+".cartSelect",userid);
		
		return lists;
	}

	public void deletecart(int cno) {
		
		sqlSessionTemplate.delete(namespace+".deleteCart",cno);
		
	}
	
	public void deleteUsercart(String orderuser){
		sqlSessionTemplate.delete(namespace+".deleteUsercart",orderuser);
	}


	public Cart oneselectdata(int ordernum) {
		
	Cart cart =	sqlSessionTemplate.selectOne(namespace+".oneselectCart",ordernum);
	return cart;
	}

	public List<Cart> Allselectdata(String userid) {
        List<Cart> lists = new ArrayList<Cart>();
		
		lists =	sqlSessionTemplate.selectList(namespace+".useridCartSelect",userid);
		
		return lists;
	}
	
}
