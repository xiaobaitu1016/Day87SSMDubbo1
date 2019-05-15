package com.qf.pojo;

import java.io.Serializable;

public class DoctorSchedule implements Serializable {
    private Integer dscid;

    private Integer dsid;

    private DepartmentsSmall departmentsSmall;

    private Integer did;

    private Doctor doctor;

    private Integer weekday;

    private Integer whichclass;

    private String remarks;

    private static final long serialVersionUID = 1L;

    public DepartmentsSmall getDepartmentsSmall() {
        return departmentsSmall;
    }

    public void setDepartmentsSmall(DepartmentsSmall departmentsSmall) {
        this.departmentsSmall = departmentsSmall;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Integer getDscid() {
        return dscid;
    }

    public void setDscid(Integer dscid) {
        this.dscid = dscid;
    }

    public Integer getDsid() {
        return dsid;
    }

    public void setDsid(Integer dsid) {
        this.dsid = dsid;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public Integer getWeekday() {
        return weekday;
    }

    public void setWeekday(Integer weekday) {
        this.weekday = weekday;
    }

    public Integer getWhichclass() {
        return whichclass;
    }

    public void setWhichclass(Integer whichclass) {
        this.whichclass = whichclass;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}