package Boarder.model;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myRecontentDao")
public class RecontentDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	String namespace="Boarder.model.Recontent";
	
	public void insertBoard(Recontent recontent) {
		sqlSessionTemplate.insert(namespace+".InsertRecontent", recontent);
	}
	public List<Recontent> getRecontentList(int boardno) {
		List<Recontent> recontent = new ArrayList<Recontent>();
		recontent = sqlSessionTemplate.selectList(namespace+".SelectRecontent", boardno);
		return recontent;    
	}
	public Recontent OneRecontentList(int recontentno) {
		Recontent recontent2 = sqlSessionTemplate.selectOne(namespace+".selectoneRecontent",recontentno);
		
		return recontent2;
	}
	public void Updaterecontent(Recontent recontent) {
			sqlSessionTemplate.update(namespace+".UpdateRecontent",recontent);
	}
	public void deleterecontent(int recontentno) {
			
		sqlSessionTemplate.delete(namespace+".DeleteRecontent",recontentno);
		
	}
	public Recontent getData(String recontent_passwd, int recontentno) {
		Recontent recontent_passwd2 = null;
		Recontent recontent =  new Recontent();
		recontent.setRecontent_passwd(recontent_passwd);
		recontent.setRecontentno(recontentno);
		recontent_passwd2 = sqlSessionTemplate.selectOne(namespace + ".GetpasswdData",recontent); 
		return recontent_passwd2;		
		
	}
}
