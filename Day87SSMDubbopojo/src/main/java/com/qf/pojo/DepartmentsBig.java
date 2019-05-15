package com.qf.pojo;

import java.io.Serializable;
import java.util.List;

public class DepartmentsBig implements Serializable {
    private Integer dbid;

    private String dbname;

    private String remarks;

    private List<DepartmentsSmall> departmentsSmallList;

    private static final long serialVersionUID = 1L;

    public List<DepartmentsSmall> getDepartmentsSmallList() {
        return departmentsSmallList;
    }

    public void setDepartmentsSmallList(List<DepartmentsSmall> departmentsSmallList) {
        this.departmentsSmallList = departmentsSmallList;
    }

    public Integer getDbid() {
        return dbid;
    }

    public void setDbid(Integer dbid) {
        this.dbid = dbid;
    }

    public String getDbname() {
        return dbname;
    }

    public void setDbname(String dbname) {
        this.dbname = dbname == null ? null : dbname.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    @Override
    public String toString () {
        return "DepartmentsBig{" +
                "dbid=" + dbid +
                ", dbname='" + dbname + '\'' +
                ", remarks='" + remarks + '\'' +
                ", departmentsSmallList=" + departmentsSmallList +
                '}';
    }
}