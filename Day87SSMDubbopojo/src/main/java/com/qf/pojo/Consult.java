package com.qf.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Consult implements Serializable {
    private Integer cid;

    private Integer did;

    private Doctor doctor;

    private String descr;

    private Integer suid;

    private Suffer suffer;

    private Date time;

    private List<ConsultAnswer> consultAnswerList;

    private static final long serialVersionUID = 1L;

    public Suffer getSuffer() {
        return suffer;
    }

    public void setSuffer(Suffer suffer) {
        this.suffer = suffer;
    }

    public List<ConsultAnswer> getConsultAnswerList() {
        return consultAnswerList;
    }

    public void setConsultAnswerList(List<ConsultAnswer> consultAnswerList) {
        this.consultAnswerList = consultAnswerList;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr == null ? null : descr.trim();
    }

    public Integer getSuid() {
        return suid;
    }

    public void setSuid(Integer suid) {
        this.suid = suid;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}