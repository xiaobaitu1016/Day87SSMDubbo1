package com.qf.controller;

import com.qf.pojo.*;
import com.qf.pojo.Number;
import com.qf.service.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class TestController {

    @Resource
    private IDepartmentsBigService departmentsBigService;

    @Resource
    private IDepartmentsSmallService departmentsSmallService;

    @GetMapping("/test1")
    public List<DepartmentsBig> getAllDepartmentsBig(){
        return departmentsBigService.getAllDepartmentsBigByExample(null);
    }

    @GetMapping("/test2")
    public List<DepartmentsSmall> getAllDepartmentsSmall(){
        return departmentsSmallService.getAllDepartmentsSmallByExample(null);
    }

    @Resource
    private IDoctorService doctorService;

    @GetMapping("/test3")
    public List<Doctor> test3(){
        return doctorService.getAllDoctor(null);
    }

    @Resource
    private IConsultService consultService;

    @GetMapping("/test4")
    public List<Consult> test4(){
        return consultService.getAllConsultByExample(null);
    }

    @Resource
    private IDoctorScheduleService doctorScheduleService;

    @GetMapping("/test5")
    public List<DoctorSchedule> test5(){
        return doctorScheduleService.getAllDoctorScheduleByExample(null);
    }

    @Resource
    private IDoctorCommentService doctorCommentService;

    @GetMapping("/test6")
    public List<DoctorComment> test6(){
        return doctorCommentService.getAllDoctorCommentByExample(null);
    }

    @Resource
    private INumberService numberService;

    @GetMapping("/test7")
    public List<Number> test7(){
        return numberService.getAllNumberByExample(null);
    }


}
