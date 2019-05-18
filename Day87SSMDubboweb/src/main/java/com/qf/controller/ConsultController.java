package com.qf.controller;

import com.qf.pojo.*;
import com.qf.service.IConsultAnswerService;
import com.qf.service.IConsultService;
import com.qf.service.IDoctorService;
import com.qf.service.IIllnessService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ConsultController {

    @Resource
    private IConsultService iConsultService;

    @Resource
    private IConsultAnswerService iConsultAnswerService;

    @RequestMapping("/getAllConsult")
    public String getAllConsult(Model model){

        List<ConsultAnswer> allConsultAnswerByExample = iConsultAnswerService.getAllConsultAnswerByExample(null);

        model.addAttribute("allConsultAnswer",allConsultAnswerByExample);

        List<Consult> allConsultByExample = iConsultService.getAllConsultByExample(null);

        model.addAttribute("allConsultByExample",allConsultByExample);

        return "qt/consult";
    }

    @RequestMapping("/selectDetails")
    public String selectDetails(HttpServletRequest request, Model model){

        String cid = request.getParameter("cid");

        int i = Integer.parseInt(cid);

        ConsultExample consultExample=new ConsultExample();

        ConsultExample.Criteria criteria = consultExample.createCriteria();

        criteria.andCidEqualTo(i);

        ConsultAnswerExample consultAnswerExample=new ConsultAnswerExample();

        ConsultAnswerExample.Criteria criteria1 = consultAnswerExample.createCriteria();

        criteria.andCidEqualTo(i);

        List<ConsultAnswer> allConsultAnswerByExample = iConsultAnswerService.getAllConsultAnswerByExample(consultAnswerExample);

        model.addAttribute("allConsultAnswer",allConsultAnswerByExample);

        List<Consult> allConsultByExample = iConsultService.getAllConsultByExample(consultExample);

        model.addAttribute("allConsultByExample",allConsultByExample);

        return "qt/dayi";
    }


}
