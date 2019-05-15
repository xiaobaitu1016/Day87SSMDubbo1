package com.qf.pojo;

import java.io.Serializable;

public class DoctorIllness implements Serializable {
    private Integer dilid;

    private Integer did;

    private Integer ilid;

    private Illness illness;

    private Integer top;

    private String remarks;

    private static final long serialVersionUID = 1L;

    public Illness getIllness() {
        return illness;
    }

    public void setIllness(Illness illness) {
        this.illness = illness;
    }

    public Integer getDilid() {
        return dilid;
    }

    public void setDilid(Integer dilid) {
        this.dilid = dilid;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public Integer getIlid() {
        return ilid;
    }

    public void setIlid(Integer ilid) {
        this.ilid = ilid;
    }

    public Integer getTop() {
        return top;
    }

    public void setTop(Integer top) {
        this.top = top;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}