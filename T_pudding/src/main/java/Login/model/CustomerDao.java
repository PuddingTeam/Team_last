package Login.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;


@Component("myCustomerDao")
public class CustomerDao {
   
   private final String namespace="Login.model.Customer";
   
   @Autowired
   SqlSessionTemplate sqlSessionTemplate;
   


   public void insertData(Customer customer) {
      

      sqlSessionTemplate.insert(namespace + ".InsertData", customer);
   }



   public Customer getData(String customer_id) {
      Customer customer = new Customer();
      customer = sqlSessionTemplate.selectOne(namespace + ".GetData",customer_id);
      return customer;
   }


   public List<Customer> getDataList(Paging paging,Map<String,String> map) {   
      
      List<Customer> lists = new ArrayList<Customer>();
      RowBounds rowBounds = new RowBounds(paging.getOffset(),paging.getLimit()); // 10,5
      lists = sqlSessionTemplate.selectList(namespace+".GetDataList",map,rowBounds);
      return lists;   
   }

   public Customer getOneData(String customer_name) {   //findId
      Customer customer = new Customer();
      customer = sqlSessionTemplate.selectOne(namespace + ".getOneData",customer_name);
      return customer; 
   }




   public int getTotalCount(Map<String,String> map){
      int cnt = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
      return cnt;
   }

   public int deleteData(int customerno) {
      
      int cnt = sqlSessionTemplate.delete(namespace+".deleteData", customerno);
      return cnt;
      
   }



   public void updateData(Customer customer) {
      sqlSessionTemplate.update(namespace + ".UpdateData",customer);
   }



   public Customer getOneData(String customer_name, String customer_hpnumber) {
      Customer customer2 = null;
         Customer customer =  new Customer();
         customer.setCustomer_name(customer_name);
         customer.setCustomer_hpnumber(customer_hpnumber);
         customer2 = sqlSessionTemplate.selectOne(namespace + ".getOneData",customer); 
         return customer2; 
   }

   public Customer getPwdFind(String customer_name, String customer_id) {
      Customer customer2 = null;
         Customer customer =  new Customer();
         customer.setCustomer_name(customer_name);
         customer.setCustomer_id(customer_id);
         customer2 = sqlSessionTemplate.selectOne(namespace + ".getPwdFind",customer); 
         return customer2; 
   }



   public Customer customergetnum(int customerno) {
      Customer customer = new Customer();
        customer =   sqlSessionTemplate.selectOne(namespace+".customergetnum",customerno);   
      return customer;
   }



public void updatemypageupdate(Customer customer) {
	System.out.println(customer.getCustomer_email());
	sqlSessionTemplate.update(namespace+".mypageupdate",customer);
}



   



   

   


   



   



   


}