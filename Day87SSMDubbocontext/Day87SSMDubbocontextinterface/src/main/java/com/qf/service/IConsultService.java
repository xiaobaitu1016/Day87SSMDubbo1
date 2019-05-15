package com.qf.service;

import com.qf.pojo.Consult;
import com.qf.pojo.ConsultExample;

import java.util.List;

public interface IConsultService {

    List<Consult> getAllConsultByExample(ConsultExample example);
}
