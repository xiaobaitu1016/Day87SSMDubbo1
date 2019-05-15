package com.qf.pojo;

import java.io.Serializable;
import java.util.List;

public class DepartmentsSmall implements Serializable {
    private Integer dsid;

    private Integer dbid;

    private String dsname;

    private String remarks;

    private List<Illness> illnessList;

    private static final long serialVersionUID = 1L;

    public List<Illness> getIllnessList() {
        return illnessList;
    }

    public void setIllnessList(List<Illness> illnessList) {
        this.illnessList = illnessList;
    }

    public Integer getDsid() {
        return dsid;
    }

    public void setDsid(Integer dsid) {
        this.dsid = dsid;
    }

    public Integer getDbid() {
        return dbid;
    }

    public void setDbid(Integer dbid) {
        this.dbid = dbid;
    }

    public String getDsname() {
        return dsname;
    }

    public void setDsname(String dsname) {
        this.dsname = dsname == null ? null : dsname.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    @Override
    public String toString () {
        return "DepartmentsSmall{" +
                "dsid=" + dsid +
                ", dbid=" + dbid +
                ", dsname='" + dsname + '\'' +
                ", remarks='" + remarks + '\'' +
                ", illnessList=" + illnessList +
                '}';
    }
}