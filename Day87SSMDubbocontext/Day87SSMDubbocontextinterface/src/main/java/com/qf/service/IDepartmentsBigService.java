package com.qf.service;

import com.qf.pojo.DepartmentsBig;
import com.qf.pojo.DepartmentsBigExample;

import java.util.List;

public interface IDepartmentsBigService {

    List<DepartmentsBig> getAllDepartmentsBigByExample(DepartmentsBigExample example);


}
