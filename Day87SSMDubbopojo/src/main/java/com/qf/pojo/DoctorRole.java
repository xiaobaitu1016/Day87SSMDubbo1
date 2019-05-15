package com.qf.pojo;

import java.io.Serializable;

public class DoctorRole implements Serializable {
    private Integer drid;

    private String drname;

    private Double price;

    private String remarks;

    private static final long serialVersionUID = 1L;

    public Integer getDrid() {
        return drid;
    }

    public void setDrid(Integer drid) {
        this.drid = drid;
    }

    public String getDrname() {
        return drname;
    }

    public void setDrname(String drname) {
        this.drname = drname == null ? null : drname.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}