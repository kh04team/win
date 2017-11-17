package admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.IOException;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;



public class adGoodsModifyForm extends ActionSupport{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private goods_bin paramClass = new goods_bin();
	private goods_bin resultClass = new goods_bin();
	
	private int goods_no;
	
	private int totalCount;
	
	
	private List<goods_bin> list = new ArrayList<goods_bin>();
	
	private String fileUploadPath = "D:\\source\\java\\project\\icase\\WebContent\\customer\\img\\product\\";
	
	//private String fileUploadPath = "/usr/share/tomcat6/webapps/icase/customer/img/product/";
	
	private InputStream inputStream;
	private String contentDisposition;
	private long contentLength;

	public adGoodsModifyForm() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		
		list = sqlMapper.queryForList("goods.selectCategoryAll");
		
		totalCount = list.size();
		
		int lastCount = totalCount;
		
		list = list.subList(0, lastCount);		
		
		paramClass.setGoods_no(getGoods_no());
		
		resultClass = (goods_bin) sqlMapper.queryForObject("goods.selectOne", paramClass);
		
		return SUCCESS;
	}
	
	public String download() throws Exception
	{
		
		paramClass.setGoods_no(getGoods_no());
		
		resultClass = (goods_bin) sqlMapper.queryForObject("goods.selectOne", paramClass);
		
		File fileInfo = new File(fileUploadPath + resultClass.getMain_img_save());
		
		setContentLength(fileInfo.length());
		setContentDisposition("attachment; filename=" + URLEncoder.encode(resultClass.getMain_img_org(),"UTF-8"));
		setInputStream(new FileInputStream(fileUploadPath + resultClass.getMain_img_save()));
		
/*		
		File fileInfo = new File(fileUploadPath + fileDownloadName);
		setContentLength(fileInfo.length());
		setContentDisposition("attachment; filename="+URLEncoder.encode(fileDownloadName, "UTF-8"));
		setInputStream(new FileInputStream(fileUploadPath + fileDownloadName));
*/		
		return SUCCESS;
	}
	
	public String download2() throws Exception
	{
		
		paramClass.setGoods_no(getGoods_no());
		
		resultClass = (goods_bin) sqlMapper.queryForObject("goods.selectOne", paramClass);
		
		File fileInfo = new File(fileUploadPath + resultClass.getDetail_img_save());
		
		setContentLength(fileInfo.length());
		setContentDisposition("attachment; filename=" + URLEncoder.encode(resultClass.getDetail_img_org(),"UTF-8"));
		setInputStream(new FileInputStream(fileUploadPath + resultClass.getDetail_img_save()));
		
/*		
		File fileInfo = new File(fileUploadPath + fileDownloadName);
		setContentLength(fileInfo.length());
		setContentDisposition("attachment; filename="+URLEncoder.encode(fileDownloadName, "UTF-8"));
		setInputStream(new FileInputStream(fileUploadPath + fileDownloadName));
*/		
		return SUCCESS;
	}	

	public List<goods_bin> getList() {
		return list;
	}

	public void setList(List<goods_bin> list) {
		this.list = list;
	}

	public goods_bin getParamClass() {
		return paramClass;
	}

	public void setParamClass(goods_bin paramClass) {
		this.paramClass = paramClass;
	}

	public goods_bin getResultClass() {
		return resultClass;
	}

	public void setResultClass(goods_bin resultClass) {
		this.resultClass = resultClass;
	}

	public int getGoods_no() {
		return goods_no;
	}

	public void setGoods_no(int goods_no) {
		this.goods_no = goods_no;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public String getContentDisposition() {
		return contentDisposition;
	}

	public void setContentDisposition(String contentDisposition) {
		this.contentDisposition = contentDisposition;
	}

	public long getContentLength() {
		return contentLength;
	}

	public void setContentLength(long contentLength) {
		this.contentLength = contentLength;
	}	
	

}
