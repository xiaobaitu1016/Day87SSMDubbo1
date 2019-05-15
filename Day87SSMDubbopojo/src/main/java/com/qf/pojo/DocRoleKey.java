package com.qf.pojo;

import java.io.Serializable;
import java.util.List;

public class DocRoleKey implements Serializable {
    private Integer did;

    private Integer rid;

    private List<Roles> rolesList;

    private static final long serialVersionUID = 1L;

    public List<Roles> getRolesList() {
        return rolesList;
    }

    public void setRolesList(List<Roles> rolesList) {
        this.rolesList = rolesList;
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