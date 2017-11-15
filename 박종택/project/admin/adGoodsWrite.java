package admin;

import com.opensymphony.xwork2.ActionSupport;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.io.File;
import org.apache.commons.io.FileUtils;

public class adGoodsWrite extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private goods_bin paramClass;
	private goods_bin resultClass;
	private goods_bin resultClass2;
	
	private int goods_no;
	private long category_no;
	private String category_name;
	private String goods_name;
	private int goods_qty;
	private long goods_price;
	private String goods_color;
	private String main_img_org;
	private String main_img_save;
	private String thumbs_img_org;
	private String thumbs_img_save;
	private String detail_img_org;
	private String detail_img_save;
	private String status;	

	private File upload;
	private String uploadContentType;
	private String uploadFileName;
//	private String fileUploadPath="C:\\java\\upload\\";
	//private String fileUploadPath="/home/oracle/upload/";	

	private File upload2;
	private String upload2ContentType;
	private String upload2FileName;	
	
	//private String fileUploadPath="/usr/share/tomcat6/webapps/icase/customer/img/product/";
	
	private String fileUploadPath = "D:\\source\\java\\project\\icase\\WebContent\\customer\\img\\product\\";	
		
	
	public File getUpload2() {
		return upload2;
	}

	public void setUpload2(File upload2) {
		this.upload2 = upload2;
	}

	public String getUpload2ContentType() {
		return upload2ContentType;
	}

	public void setUpload2ContentType(String upload2ContentType) {
		this.upload2ContentType = upload2ContentType;
	}

	public String getUpload2FileName() {
		return upload2FileName;
	}

	public void setUpload2FileName(String upload2FileName) {
		this.upload2FileName = upload2FileName;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}	

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}	
	

	public adGoodsWrite() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();

	}	
	
	public String execute() throws Exception {
		
		paramClass = new goods_bin();
		
		//paramClass.setCategory_name(getCategory_name());
		
		paramClass.setCategory_no(getCategory_no());
		paramClass.setGoods_no(getGoods_no());
		paramClass.setGoods_name(getGoods_name());
		paramClass.setGoods_qty(getGoods_qty());
		paramClass.setGoods_price(getGoods_price());
		paramClass.setGoods_color(getGoods_color());
				
		sqlMapper.insert("goods.insertGoods", paramClass);
		
	
		if(getUpload() != null && getUpload2() != null)
		{
			
			resultClass = (goods_bin) sqlMapper.queryForObject("goods.selectLastNo");
			
			String file_name = "file_main_img_" + resultClass.getGoods_no();
			String file_ext = getUploadFileName().substring(
					getUploadFileName().lastIndexOf('.') + 1,
					getUploadFileName().length()
					);
			
			File destFile = new File(fileUploadPath + file_name + "." + file_ext);
			FileUtils.copyFile(getUpload(), destFile);
		
		
			String file_name2 = "file_detail_img_" + resultClass.getGoods_no();
			String file_ext2 = getUpload2FileName().substring(
					getUpload2FileName().lastIndexOf('.') + 1,
					getUpload2FileName().length()
					);
			
			File destFile2 = new File(fileUploadPath + file_name2 + "." + file_ext2);
			FileUtils.copyFile(getUpload2(), destFile2);			
			
			paramClass.setGoods_no(resultClass.getGoods_no());
			paramClass.setMain_img_org(getUploadFileName());
			paramClass.setMain_img_save(file_name + "." +file_ext);			
			
			paramClass.setDetail_img_org(getUpload2FileName());
			paramClass.setDetail_img_save(file_name2 + "." +file_ext2);					
			
			sqlMapper.update("goods.updateFile", paramClass);
		}
			/*
            //썸네일 가로사이즈
            int thumbnail_width = 450;
            //썸네일 세로사이즈
            int thumbnail_height = 450;
            //원본이미지파일의 경로+파일명
            File origin_file_name = new File(fileUploadPath + file_name + "." + file_ext);
            //생성할 썸네일파일의 경로+썸네일파일명
            File thumb_file_name = new File(fileUploadPath + "product_small_file_" + resultClass.getGoods_no() + "." + file_ext);
 
            BufferedImage buffer_original_image = ImageIO.read(origin_file_name);
            BufferedImage buffer_thumbnail_image = new BufferedImage(thumbnail_width, thumbnail_height, BufferedImage.TYPE_3BYTE_BGR);
            Graphics2D graphic = buffer_thumbnail_image.createGraphics();
            graphic.drawImage(buffer_original_image, 0, 0, thumbnail_width, thumbnail_height, null);
            ImageIO.write(buffer_thumbnail_image, "jpg", thumb_file_name);
			
			
			paramClass.setGoods_no(resultClass.getGoods_no());
			paramClass.setMain_img_org(getMain_img_org());
			paramClass.setMain_img_save(file_name + "." +file_ext);
			paramClass.setThumbs_img_org(getThumbs_img_org());
			paramClass.setThumbs_img_save("product_small_file_" + resultClass.getGoods_no() + "." + file_ext);			
			
			file_name = "product_detail_file_" + resultClass.getGoods_no();						
			file_ext = getDetail_img_org().substring(
					getDetail_img_org().lastIndexOf('.') + 1,
					getDetail_img_org().length()
					);
			
			destFile = new File(fileUploadPath + file_name + "." + file_ext);
			FileUtils.copyFile(getUpload2(), destFile);			
			
			paramClass.setDetail_img_org(getDetail_img_org());
			paramClass.setDetail_img_save(file_name + "." +file_ext);			
			
			sqlMapper.update("updateFile", paramClass);
			*/
		//}		
		
		return SUCCESS;
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
	
	public long getCategory_no() {
		return category_no;
	}

	public void setCategory_no(long category_no) {
		this.category_no = category_no;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public int getGoods_qty() {
		return goods_qty;
	}

	public void setGoods_qty(int goods_qty) {
		this.goods_qty = goods_qty;
	}

	public long getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(long goods_price) {
		this.goods_price = goods_price;
	}

	public String getGoods_color() {
		return goods_color;
	}

	public void setGoods_color(String goods_color) {
		this.goods_color = goods_color;
	}

	public String getMain_img_org() {
		return main_img_org;
	}

	public void setMain_img_org(String main_img_org) {
		this.main_img_org = main_img_org;
	}

	public String getMain_img_save() {
		return main_img_save;
	}

	public void setMain_img_save(String main_img_save) {
		this.main_img_save = main_img_save;
	}

	public String getThumbs_img_org() {
		return thumbs_img_org;
	}

	public void setThumbs_img_org(String thumbs_img_org) {
		this.thumbs_img_org = thumbs_img_org;
	}

	public String getThumbs_img_save() {
		return thumbs_img_save;
	}

	public void setThumbs_img_save(String thumbs_img_save) {
		this.thumbs_img_save = thumbs_img_save;
	}

	public String getDetail_img_org() {
		return detail_img_org;
	}

	public void setDetail_img_org(String detail_img_org) {
		this.detail_img_org = detail_img_org;
	}

	public String getDetail_img_save() {
		return detail_img_save;
	}

	public void setDetail_img_save(String detail_img_save) {
		this.detail_img_save = detail_img_save;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}	
	

	
}
