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

        return "qt/jibing";
    }


}
