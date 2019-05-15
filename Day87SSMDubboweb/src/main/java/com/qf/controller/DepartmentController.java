package com.qf.controller;

import com.qf.pojo.DepartmentsBig;
import com.qf.pojo.DepartmentsBigExample;
import com.qf.service.IDepartmentsBigService;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class DepartmentController {

    @Resource
    private IDepartmentsBigService departmentsBigService;

    @GetMapping("/getAllDepart")
    public String getAllDepartments(Model model){

        List<DepartmentsBig> allDepartments = departmentsBigService.getAllDepartmentsBigByExample(null);

        model.addAttribute("allDepartments",allDepartments);

        return "qt/keshi" ;
    }

    @PostMapping("/selectDepartments")
    public String selectDepartment(HttpServletRequest request,Model model){

        String dbname = request.getParameter("dbname");

        DepartmentsBigExample departmentsBigExample=new DepartmentsBigExample();

        DepartmentsBigExample.Criteria criteria = departmentsBigExample.createCriteria();

         criteria.andDbnameLike("%"+dbname+"%");

        List<DepartmentsBig> allDepartmentsBigByExample = departmentsBigService.getAllDepartmentsBigByExample(departmentsBigExample);

         model.addAttribute("allDepartments",allDepartmentsBigByExample);

        return "qt/keshi";
    }

}
