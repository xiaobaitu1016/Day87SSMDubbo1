package com.qf.controller;

import com.qf.pojo.*;
import com.qf.service.*;
import com.qf.util.LayuiUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class HchDoctorController {

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

    @GetMapping("/toHtDoctorList")
    public String toHtDoctorList(Model model){

        model.addAttribute("allDepartmentsBig",departmentsBigService.getAllDepartmentsBigByExample(null));

        model.addAttribute("allDoctor",doctorService.getAllDoctor(null));

        return "ht/doctorList";
    }

    @PostMapping("/htGetDsmallByDbid")
    @ResponseBody
    public List<DepartmentsSmall> htGetDsmallByDbid(HttpServletRequest request){
        String str = request.getParameter("dbid");

        if (str != null && !"".equals(str)){
            int dbid = Integer.parseInt(str);
            DepartmentsBigExample departmentsBigExample = new DepartmentsBigExample();
            DepartmentsBigExample.Criteria criteria = departmentsBigExample.createCriteria();

            criteria.andDbidEqualTo(dbid);

            List<DepartmentsBig> allDepartmentsBigByExample = departmentsBigService.getAllDepartmentsBigByExample(departmentsBigExample);

            return allDepartmentsBigByExample.get(0).getDepartmentsSmallList();
        }else {
            return departmentsSmallService.getAllDepartmentsSmallByExample(null);
        }
    }

    @PostMapping("/htGetDoctorByDbid")
    @ResponseBody
    public List<Doctor> htGetDoctorByDbid(HttpServletRequest request){
        String str = request.getParameter("dbid");

        if (str != null && !"".equals(str)){
            int dbid = Integer.parseInt(str);
            DepartmentsBigExample departmentsBigExample = new DepartmentsBigExample();
            DepartmentsBigExample.Criteria criteria = departmentsBigExample.createCriteria();

            criteria.andDbidEqualTo(dbid);

            List<DepartmentsBig> allDepartmentsBigByExample = departmentsBigService.getAllDepartmentsBigByExample(departmentsBigExample);

            List<DepartmentsSmall> departmentsSmallList = allDepartmentsBigByExample.get(0).getDepartmentsSmallList();

            DoctorExample doctorExample = new DoctorExample();

            for (DepartmentsSmall s:departmentsSmallList) {
                DoctorExample.Criteria criteria1 = doctorExample.createCriteria();
                criteria1.andDsidEqualTo(s.getDsid());

                doctorExample.or(criteria1);
            }

            return doctorService.getAllDoctor(doctorExample);
        }else {
            return doctorService.getAllDoctor(null);
        }
    }

    @PostMapping("/htGetDbigByDsid")
    @ResponseBody
    public List<DepartmentsBig> htGetDbigByDsid(HttpServletRequest request){
        String str = request.getParameter("dsid");

        if (str != null && !"".equals(str)){
            int dsid = Integer.parseInt(str);

            DepartmentsSmall departmentsSmallByDsid = departmentsSmallService.getDepartmentsSmallByDsid(dsid);

            DepartmentsBigExample departmentsBigExample = new DepartmentsBigExample();
            DepartmentsBigExample.Criteria criteria = departmentsBigExample.createCriteria();

            criteria.andDbidEqualTo(departmentsSmallByDsid.getDbid());

            return departmentsBigService.getAllDepartmentsBigByExample(departmentsBigExample);


        }else {
            return departmentsBigService.getAllDepartmentsBigByExample(null);
        }
    }

    @PostMapping("/htGetDoctorByDsid")
    @ResponseBody
    public List<Doctor> htGetDoctorByDsid(HttpServletRequest request){
        String str = request.getParameter("dsid");

        if (str != null && !"".equals(str)){
            DoctorExample doctorExample = new DoctorExample();

            DoctorExample.Criteria criteria = doctorExample.createCriteria();

            criteria.andDsidEqualTo(Integer.parseInt(str));

            return doctorService.getAllDoctor(doctorExample);
        }else {
            return doctorService.getAllDoctor(null);
        }
    }

    @PostMapping("/htGetDbigByDid")
    @ResponseBody
    public List<DepartmentsBig> htGetDbigByDid(HttpServletRequest request){
        String str = request.getParameter("did");

        if (str != null && !"".equals(str)){
            int did = Integer.parseInt(str);

            DoctorExample doctorExample = new DoctorExample();
            DoctorExample.Criteria criteria1 = doctorExample.createCriteria();
            criteria1.andDidEqualTo(did);

            Doctor doctor = doctorService.getAllDoctor(doctorExample).get(0);

            DepartmentsSmall departmentsSmallByDsid = departmentsSmallService.getDepartmentsSmallByDsid(doctor.getDsid());

            DepartmentsBigExample departmentsBigExample = new DepartmentsBigExample();
            DepartmentsBigExample.Criteria criteria = departmentsBigExample.createCriteria();

            criteria.andDbidEqualTo(departmentsSmallByDsid.getDbid());

            return departmentsBigService.getAllDepartmentsBigByExample(departmentsBigExample);


        }else {
            return departmentsBigService.getAllDepartmentsBigByExample(null);
        }
    }

    @PostMapping("/htGetDsmallByDid")
    @ResponseBody
    public List<DepartmentsSmall> htGetDsmallByDid(HttpServletRequest request){
        String str = request.getParameter("did");

        if (str != null && !"".equals(str)){
            int did = Integer.parseInt(str);

            DoctorExample doctorExample = new DoctorExample();
            DoctorExample.Criteria criteria1 = doctorExample.createCriteria();
            criteria1.andDidEqualTo(did);

            Doctor doctor = doctorService.getAllDoctor(doctorExample).get(0);

            DepartmentsSmall departmentsSmall = doctor.getDepartmentsSmall();

            List<DepartmentsSmall> departmentsSmallList = new ArrayList<>();
            departmentsSmallList.add(departmentsSmall);

            return departmentsSmallList;


        }else {
            return departmentsSmallService.getAllDepartmentsSmallByExample(null);
        }
    }

    @PostMapping("/htAllDoctorList")
    @ResponseBody
    public LayuiUtil<Doctor> htAllDoctorList(HttpServletRequest request) {
        int page = Integer.parseInt(request.getParameter("page"));
        int limit = Integer.parseInt(request.getParameter("limit"));

        String dbids = request.getParameter("dbid");
        String dsids = request.getParameter("dsid");
        String dids = request.getParameter("did");

        DoctorExample doctorExample = new DoctorExample();

        if (dbids != null && !"".equals(dbids) && (dsids == null || "".equals(dsids))){
            System.out.println("大课室");

            int dbid = Integer.parseInt(dbids);

            DepartmentsSmallExample departmentsSmallExample = new DepartmentsSmallExample();
            DepartmentsSmallExample.Criteria criteria = departmentsSmallExample.createCriteria();

            criteria.andDbidEqualTo(dbid);

            List<DepartmentsSmall> allDepartmentsSmallByExample = departmentsSmallService.getAllDepartmentsSmallByExample(departmentsSmallExample);

            for (DepartmentsSmall s:allDepartmentsSmallByExample) {
                DoctorExample.Criteria criteria1 = doctorExample.createCriteria();
                criteria1.andDsidEqualTo(s.getDsid());

                doctorExample.or(criteria1);
            }
        }else {

            System.out.println("dbids===="+dbids+"dsids===="+dsids+"dids===="+dids+"======");

            DoctorExample.Criteria criteria = doctorExample.createCriteria();
            if (dsids != null && !"".equals(dsids)){
                criteria.andDsidEqualTo(Integer.parseInt(dbids));
            }
            if (dids != null && !"".equals(dids)){
                criteria.andDidEqualTo(Integer.parseInt(dids));
            }
        }

        LayuiUtil<Doctor> layuiUtil = new LayuiUtil<>();

        LayuiUtil<Doctor> doctorLayuiUtil = layuiUtil.toLayuiList(doctorService.getAllDoctor(doctorExample));

        return doctorLayuiUtil;
    }

}
