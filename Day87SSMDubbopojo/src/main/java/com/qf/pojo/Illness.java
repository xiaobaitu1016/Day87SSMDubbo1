package com.qf.pojo;

import java.io.Serializable;

public class Illness implements Serializable {
    private Integer ilid;

    private String ilname;

    private Integer dsid;

    private String remarks;

    private static final long serialVersionUID = 1L;

    public Integer getIlid() {
        return ilid;
    }

    public void setIlid(Integer ilid) {
        this.ilid = ilid;
    }

    public String getIlname() {
        return ilname;
    }

    public void setIlname(String ilname) {
        this.ilname = ilname == null ? null : ilname.trim();
    }

    public Integer getDsid() {
        return dsid;
    }

    public void setDsid(Integer dsid) {
        this.dsid = dsid;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}