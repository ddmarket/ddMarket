package com.dingdong.pojo;

import java.util.Date;

public class Favorite {
    private Integer favorite_id;

    private Integer user_id;

    private Integer item_id;

    private Date favortime;

    public Integer getFavorite_id() {
        return favorite_id;
    }

    public void setFavorite_id(Integer favorite_id) {
        this.favorite_id = favorite_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getItem_id() {
        return item_id;
    }

    public void setItem_id(Integer item_id) {
        this.item_id = item_id;
    }

    public Date getFavortime() {
        return favortime;
    }

    public void setFavortime(Date favortime) {
        this.favortime = favortime;
    }
}