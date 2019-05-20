package com.qf.controller;

import com.qf.pojo.DepartmentsBig;
import com.qf.pojo.DepartmentsBigExample;
import com.qf.pojo.DepartmentsSmall;
import com.qf.pojo.DepartmentsSmallExample;
import com.qf.service.*;
import com.qf.util.LayuiUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
    public LayuiUtil<DepartmentsBig> htAllDepartmentsBigList(HttpServletRequest request){

        String dbid = request.getParameter("dbid");
        String dsid = request.getParameter("dsid");

        DepartmentsBigExample departmentsBigExample = new DepartmentsBigExample();

        if (dsid != null && !"".equals(dsid)){
            int dsidi = Integer.parseInt(dsid);

            DepartmentsSmallExample departmentsSmallExample = new DepartmentsSmallExample();
            DepartmentsSmallExample.Criteria criteria = departmentsSmallExample.createCriteria();
            criteria.andDsidEqualTo(dsidi);

            List<DepartmentsSmall> allDepartmentsSmallByExample = departmentsSmallService.getAllDepartmentsSmallByExample(departmentsSmallExample);

            for (DepartmentsSmall s:allDepartmentsSmallByExample) {
                DepartmentsBigExample.Criteria criteria1 = departmentsBigExample.createCriteria();
                criteria1.andDbidEqualTo(s.getDbid());

                departmentsBigExample.or(criteria1);

            }

        }

        if (dbid != null && !"".equals(dbid)){
            DepartmentsBigExample.Criteria criteria = departmentsBigExample.createCriteria();
            criteria.andDbidEqualTo(Integer.parseInt(dbid));

            departmentsBigExample.or(criteria);
        }

        LayuiUtil<DepartmentsBig> layuiUtil = new LayuiUtil<>();

        LayuiUtil<DepartmentsBig> departmentsBigLayuiUtil = layuiUtil.toLayuiList(departmentsBigService.getAllDepartmentsBigByExample(departmentsBigExample));

        return departmentsBigLayuiUtil;
    }

    @GetMapping("/departmentsBigListAddTakeUp/{dbid}")
    public String departmentsBigListAddTakeUp(Model model, @PathVariable int dbid){

        DepartmentsBigExample departmentsBigExample = new DepartmentsBigExample();
        DepartmentsBigExample.Criteria criteria = departmentsBigExample.createCriteria();
        criteria.andDbidEqualTo(dbid);

        model.addAttribute("departmentsBig",departmentsBigService.getAllDepartmentsBigByExample(departmentsBigExample).get(0));

        return "ht/departmentsBigListAddTakeUp";
    }

    @PostMapping("/departmentsBigListAddTakeUpSubmit")
    @ResponseBody
    public boolean departmentsBigListAddTakeUpSubmit(HttpServletRequest request){
        String dbigks = request.getParameter("dbigks");
        String dsmall = request.getParameter("dsmall");
        String remarkes = request.getParameter("remarkes");

        DepartmentsBigExample departmentsBigExample = new DepartmentsBigExample();
        DepartmentsBigExample.Criteria criteria = departmentsBigExample.createCriteria();
        criteria.andDbnameEqualTo(dbigks);
        DepartmentsBig departmentsBig = departmentsBigService.getAllDepartmentsBigByExample(departmentsBigExample).get(0);

        DepartmentsSmall departmentsSmall = new DepartmentsSmall();
        departmentsSmall.setDbid(departmentsBig.getDbid());
        departmentsSmall.setDsname(dsmall);
        departmentsSmall.setRemarks(remarkes);

        return departmentsSmallService.addDepartmentsSmall(departmentsSmall);
    }

    @PostMapping("/departmentsBigListAdd")
    @ResponseBody
    public boolean departmentsBigListAdd(HttpServletRequest request){
        String dbigks = request.getParameter("dbigks");
        String remarkes = request.getParameter("remarkes");

        DepartmentsBig departmentsBig = new DepartmentsBig();
        departmentsBig.setDbname(dbigks);
        departmentsBig.setRemarks(remarkes);

        return departmentsBigService.addDepartmentsBig(departmentsBig);
    }

    @GetMapping("/departmentsSmallDescr/{dsid}")
    public String departmentsSmallDescr(Model model,@PathVariable int dsid){
        DepartmentsSmallExample departmentsSmallExample = new DepartmentsSmallExample();
        DepartmentsSmallExample.Criteria criteria = departmentsSmallExample.createCriteria();
        criteria.andDsidEqualTo(dsid);
        DepartmentsSmall departmentsSmall = departmentsSmallService.getAllDepartmentsSmallByExample(departmentsSmallExample).get(0);

        DepartmentsBigExample departmentsBigExample = new DepartmentsBigExample();
        DepartmentsBigExample.Criteria criteria1 = departmentsBigExample.createCriteria();
        criteria1.andDbidEqualTo(departmentsSmall.getDbid());

        model.addAttribute("departmentsSmall",departmentsSmall);

        model.addAttribute("departmentsBig",departmentsBigService.getAllDepartmentsBigByExample(departmentsBigExample).get(0));
        return "ht/departmentsSmallDescr";
    }

}
