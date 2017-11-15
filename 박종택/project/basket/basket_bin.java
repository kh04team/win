package basket;

public class basket_bin {

	private int no;
	private int goods_no;
	private int goods_qty;
	private int goods_price;
	private String status;
	private String goods_name;
	private String main_img_save;
	private String goods_price_sum;
	private String id;
	
	public String getGoods_price_sum() {
		return goods_price_sum;
	}
	public void setGoods_price_sum(String goods_price_sum) {
		this.goods_price_sum = goods_price_sum;
	}
	public String getMain_img_save() {
		return main_img_save;
	}
	public void setMain_img_save(String main_img_save) {
		this.main_img_save = main_img_save;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}	
	public int getGoods_no() {
		return goods_no;
	}
	public void setGoods_no(int goods_no) {
		this.goods_no = goods_no;
	}
	public int getGoods_qty() {
		return goods_qty;
	}
	public void setGoods_qty(int goods_qty) {
		this.goods_qty = goods_qty;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
}
