package com.qf.service;

import com.qf.pojo.Number;
import com.qf.pojo.NumberExample;

import java.util.List;

public interface INumberService {

    List<Number> getAllNumberByExample(NumberExample example);

    List<Number> getAllNumberByExamplePage(NumberExample example,int page,int limt);

    boolean addNumber(Number number);

    Number getNumberByNuid(int nuid);

    boolean updateNumberByNuid(Number number);
}
