package com.qf.controller;

import com.qf.pojo.*;
import com.qf.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
    @Resource
    private IDepartmentsBigService departmentsBigService;
    @Resource
    private ISufferService sufferService;

    @GetMapping("/guahao")
    public String guahao(Model model){
        List<DepartmentsSmall> alldepartmentsSmall =departmentsSmallService.getAllDepartmentsSmallByExample(null);
        List<Illness> allIllness = iIllnessService.getAllIllnessByExample(null);
        List<DoctorSchedule> allDoctorSchedule = doctorScheduleService.getAllDoctorScheduleByExample(null);
        List<Doctor> allDoctor = doctorService.getAllDoctor(null);

        model.addAttribute("big",departmentsBigService.getAllDepartmentsBigByExample(null));
        model.addAttribute("small",alldepartmentsSmall);
        model.addAttribute("allIllness",allIllness);
        model.addAttribute("allDoctorSchedule",allDoctorSchedule);
        model.addAttribute("allDoctor",allDoctor);
        return "qt/guahao";
    }
    @GetMapping("/getOneSmallId")

    public Object getOneSmallId(int dbid,Model model){


        DepartmentsSmallExample departmentsSmallExample = new DepartmentsSmallExample();
        DepartmentsSmallExample.Criteria criteria = departmentsSmallExample.createCriteria();
        criteria.andDbidEqualTo(dbid);

        List<DepartmentsSmall> allDepartmentsSmallByExample = departmentsSmallService.getAllDepartmentsSmallByExample(departmentsSmallExample);

        DepartmentsBigExample departmentsBigExample = new DepartmentsBigExample();
        DepartmentsBigExample.Criteria criteria4 = departmentsBigExample.createCriteria();

        criteria4.andDbidEqualTo(dbid);
        List<DepartmentsBig> allDepartmentsBigByExample = departmentsBigService.getAllDepartmentsBigByExample(departmentsBigExample);
        model.addAttribute("big",allDepartmentsBigByExample);
        model.addAttribute("small",allDepartmentsSmallByExample);
        for (DepartmentsSmall i: allDepartmentsSmallByExample) {
            Integer dsid = i.getDsid();

            DoctorExample doctorExample = new DoctorExample();
            DoctorExample.Criteria criteria1 = doctorExample.createCriteria();
            criteria1.andDsidEqualTo(dsid);
            List<Doctor> allDoctor = doctorService.getAllDoctor(doctorExample);

            DoctorScheduleExample doctorScheduleExample = new DoctorScheduleExample();
            DoctorScheduleExample.Criteria criteria3 = doctorScheduleExample.createCriteria();
            criteria3.andDsidEqualTo(dsid);
            List<DoctorSchedule> allDoctorScheduleByExample = doctorScheduleService.getAllDoctorScheduleByExample(doctorScheduleExample);

            model.addAttribute("allDoctorSchedule",allDoctorScheduleByExample);
            model.addAttribute("allDoctor",allDoctor);
        }


        return "qt/guahao";
    }
    @GetMapping("/Doctorxiangqing")
    public String Doctorxiangqing(int did,Model model){
        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria1 = doctorExample.createCriteria();
        criteria1.andDidEqualTo(did);
        List<Doctor> allDoctor = doctorService.getAllDoctor(doctorExample);

        model.addAttribute("Doctor",allDoctor);


        DoctorScheduleExample doctorScheduleExample = new DoctorScheduleExample();
        DoctorScheduleExample.Criteria criteria3 = doctorScheduleExample.createCriteria();
        criteria3.andDidEqualTo(did);
        List<DoctorSchedule> allDoctorScheduleByExample = doctorScheduleService.getAllDoctorScheduleByExample(doctorScheduleExample);

        model.addAttribute("allDoctorSchedule",allDoctorScheduleByExample);
        return "qt/Doctorxiangqing";

    }
    @PostMapping("/suffer")
    public String login(HttpServletRequest request){
        String suname = request.getParameter("suname");
        String password = request.getParameter("password");

        System.out.println("suname"+suname+"pass"+password);

        Suffer suffer1 = new Suffer();
        suffer1.setSuname(suname);
        suffer1.setPassword(password);

        boolean b = sufferService.login(suffer1);

        System.out.println(b);

        if (b){
            SufferExample sufferExample = new SufferExample();
            SufferExample.Criteria criteria = sufferExample.createCriteria();
            criteria.andSunameEqualTo(suname);
            criteria.andPasswordEqualTo(password);
            Suffer suffer = sufferService.getAllSufferByExample(sufferExample).get(0);
            request.getSession().setAttribute("curSuffer",suffer);

            return "qt/index" ;
        }else {

            return "qt/denglu";
        }



    }
    @GetMapping("/loginOut")
    public String loginOut(HttpServletRequest request){

        request.getSession().removeAttribute("curSuffer");
        return "qt/index";
    }
    @GetMapping("/yuyue")
    public String yuyue (int did,HttpServletRequest request){
        if (request.getSession().getAttribute("curSuffer") == null){
            return "qt/denglu";
        }else {
            return "redirect:/Doctorxiangqing?did="+did;
        }
    }
   @PostMapping("/addsuffer")
    public String addsuffer(HttpServletRequest request){
       String suname = request.getParameter("suname");
       String password = request.getParameter("password");
       String phone = request.getParameter("phone");

       Suffer suffer = new Suffer();
       suffer.setSuname(suname);
       suffer.setPassword(password);
       suffer.setPhone(phone);

       boolean b = sufferService.addSuffer(suffer);

       if (b){
           SufferExample sufferExample = new SufferExample();
           SufferExample.Criteria criteria = sufferExample.createCriteria();
           criteria.andSunameEqualTo(suname);
           criteria.andPasswordEqualTo(password);
           Suffer suffer1 = sufferService.getAllSufferByExample(sufferExample).get(0);
           request.getSession().setAttribute("curSuffer",suffer1);

           return "qt/index" ;
       }else {
           return "qt/zhece";
       }
    }
}