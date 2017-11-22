package order;

import com.opensymphony.xwork2.ActionSupport;

import admin.goods_bin;
import admin.pagingActionNew;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import order.order_Status_bin;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.net.*;
import java.text.SimpleDateFormat;

public class orderRate extends ActionSupport{

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private List<order_bin> list = new ArrayList<order_bin>();
	
	private List<order_bin> listRate = new ArrayList<order_bin>();
	private List<order_bin> listRate2 = new ArrayList<order_bin>();
	private List<order_bin> listRate3 = new ArrayList<order_bin>();
	


	private int order_qty;
	private order_bin paramClass;
	private order_bin resultClass = new order_bin();
	private order_bin resultClass2 = new order_bin();
	private String datetime;


	public orderRate() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		
		SimpleDateFormat formatter2 = new SimpleDateFormat ( "yyyy", Locale.KOREA ); 
		Date currentTime2 = new Date(); 
		String dateSet = formatter2.format ( currentTime2 );		
		
		sqlMapper.update("orderSet.deleteRateAll", 1);
		
		String [] date_set = {dateSet+"-01",dateSet+"-02",dateSet+"-03",dateSet+"-04",dateSet+"-05",dateSet+"-06",dateSet+"-06",dateSet+"-07",dateSet+"-08",dateSet+"-09",dateSet+"-10",dateSet+"-11",dateSet+"-12"};
		
		for(String date_set_value : date_set)
		{
			list = sqlMapper.queryForList("orderSet.selectOrderDate", date_set_value+"%");
			
			Iterator<order_bin> it1 = list.iterator();
			while(it1.hasNext())
			{		
				
				order_bin element = (order_bin) it1.next();
				/*
				System.out.print(element.getOrder_qty()+ " ");
				System.out.print(element.getOrder_price()+ " ");
				System.out.print(element.getGoods_no()+ " ");
				System.out.println(date_set_value);				
				*/
				paramClass = new order_bin();
				paramClass.setOrder_qty(element.getOrder_qty());
				paramClass.setOrder_price(element.getOrder_price());
				paramClass.setGoods_no(element.getGoods_no());
				paramClass.setDatetime(date_set_value);

				sqlMapper.insert("orderSet.insertRate", paramClass);
			}
		}
		
		listRate = sqlMapper.queryForList("orderSet.selectOrderRate1", dateSet+"%");
		int totalCount = listRate.size();
		listRate = listRate.subList(0, totalCount);		

		listRate2 = sqlMapper.queryForList("orderSet.selectOrderRate2", dateSet+"%");
		int totalCount2 = listRate2.size();
		listRate2 = listRate2.subList(0, totalCount2);		
		
		/*listRate3 = sqlMapper.queryForList("orderSet.selectOrderRate3", "");
		int totalCount3 = listRate3.size();
		listRate3 = listRate3.subList(0, totalCount3);	*/		
		
		resultClass = (order_bin) sqlMapper.queryForObject("orderSet.selectOrderRate3", "");
		
		return SUCCESS;
	}

	public List<order_bin> getListRate3() {
		return listRate3;
	}

	public void setListRate3(List<order_bin> listRate3) {
		this.listRate3 = listRate3;
	}	
	
	public List<order_bin> getListRate2() {
		return listRate2;
	}

	public void setListRate2(List<order_bin> listRate2) {
		this.listRate2 = listRate2;
	}	
	
	public List<order_bin> getListRate() {
		return listRate;
	}

	public void setListRate(List<order_bin> listRate) {
		this.listRate = listRate;
	}	
	
	public List<order_bin> getList() {
		return list;
	}

	public void setList(List<order_bin> list) {
		this.list = list;
	}
	
	
	public order_bin getParamClass() {
		return paramClass;
	}

	public void setParamClass(order_bin paramClass) {
		this.paramClass = paramClass;
	}

	public order_bin getResultClass2() {
		return resultClass2;
	}

	public void setResultClass2(order_bin resultClass2) {
		this.resultClass2 = resultClass2;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}	
	
	public int getOrder_qty() {
		return order_qty;
	}

	public void setOrder_qty(int order_qty) {
		this.order_qty = order_qty;
	}

	public order_bin getResultClass() {
		return resultClass;
	}

	public void setResultClass(order_bin resultClass) {
		this.resultClass = resultClass;
	}	
	
}
