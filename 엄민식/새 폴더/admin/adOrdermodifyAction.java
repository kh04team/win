package admin;



import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.io.IOException;



public class adOrdermodifyAction extends ActionSupport {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
    
	private adorderlistVO paramClass;
	private adorderlistVO resultClass;
	
    private int no;
   	private String goods_color;
    private String mem_name;
    private String order_status;
    private String order_memo;
    private String zip_code;
    private String address1;
    private String address2;
    private String status;
    
    
    public adOrdermodifyAction() throws IOException{
    	reader = Resources.getResourceAsReader("sqlMapConfig.xml");
    	sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
    	reader.close();
    }
    public String execute() throws Exception{
    	paramClass = new adorderlistVO();
		resultClass = new adorderlistVO();
		
		//수정할 항목은
		paramClass.setNo(getNo());
		paramClass.setGoods_color(getGoods_color());
		paramClass.setMem_name(getMem_name());
		paramClass.setOrder_status(getOrder_status());
		paramClass.setOrder_memo(getOrder_memo());
		paramClass.setZip_code(getZip_code());
		paramClass.setAddress1(getAddress1());
		paramClass.setAddress2(getAddress2());
		paramClass.setStatus(getStatus());
		
		//항목을 수정하는 쿼리실행
		sqlMapper.update("adOrderView.updateorder",paramClass);
		resultClass = (adorderlistVO)sqlMapper.queryForObject("adOrderView.selectOne", getNo());
		
		return SUCCESS;
    }
    
    
    
    
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public adorderlistVO getParamClass() {
		return paramClass;
	}
	public void setParamClass(adorderlistVO paramClass) {
		this.paramClass = paramClass;
	}
	public adorderlistVO getResultClass() {
		return resultClass;
	}
	public void setResultClass(adorderlistVO resultClass) {
		this.resultClass = resultClass;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getGoods_color() {
		return goods_color;
	}
	public void setGoods_color(String goods_color) {
		this.goods_color = goods_color;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	
	public String getOrder_memo() {
		return order_memo;
	}
	public void setOrder_memo(String order_memo) {
		this.order_memo = order_memo;
	}
	public String getZip_code() {
		return zip_code;
	}
	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	    
	
}
