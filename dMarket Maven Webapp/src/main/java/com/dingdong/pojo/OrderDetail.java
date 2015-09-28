package com.dingdong.pojo;

public class OrderDetail {
    private Integer orderDetail_id;

    private Integer item_id;

    private Integer account;

    private Long amount;

    private Integer order_id;

    public Integer getOrderDetail_id() {
        return orderDetail_id;
    }

    public void setOrderDetail_id(Integer orderDetail_id) {
        this.orderDetail_id = orderDetail_id;
    }

    public Integer getItem_id() {
        return item_id;
    }

    public void setItem_id(Integer item_id) {
        this.item_id = item_id;
    }

    public Integer getAccount() {
        return account;
    }

    public void setAccount(Integer account) {
        this.account = account;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }
}