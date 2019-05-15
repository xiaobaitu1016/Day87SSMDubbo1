package com.qf.controller;

import com.qf.pojo.*;
import com.qf.pojo.Number;
import com.qf.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class HchMainController {

    @Resource
    private IDoctorService doctorService;
    @Resource
    private IIllnessService iIllnessService;
    @Resource
    IDoctorScheduleService doctorScheduleService;
    @Resource
    IDoctorCommentService doctorCommentService;
    @Resource
    IConsultService consultService;
    @Resource
    INumberService numberService;

    @GetMapping("/toMain")
    public String toMain(Model model,HttpServletRequest request) throws ParseException {
        model.addAttribute("allDoctorSchedule",doctorScheduleService.getAllDoctorScheduleByExample(null));

        Doctor curDoctor = (Doctor) request.getSession().getAttribute("curDoctor");

        DoctorCommentExample doctorCommentExample = new DoctorCommentExample();
        DoctorCommentExample.Criteria criteria = doctorCommentExample.createCriteria();
        criteria.andDidEqualTo(curDoctor.getDid());

        List<DoctorComment> allDoctorCommentByExample = doctorCommentService.getAllDoctorCommentByExample(doctorCommentExample);

        model.addAttribute("commentCount",allDoctorCommentByExample.size());
//
        ConsultExample consultExample = new ConsultExample();
        ConsultExample.Criteria criteria1 = consultExample.createCriteria();
        criteria1.andDidEqualTo(curDoctor.getDid());

        List<Consult> allConsultByExample = consultService.getAllConsultByExample(consultExample);

        model.addAttribute("consultCount",allConsultByExample.size());

        NumberExample numberExample = new NumberExample();
        NumberExample.Criteria criteria2 = numberExample.createCriteria();
        criteria2.andDidEqualTo(curDoctor.getDid());

        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();

        String format1 = format.format(date);

        criteria2.andDataEqualTo(format1);
        criteria2.andStateEqualTo("待诊");

        List<Number> allNumberByExample = numberService.getAllNumberByExample(numberExample);

        model.addAttribute("numberCount",allNumberByExample.size());

        return "ht/main";
    }

    @PostMapping("/loginHtIndex")
    @ResponseBody
    public boolean loginHtIndex(HttpServletRequest request){

        String did = request.getParameter("did");
        String pass = request.getParameter("pass");

        if (did.length()<3){
            return false;
        }else {
            String substring = did.substring(2);
            int idid = Integer.parseInt(substring)-10000;

            Doctor doctor = new Doctor();
            doctor.setDid(idid);
            doctor.setPassword(pass);

            Doctor login = doctorService.login(doctor);

            if (login == null){
                return false;
            }else{
                request.getSession().setAttribute("curDoctor",login);
                return true;
            }
        }
    }

    @GetMapping("/loginHtIndexTj")
    public String loginHtIndexTj(Model model){

        return "ht/index";
    }

}
