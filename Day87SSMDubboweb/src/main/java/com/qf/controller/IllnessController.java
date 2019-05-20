package com.qf.controller;

import com.qf.pojo.*;
import com.qf.service.IDepartmentsBigService;
import com.qf.service.IDoctorIllnessService;
import com.qf.service.IDoctorService;
import com.qf.service.IIllnessService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.annotation.Resources;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class IllnessController {
    @Resource
    private IIllnessService iIllnessService;

    @Resource
    private IDoctorIllnessService iDoctorIllnessService;

    @Resource
    private IDoctorService doctorService;

    @GetMapping("/getAllIllness")
    public String getAllIllness(Model model){

        List<Illness> allIllness = iIllnessService.getAllIllness(null);

        model.addAttribute("allIllness",allIllness);

        List<Doctor> allDoctor = doctorService.getAllDoctor(null);

        model.addAttribute("allDoctor",allDoctor);

        List<Doctor> allDoctors = doctorService.getAllDoctor(null);

        model.addAttribute("allDoctors",allDoctors);

        return "qt/jibing";
    }

    @PostMapping("selectIllness")
    public String selectIllnessByIlname(HttpServletRequest request,Model model){
        String ilname = request.getParameter("ilname");

        IllnessExample illnessExample=new IllnessExample();

        IllnessExample.Criteria criteria = illnessExample.createCriteria();

        criteria.andIlnameLike("%"+ilname+"%");

        List<Illness> allIllness = iIllnessService.getAllIllness(illnessExample);

        model.addAttribute("allIllness",allIllness);

        List<Doctor> allDoctor = doctorService.getAllDoctor(null);

        model.addAttribute("allDoctor",allDoctor);

        List<Doctor> allDoctors = doctorService.getAllDoctor(null);

        model.addAttribute("allDoctors",allDoctors);

        return "qt/jibing";
    }
    @GetMapping("/selectByDsname")
    public String selectIllnessByDsname(HttpServletRequest request,Model model){
        String dsid = request.getParameter("dsid");

        int i = Integer.parseInt(dsid);

        IllnessExample illnessExample=new IllnessExample();

        IllnessExample.Criteria criteria = illnessExample.createCriteria();

        criteria.andDsidEqualTo(i);

        List<Illness> allIllness = iIllnessService.getAllIllness(illnessExample);

        model.addAttribute("allIllness",allIllness);

        List<Doctor> allDoctor = doctorService.getAllDoctor(null);

        model.addAttribute("allDoctor",allDoctor);

        List<Doctor> allDoctors = doctorService.getAllDoctor(null);

        model.addAttribute("allDoctors",allDoctors);

        return "qt/jibing";
    }

    @GetMapping("/selectByDrname")
    public String selectByDrname(HttpServletRequest request,Model model){
        String drid = request.getParameter("drid");

        int i1 = Integer.parseInt(drid);

        String dsid = request.getParameter("dsid");

        int i = Integer.parseInt(dsid);

        DoctorExample doctorExample=new DoctorExample();

        DoctorExample.Criteria criteria = doctorExample.createCriteria();

        criteria.andDridEqualTo(i1);

        List<Doctor> allDoctors = doctorService.getAllDoctor(doctorExample);

        model.addAttribute("allDoctors",allDoctors);



        IllnessExample illnessExample=new IllnessExample();

        IllnessExample.Criteria criteria1 = illnessExample.createCriteria();

        criteria.andDsidEqualTo(i);

        List<Illness> allIllness = iIllnessService.getAllIllness(illnessExample);

        model.addAttribute("allIllness",allIllness);

        List<Doctor> allDoctor = doctorService.getAllDoctor(null);

        model.addAttribute("allDoctor",allDoctor);

        return "qt/jibing";
    }





}
