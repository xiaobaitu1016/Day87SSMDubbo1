package com.qf.controller;

import com.qf.pojo.DepartmentsBig;
import com.qf.pojo.DepartmentsSmall;
import com.qf.pojo.DepartmentsSmallExample;
import com.qf.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class HchDepartmentsController {

    @Resource
    private ISufferService sufferService;
    @Resource
    private INumberService numberService;
    @Resource
    private IDepartmentsBigService departmentsBigService;
    @Resource
    private IDoctorService doctorService;
    @Resource
    private IDepartmentsSmallService departmentsSmallService;
    @Resource
    private IIllnessService iIllnessService;
    @Resource
    private IDoctorCommentService doctorCommentService;
    @Resource
    private IConsultService consultService;
    @Resource
    private IDoctorScheduleService doctorScheduleService;
    @Resource
    private IDoctorRoleService doctorRoleService;
    @Resource
    private IDocRoleService docRoleService;
    @Resource
    private IRolesService rolesService;
    @Resource
    private IDoctorIllnessService doctorIllnessService;

    @GetMapping("/toHtDepartmentsBigList")
    public String toHtDepartmentsBigList(Model model){
        model.addAttribute("allDig",departmentsBigService.getAllDepartmentsBigByExample(null));

        model.addAttribute("allDepartmentsBig",departmentsBigService.getAllDepartmentsBigByExample(null));

        model.addAttribute("allDoctor",doctorService.getAllDoctor(null));

        return "ht/departmentsBigList";
    }

    @PostMapping("/htAllDepartmentsBigList")
    @ResponseBody
    public List<DepartmentsBig> htAllDepartmentsBigList(HttpServletRequest request){

        String dbid = request.getParameter("dbid");
        String dsid = request.getParameter("dsid");


        if (dsid != null && !"".equals(dsid)){
            int dsidi = Integer.parseInt(dsid);

            DepartmentsSmallExample departmentsSmallExample = new DepartmentsSmallExample();
            DepartmentsSmallExample.Criteria criteria = departmentsSmallExample.createCriteria();
            criteria.andDsidEqualTo(dsidi);

            List<DepartmentsSmall> allDepartmentsSmallByExample = departmentsSmallService.getAllDepartmentsSmallByExample(departmentsSmallExample);



        }

        return null;
    }

}
