package com.qf.pojo;

import java.io.Serializable;
import java.util.List;

public class Doctor implements Serializable {
    private Integer did;

    private Integer drid;

    private DoctorRole doctorRole;

    private Integer dsid;

    private DepartmentsSmall departmentsSmall;

    private String dname;

    private String phone;

    private String password;

    private Integer praise;

    private String remarks;

    private List<DocRoleKey> docRoleKeyList;

    private List<DoctorIllness> doctorIllnessList;

    private static final long serialVersionUID = 1L;


    public List<DoctorIllness> getDoctorIllnessList() {
        return doctorIllnessList;
    }

    public void setDoctorIllnessList(List<DoctorIllness> doctorIllnessList) {
        this.doctorIllnessList = doctorIllnessList;
    }

    public DoctorRole getDoctorRole() {
        return doctorRole;
    }

    public void setDoctorRole(DoctorRole doctorRole) {
        this.doctorRole = doctorRole;
    }

    public DepartmentsSmall getDepartmentsSmall() {
        return departmentsSmall;
    }

    public void setDepartmentsSmall(DepartmentsSmall departmentsSmall) {
        this.departmentsSmall = departmentsSmall;
    }

    public List<DocRoleKey> getDocRoleKeyList() {
        return docRoleKeyList;
    }

    public void setDocRoleKeyList(List<DocRoleKey> docRoleKeyList) {
        this.docRoleKeyList = docRoleKeyList;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public Integer getDrid() {
        return drid;
    }

    public void setDrid(Integer drid) {
        this.drid = drid;
    }

    public Integer getDsid() {
        return dsid;
    }

    public void setDsid(Integer dsid) {
        this.dsid = dsid;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname == null ? null : dname.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getPraise() {
        return praise;
    }

    public void setPraise(Integer praise) {
        this.praise = praise;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}