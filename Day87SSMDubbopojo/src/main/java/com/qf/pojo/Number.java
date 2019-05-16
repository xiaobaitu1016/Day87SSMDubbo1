package com.qf.pojo;

import java.io.Serializable;
import java.util.Date;

public class Number implements Serializable {
    private Integer nuid;

    private String data;

    private Integer count;

    private Integer ilid;

    private Illness illness;

    private Integer did;

    private Doctor doctor;

    private Integer suid;

    private Suffer suffer;

    private String state;

    private Date time;

    private String descr;

    private String remarks;

    private static final long serialVersionUID = 1L;

    @Override
    public String toString() {
        return "Number{" +
                "nuid=" + nuid +
                ", data='" + data + '\'' +
                ", count=" + count +
                ", ilid=" + ilid +
                ", illness=" + illness +
                ", did=" + did +
                ", doctor=" + doctor +
                ", suid=" + suid +
                ", suffer=" + suffer +
                ", state='" + state + '\'' +
                ", time=" + time +
                ", descr='" + descr + '\'' +
                ", remarks='" + remarks + '\'' +
                '}';
    }

    public Illness getIllness() {
        return illness;
    }

    public void setIllness(Illness illness) {
        this.illness = illness;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Suffer getSuffer() {
        return suffer;
    }

    public void setSuffer(Suffer suffer) {
        this.suffer = suffer;
    }

    public Integer getNuid() {
        return nuid;
    }

    public void setNuid(Integer nuid) {
        this.nuid = nuid;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data == null ? null : data.trim();
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getIlid() {
        return ilid;
    }

    public void setIlid(Integer ilid) {
        this.ilid = ilid;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public Integer getSuid() {
        return suid;
    }

    public void setSuid(Integer suid) {
        this.suid = suid;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr == null ? null : descr.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}