package Order.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import Music.model.Cart;
import Music.model.Music;
import utility.Paging;

@Component
public class OrderDao {
	
private String namespace = "Order.model.OrderDto";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	public void insertorder(Cart lists) {		 
		sqlSessionTemplate.insert(namespace+".insertorder",lists);		
	}
	
	public void insertOne(Music music) {
		sqlSessionTemplate.insert(namespace+".insertorderOne",music);
		
	}
	
	public List<OrderDto> getDataList(Paging pageInfo, Map<String, String> map){
		List<OrderDto> lists = new ArrayList<OrderDto>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(),pageInfo.getLimit());
		lists = sqlSessionTemplate.selectList(namespace+".getDataList",map,rowBounds);		
		return lists;
	}
  
	public List<OrderDto> getDataSearchList(Map<String, String> map){
		List<OrderDto> lists = new ArrayList<OrderDto>();
		lists = sqlSessionTemplate.selectList(namespace+".getDataSearchList", map);
		
		return lists;
	}

	public int getTotalCount(Map<String, String> map) {
		int cnt = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		return cnt;
	}

	public List<OrderDto> getUserOrderlistsdata(String customer_id) {
		List<OrderDto> orderlists = new ArrayList<OrderDto>();
			orderlists = sqlSessionTemplate.selectList(namespace+".OrderUserList",customer_id);
		return orderlists;
	}

	public OrderDto getuserid(String customer_id, int mno) {
		OrderDto order = new OrderDto();
		order.setOrders_mno(mno);
		order.setOrders_userid(customer_id);		
		order = sqlSessionTemplate.selectOne(namespace+".UserOrderList",order);
		return order;
	}
}
