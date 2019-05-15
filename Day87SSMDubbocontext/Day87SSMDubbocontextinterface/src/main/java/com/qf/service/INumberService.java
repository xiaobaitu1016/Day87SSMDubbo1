package com.qf.service;

import com.qf.pojo.Number;
import com.qf.pojo.NumberExample;

import java.util.List;

public interface INumberService {

    List<Number> getAllNumberByExample(NumberExample example);
}
