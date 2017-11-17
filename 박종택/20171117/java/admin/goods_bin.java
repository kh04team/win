package admin;

public class goods_bin {

	private int goods_no;
	private long category_no;
	private String category_name;
	private String goods_name;
	private int goods_qty;
	private long goods_price;
	private String goods_color;
	private String main_img_org;
	private String main_img_save;
/*	private String thumbs_img_org;
	private String thumbs_img_save;*/
	private String detail_img_org;
	private String detail_img_save;
	private String status;	
	private int iter_no = 1;
	
	public int getIter_no() {
		return iter_no;
	}
	public void setIter_no(int iter_no) {
		this.iter_no = iter_no + 1;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
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
/*	public String getThumbs_img_org() {
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
	}*/
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
