package Login.model;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class Customer {
   
   
   private int customerno;
   @NotEmpty(message = "이름을 입력하세요")
   private String customer_name;
   
   @NotEmpty(message = "아이디를 입력하세요 ")
   private String customer_id;
   
   @Length(min = 3, max = 10, message = "3자~10자 사이에 입력하세요")
   private String customer_passwd;
   @NotEmpty(message="이메일을 입력해주세요.")
   private String customer_email;
   

@Length(min = 5, max = 11, message = "5~11자 사이에 입력하세요")
   private String customer_hpnumber;
   
   

   public Customer() {
      super();
   }
   
   public Customer(int customerno, String customer_name, String customer_id, String customer_passwd, String customer_email,
		String customer_hpnumber) {
	super();
	this.customerno = customerno;
	this.customer_name = customer_name;
	this.customer_id = customer_id;
	this.customer_passwd = customer_passwd;
	this.customer_email = customer_email;
	this.customer_hpnumber = customer_hpnumber;
   }
   
   public String getCustomer_hpnumber() {
	return customer_hpnumber;
   }
public void setCustomer_hpnumber(String customer_hpnumber) {
	this.customer_hpnumber = customer_hpnumber;
	}
public int getCustomerno() {
      return customerno;
   }
   public void setCustomerno(int customerno) {
      this.customerno = customerno;
   }
   public String getCustomer_name() {
      return customer_name;
   }
   public void setCustomer_name(String customer_name) {
      this.customer_name = customer_name;
   }
   public String getCustomer_id() {
      return customer_id;
   }
   public void setCustomer_id(String customer_id) {
      this.customer_id = customer_id;
   }
   public String getCustomer_passwd() {
      return customer_passwd;
   }
   public void setCustomer_passwd(String customer_passwd) {
      this.customer_passwd = customer_passwd;
   }
   public String getCustomer_email() {
      return customer_email;
   }
   public void setCustomer_email(String customer_email) {
      this.customer_email = customer_email;
   }
   
   
      

   
   
   
}