package com.qf.pojo;

import java.io.Serializable;
import java.util.Date;

public class DoctorComment implements Serializable {
    private Integer dcid;

    private Integer did;

    private Doctor doctor;

    private String doctorManner;

    private String degree;

    private Integer number;

    private Date time;

    private String descr;

    private Integer ilid;

    private Illness illness;

    private String remarks;

    private static final long serialVersionUID = 1L;

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Illness getIllness() {
        return illness;
    }

    public void setIllness(Illness illness) {
        this.illness = illness;
    }

    public Integer getDcid() {
        return dcid;
    }

    public void setDcid(Integer dcid) {
        this.dcid = dcid;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getDoctorManner() {
        return doctorManner;
    }

    public void setDoctorManner(String doctorManner) {
        this.doctorManner = doctorManner == null ? null : doctorManner.trim();
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree == null ? null : degree.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
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

    public Integer getIlid() {
        return ilid;
    }

    public void setIlid(Integer ilid) {
        this.ilid = ilid;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}