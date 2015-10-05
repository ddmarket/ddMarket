package com.dingdong.pojo;

public class ItemPic {
    private Integer itemPic_id;

    private Integer item_id;
    
    private String picUrl;

    public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public Integer getItemPic_id() {
        return itemPic_id;
    }

    public void setItemPic_id(Integer itemPic_id) {
        this.itemPic_id = itemPic_id;
    }

    public Integer getItem_id() {
        return item_id;
    }

    public void setItem_id(Integer item_id) {
        this.item_id = item_id;
    }
}