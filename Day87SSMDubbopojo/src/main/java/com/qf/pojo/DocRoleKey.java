package com.qf.pojo;

import java.io.Serializable;
import java.util.List;

public class DocRoleKey implements Serializable {
    private Integer did;

    private Integer rid;

    private Roles roles;

    private static final long serialVersionUID = 1L;

    public Roles getRoles() {
        return roles;
    }

    public void setRoles(Roles roles) {
        this.roles = roles;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }
}