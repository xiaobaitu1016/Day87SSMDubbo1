package com.qf.service;

import com.qf.pojo.ConsultAnswer;
import com.qf.pojo.ConsultAnswerExample;

import java.util.List;

public interface IConsultAnswerService {

    List<ConsultAnswer> getAllConsultAnswerByExample(ConsultAnswerExample example);
}
