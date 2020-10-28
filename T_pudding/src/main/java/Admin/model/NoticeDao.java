package Admin.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myNoticeDao")
public class NoticeDao {
	private String namespace = "Admin.model.Notice";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int getTotalCount(){
		int cnt = sqlSessionTemplate.selectOne(namespace+".GetTotalCount");
		return cnt;
	}
	public int deleteData(int noticeno) {
		int cnt = sqlSessionTemplate.delete(namespace+".deletedata",noticeno);
		return cnt;
	}
	public List<Notice> getDataList(Paging pageInfo, Map<String, String> map){
		List<Notice> lists = new ArrayList<Notice>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(),pageInfo.getLimit());
		lists = sqlSessionTemplate.selectList(namespace+".GetDataList",map,rowBounds);
		return lists;
	}
	public List<Notice> getDataList(){
		List<Notice> lists = new ArrayList<Notice>();
		lists = sqlSessionTemplate.selectList(namespace+".GetDataList");
		return lists;
	}
	public Notice getOneData(int noticeno){
		Notice notice=new Notice();
		notice = sqlSessionTemplate.selectOne(namespace+".getOneData",noticeno);
		return notice;
	}
	public void updateData(Notice notice) {
		sqlSessionTemplate.update(namespace+".update",notice);
	}
	
	public void insertData(Notice notice) {
		sqlSessionTemplate.insert(namespace+".insertdata",notice);
	}
	
	public void addCount(int noticeno) {
		sqlSessionTemplate.update(namespace+".addCount",noticeno);
	}
	
}
