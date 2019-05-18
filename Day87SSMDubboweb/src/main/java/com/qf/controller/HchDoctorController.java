package com.qf.controller;

import com.qf.pojo.*;
import com.qf.pojo.Number;
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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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

            DoctorExample.Criteria criteria = doctorExample.createCriteria();
            if (dsids != null && !"".equals(dsids)){

                criteria.andDsidEqualTo(Integer.parseInt(dsids));

            }
            if (dids != null && !"".equals(dids)){
                criteria.andDidEqualTo(Integer.parseInt(dids));
            }
        }

        LayuiUtil<Doctor> layuiUtil = new LayuiUtil<>();

        LayuiUtil<Doctor> doctorLayuiUtil = layuiUtil.toLayuiList(doctorService.getAllDoctor(doctorExample));

        return doctorLayuiUtil;
    }

    @GetMapping("/toHtDoctorListUpdate/{did}")
    public String toHtDoctorListUpdate(Model model, @PathVariable int did){
        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria = doctorExample.createCriteria();

        criteria.andDidEqualTo(did);

        Doctor doctor = doctorService.getAllDoctor(doctorExample).get(0);

        model.addAttribute("doctor",doctor);

        DoctorCommentExample doctorCommentExample = new DoctorCommentExample();
        DoctorCommentExample.Criteria doctorCommentcriteria = doctorCommentExample.createCriteria();
        doctorCommentcriteria.andDidEqualTo(doctor.getDid());

        List<DoctorComment> allDoctorCommentByExample = doctorCommentService.getAllDoctorCommentByExample(doctorCommentExample);

        model.addAttribute("commentCount",allDoctorCommentByExample.size());

        ConsultExample consultExample = new ConsultExample();
        ConsultExample.Criteria criteria1 = consultExample.createCriteria();
        criteria1.andDidEqualTo(doctor.getDid());

        List<Consult> allConsultByExample = consultService.getAllConsultByExample(consultExample);

        model.addAttribute("consultCount",allConsultByExample.size());

        NumberExample numberExample = new NumberExample();
        NumberExample.Criteria criteria2 = numberExample.createCriteria();
        criteria2.andDidEqualTo(doctor.getDid());

        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();

        String format1 = format.format(date);

        criteria2.andDataEqualTo(format1);
        criteria2.andStateEqualTo("待诊");

        List<Number> allNumberByExample = numberService.getAllNumberByExample(numberExample);

        model.addAttribute("numberCount",allNumberByExample.size());

        model.addAttribute("allDoctorSchedule",doctorScheduleService.getAllDoctorScheduleByExample(null));

        IllnessExample illnessExample = new IllnessExample();
        IllnessExample.Criteria criteria3 = illnessExample.createCriteria();
        criteria3.andDsidEqualTo(doctor.getDsid());

        model.addAttribute("allIllness",iIllnessService.getAllIllnessByExample(illnessExample));

        List<String> illnessList = new ArrayList<>();

        for (DoctorIllness i:doctor.getDoctorIllnessList()) {
            illnessList.add(i.getIllness().getIlname());
        }

        model.addAttribute("illnessList",illnessList);

        model.addAttribute("allDoctorRole",doctorRoleService.getAllDoctorRoleByExample(null));

        model.addAttribute("allRole",rolesService.getAllRolesByExample(null));

        List<String> rnameList = new ArrayList<>();

        for (DocRoleKey d:doctor.getDocRoleKeyList()) {
            rnameList.add(d.getRoles().getRname());
        }

        model.addAttribute("rnameList",rnameList);

        model.addAttribute("allDbig",departmentsBigService.getAllDepartmentsBigByExample(null));

        return "ht/doctorListUpdate";
    }

    @PostMapping("/htUpdateDoctorByDoctor")
    @ResponseBody
    public boolean htUpdateDoctorByDoctor(HttpServletRequest request){
        String did = request.getParameter("did");
        String dname = request.getParameter("dname");
        String dsid = request.getParameter("dsid");
        String drid = request.getParameter("drid");
        String ridString = request.getParameter("ridString");
        String phone = request.getParameter("phone");
        String ilidString = request.getParameter("ilidString");
        String remarks = request.getParameter("remarks");
        String pass = request.getParameter("pass");
        String praise = request.getParameter("praise");

        String substring = did.substring(2);
        int did1 = Integer.parseInt(substring) - 10000;

        Doctor doctor = new Doctor();
        doctor.setDid(did1);
        doctor.setDname(dname);
        doctor.setDsid(Integer.parseInt(dsid));
        doctor.setDrid(Integer.parseInt(drid));
        doctor.setPhone(phone);
        doctor.setRemarks(remarks);
        doctor.setPassword(pass);
        doctor.setPraise(Integer.parseInt(praise));

        doctorService.updateDoctorByDid(doctor);

        String substring1 = ridString.substring(1);
        String[] rids = substring1.split("-");

        DocRoleExample docRoleExample = new DocRoleExample();
        DocRoleExample.Criteria criteria = docRoleExample.createCriteria();
        criteria.andDidEqualTo(did1);

        docRoleService.deleteDocRoleByExample(docRoleExample);

        for (int i = 0; i < rids.length; i++){
            int rid = Integer.parseInt(rids[i]);
            DocRole docRole = new DocRole();
            docRole.setDid(did1);
            docRole.setRid(rid);

            docRoleService.addDocRole(docRole);
        }


        String substring2 = ilidString.substring(1);
        String[] ilids = substring2.split("-");

        DoctorIllnessExample doctorIllnessExample = new DoctorIllnessExample();
        DoctorIllnessExample.Criteria criteria1 = doctorIllnessExample.createCriteria();
        criteria1.andDidEqualTo(did1);
        doctorIllnessService.deleteDoctorIllnessByExample(doctorIllnessExample);

        for (int i = 0; i < ilids.length; i++){
            int ilid = Integer.parseInt(ilids[i]);
            DoctorIllness doctorIllness = new DoctorIllness();
            doctorIllness.setDid(did1);
            doctorIllness.setIlid(ilid);
            doctorIllnessService.addDoctorIllness(doctorIllness);
        }

        return true;
    }

    @GetMapping("/toDoctorListAdd")
    public String toDoctorListAdd(Model model){

        model.addAttribute("allDbig",departmentsBigService.getAllDepartmentsBigByExample(null));

        model.addAttribute("allDoctorRole",doctorRoleService.getAllDoctorRoleByExample(null));

        model.addAttribute("allRole",rolesService.getAllRolesByExample(null));

        model.addAttribute("allIllness",iIllnessService.getAllIllnessByExample(null));

        return "ht/doctorListAdd";
    }

    @PostMapping("/htAddDoctorByDoctor")
    @ResponseBody
    public boolean htAddDoctorByDoctor(HttpServletRequest request){
        String dname = request.getParameter("dname");
        String dsid = request.getParameter("dsid");
        String drid = request.getParameter("drid");
        String ridString = request.getParameter("ridString");
        String phone = request.getParameter("phone");
        String ilidString = request.getParameter("ilidString");
        String remarks = request.getParameter("remarks");
        String pass = request.getParameter("pass");
        String praise = request.getParameter("praise");

        Doctor doctor = new Doctor();
        doctor.setDname(dname);
        doctor.setDsid(Integer.parseInt(dsid));
        doctor.setDrid(Integer.parseInt(drid));
        doctor.setPhone(phone);
        doctor.setRemarks(remarks);
        doctor.setPassword(pass);
        doctor.setPraise(Integer.parseInt(praise));

        doctorService.addDoctor(doctor);

        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria2 = doctorExample.createCriteria();
        criteria2.andDnameEqualTo(dname);
        criteria2.andDsidEqualTo(Integer.parseInt(dsid));

        Doctor doctor1 = doctorService.getAllDoctor(doctorExample).get(0);
        Integer did1 = doctor1.getDid();

        String substring1 = ridString.substring(1);
        String[] rids = substring1.split("-");

        DocRoleExample docRoleExample = new DocRoleExample();
        DocRoleExample.Criteria criteria = docRoleExample.createCriteria();
        criteria.andDidEqualTo(did1);

        docRoleService.deleteDocRoleByExample(docRoleExample);

        for (int i = 0; i < rids.length; i++){
            int rid = Integer.parseInt(rids[i]);
            DocRole docRole = new DocRole();
            docRole.setDid(did1);
            docRole.setRid(rid);

            docRoleService.addDocRole(docRole);
        }


        String substring2 = ilidString.substring(1);
        String[] ilids = substring2.split("-");

        DoctorIllnessExample doctorIllnessExample = new DoctorIllnessExample();
        DoctorIllnessExample.Criteria criteria1 = doctorIllnessExample.createCriteria();
        criteria1.andDidEqualTo(did1);
        doctorIllnessService.deleteDoctorIllnessByExample(doctorIllnessExample);

        for (int i = 0; i < ilids.length; i++){
            int ilid = Integer.parseInt(ilids[i]);
            DoctorIllness doctorIllness = new DoctorIllness();
            doctorIllness.setDid(did1);
            doctorIllness.setIlid(ilid);
            doctorIllnessService.addDoctorIllness(doctorIllness);
        }

        return true;
    }

    @GetMapping("/toHtDoctorListDescr/{did}")
    public String toHtDoctorListDescr(Model model,@PathVariable int did){

        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria11 = doctorExample.createCriteria();
        criteria11.andDidEqualTo(did);

        Doctor doctor = doctorService.getAllDoctor(doctorExample).get(0);

        model.addAttribute("doctor",doctor);

        DoctorCommentExample doctorCommentExample = new DoctorCommentExample();
        DoctorCommentExample.Criteria criteria = doctorCommentExample.createCriteria();
        criteria.andDidEqualTo(doctor.getDid());

        List<DoctorComment> allDoctorCommentByExample = doctorCommentService.getAllDoctorCommentByExample(doctorCommentExample);

        model.addAttribute("commentCount",allDoctorCommentByExample.size());

        ConsultExample consultExample = new ConsultExample();
        ConsultExample.Criteria criteria1 = consultExample.createCriteria();
        criteria1.andDidEqualTo(doctor.getDid());

        List<Consult> allConsultByExample = consultService.getAllConsultByExample(consultExample);

        model.addAttribute("consultCount",allConsultByExample.size());

        NumberExample numberExample = new NumberExample();
        NumberExample.Criteria criteria2 = numberExample.createCriteria();
        criteria2.andDidEqualTo(doctor.getDid());

        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();

        String format1 = format.format(date);

        criteria2.andDataEqualTo(format1);
        criteria2.andStateEqualTo("待诊");

        List<Number> allNumberByExample = numberService.getAllNumberByExample(numberExample);

        model.addAttribute("numberCount",allNumberByExample.size());

        model.addAttribute("allDoctorSchedule",doctorScheduleService.getAllDoctorScheduleByExample(null));

        return "ht/doctorListDescr";
    }

}
