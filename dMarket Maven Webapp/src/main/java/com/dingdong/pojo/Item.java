package com.dingdong.pojo;

public class Item {
	private Integer item_id;

	private Integer classified_id;

	private String name;

	private String brand;

	private String headPic;

	private String repertory;

	private Long price;

	private Integer instock;

	private Integer sales;

	private Integer isrecommend;

	private String introduction;

	public Integer getItem_id() {
		return item_id;
	}

	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}

	public Integer getClassified_id() {
		return classified_id;
	}

	public void setClassified_id(Integer classified_id) {
		this.classified_id = classified_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand == null ? null : brand.trim();
	}

	public String getHeadPic() {
		return headPic;
	}

	public void setHeadPic(String headPic) {
		this.headPic = headPic == null ? null : headPic.trim();
	}

	public String getRepertory() {
		return repertory;
	}

	public void setRepertory(String repertory) {
		this.repertory = repertory == null ? null : repertory.trim();
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public Integer getInstock() {
		return instock;
	}

	public void setInstock(Integer instock) {
		this.instock = instock;
	}

	public Integer getSales() {
		return sales;
	}

	public void setSales(Integer sales) {
		this.sales = sales;
	}

	public Integer getIsrecommend() {
		return isrecommend;
	}

	public void setIsrecommend(Integer isrecommend) {
		this.isrecommend = isrecommend;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction == null ? null : introduction.trim();
	}

	@Override
	public String toString() {
		return "Item [item_id=" + item_id + ", classified_id=" + classified_id
				+ ", name=" + name + ", brand=" + brand + ", headPic="
				+ headPic + ", repertory=" + repertory + ", price=" + price
				+ ", instock=" + instock + ", sales=" + sales
				+ ", isrecommend=" + isrecommend + ", introduction="
				+ introduction + "]";
	}

}