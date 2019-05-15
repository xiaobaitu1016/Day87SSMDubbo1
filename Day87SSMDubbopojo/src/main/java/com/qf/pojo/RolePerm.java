package com.qf.pojo;

import java.io.Serializable;

public class RolePerm extends RolePermKey implements Serializable {
    private String remarks;

    private static final long serialVersionUID = 1L;

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}