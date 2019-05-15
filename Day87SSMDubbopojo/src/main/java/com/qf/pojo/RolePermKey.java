package com.qf.pojo;

import java.io.Serializable;

public class RolePermKey implements Serializable {
    private Integer rid;

    private Integer pid;

    private static final long serialVersionUID = 1L;

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }
}