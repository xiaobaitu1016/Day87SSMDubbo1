package com.qf.controller;

import com.qf.pojo.DepartmentsSmall;
import com.qf.pojo.DoctorSchedule;
import com.qf.pojo.Illness;
import com.qf.service.IDepartmentsSmallService;
import com.qf.service.IDoctorScheduleService;
import com.qf.service.IDoctorService;
import com.qf.service.IIllnessService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class GuahaoController {
    @Resource
    private IDepartmentsSmallService departmentsSmallService;

    @Resource
    private IIllnessService iIllnessService;
    @Resource
    private IDoctorScheduleService doctorScheduleService;
    @Resource
    private IDoctorService doctorService;

    @GetMapping("/guahao")
    public String guahao(Model model){
        List<DepartmentsSmall> alldepartmentsSmall =departmentsSmallService.getAllDepartmentsSmallByExample(null);
        List<Illness> allIllness = iIllnessService.getAllIllnessByExample(null);
        List<DoctorSchedule> allDoctorSchedule = doctorScheduleService.getAllDoctorScheduleByExample(null);
        model.addAttribute("small",alldepartmentsSmall);
        model.addAttribute("allIllness",allIllness);
        model.addAttribute("allDoctorSchedule",allDoctorSchedule);
        model.addAttribute("allDoctor",doctorService.getAllDoctor(null));
        return "qt/guahao";
    }

}
