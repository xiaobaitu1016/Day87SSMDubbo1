package com.qf.controller;

import com.qf.pojo.*;
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

        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria2 = doctorExample.createCriteria();
        criteria2.andDsidEqualTo(dsid);

        model.addAttribute("allDoctor",doctorService.getAllDoctor(doctorExample));

        model.addAttribute("departmentsSmall",departmentsSmall);

        model.addAttribute("departmentsBig",departmentsBigService.getAllDepartmentsBigByExample(departmentsBigExample).get(0));

        model.addAttribute("allSchedule",doctorScheduleService.getAllDoctorScheduleByExample(null));

        model.addAttribute("doctor11",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,1,1));
        model.addAttribute("doctor12",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,1,2));
        model.addAttribute("doctor13",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,1,3));
        model.addAttribute("doctor14",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,1,4));
        model.addAttribute("doctor21",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,2,1));
        model.addAttribute("doctor22",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,2,2));
        model.addAttribute("doctor23",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,2,3));
        model.addAttribute("doctor24",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,2,4));
        model.addAttribute("doctor31",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,3,1));
        model.addAttribute("doctor32",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,3,2));
        model.addAttribute("doctor33",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,3,3));
        model.addAttribute("doctor34",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,3,4));
        model.addAttribute("doctor41",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,4,1));
        model.addAttribute("doctor42",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,4,2));
        model.addAttribute("doctor43",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,4,3));
        model.addAttribute("doctor44",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,4,4));
        model.addAttribute("doctor51",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,5,1));
        model.addAttribute("doctor52",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,5,2));
        model.addAttribute("doctor53",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,5,3));
        model.addAttribute("doctor54",doctorScheduleService.getDoctorByDsidWeekdayWhichclass(dsid,5,4));

        return "ht/departmentsSmallDescr";
    }

    @GetMapping("/toDepartmentsSmallDescrAddDoctor/{dsid}")
    public String toDepartmentsSmallDescrAddDoctor(Model model,@PathVariable int dsid){

        model.addAttribute("allDbig",departmentsBigService.getAllDepartmentsBigByExample(null));

        model.addAttribute("allDoctorRole",doctorRoleService.getAllDoctorRoleByExample(null));

        model.addAttribute("allRole",rolesService.getAllRolesByExample(null));

        model.addAttribute("allIllness",iIllnessService.getAllIllnessByExample(null));

        DepartmentsSmallExample departmentsSmallExample = new DepartmentsSmallExample();
        DepartmentsSmallExample.Criteria criteria = departmentsSmallExample.createCriteria();

        criteria.andDsidEqualTo(dsid);

        model.addAttribute("dsmall",departmentsSmallService.getAllDepartmentsSmallByExample(departmentsSmallExample).get(0));

        return "ht/departmentsSmallDescrAddDoctor";
    }

    @PostMapping("/departmentsSmallDescrAddDoctorSubmit")
    @ResponseBody
    public boolean departmentsSmallDescrAddDoctorSubmit(HttpServletRequest request){
        String dname = request.getParameter("dname");
        String dsname = request.getParameter("dsid");
        String drid = request.getParameter("drid");
        String ridString = request.getParameter("ridString");
        String phone = request.getParameter("phone");
        String ilidString = request.getParameter("ilidString");
        String remarks = request.getParameter("remarks");
        String pass = request.getParameter("pass");
        String praise = request.getParameter("praise");

        DepartmentsSmallExample departmentsSmallExample = new DepartmentsSmallExample();
        DepartmentsSmallExample.Criteria criteria3 = departmentsSmallExample.createCriteria();
        criteria3.andDsnameEqualTo(dsname);

        Integer dsid = departmentsSmallService.getAllDepartmentsSmallByExample(departmentsSmallExample).get(0).getDsid();

        Doctor doctor = new Doctor();
        doctor.setDname(dname);
        doctor.setDsid(dsid);
        doctor.setDrid(Integer.parseInt(drid));
        doctor.setPhone(phone);
        doctor.setRemarks(remarks);
        doctor.setPassword(pass);
        doctor.setPraise(Integer.parseInt(praise));

        doctorService.addDoctor(doctor);

        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria2 = doctorExample.createCriteria();
        criteria2.andDnameEqualTo(dname);
        criteria2.andDsidEqualTo(dsid);

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

    @GetMapping("/toDepartmentsSmallDescrAddIllness/{dsid}")
    public String toDepartmentsSmallDescrAddIllness(Model model,@PathVariable int dsid){

        DepartmentsSmallExample departmentsSmallExample = new DepartmentsSmallExample();
        DepartmentsSmallExample.Criteria criteria = departmentsSmallExample.createCriteria();

        criteria.andDsidEqualTo(dsid);

        model.addAttribute("dsmall",departmentsSmallService.getAllDepartmentsSmallByExample(departmentsSmallExample).get(0));

        return "ht/departmentsSmallDescrAddIllness";
    }

    @PostMapping("/departmentsSmallDescrAddIllnessSubmit")
    @ResponseBody
    public boolean departmentsSmallDescrAddIllnessSubmit(HttpServletRequest request){
        String ilname = request.getParameter("ilname");
        String dsmall = request.getParameter("dsmall");
        String remarkes = request.getParameter("remarkes");

        DepartmentsSmallExample departmentsSmallExample = new DepartmentsSmallExample();
        DepartmentsSmallExample.Criteria criteria = departmentsSmallExample.createCriteria();

        criteria.andDsnameEqualTo(dsmall);
        DepartmentsSmall departmentsSmall = departmentsSmallService.getAllDepartmentsSmallByExample(departmentsSmallExample).get(0);

        Illness illness = new Illness();
        illness.setDsid(departmentsSmall.getDsid());
        illness.setIlname(ilname);
        illness.setRemarks(remarkes);

        return iIllnessService.addIllness(illness);
    }

    @PostMapping("/updateSchedule")
    @ResponseBody
    public boolean updateSchedule(HttpServletRequest request){
        String s11 = request.getParameter("s11");
        String s12 = request.getParameter("s12");
        String s13 = request.getParameter("s13");
        String s14 = request.getParameter("s14");
        String s21 = request.getParameter("s21");
        String s22 = request.getParameter("s22");
        String s23 = request.getParameter("s23");
        String s24 = request.getParameter("s24");
        String s31 = request.getParameter("s31");
        String s32 = request.getParameter("s32");
        String s33 = request.getParameter("s33");
        String s34 = request.getParameter("s34");
        String s41 = request.getParameter("s41");
        String s42 = request.getParameter("s42");
        String s43 = request.getParameter("s43");
        String s44 = request.getParameter("s44");
        String s51 = request.getParameter("s51");
        String s52 = request.getParameter("s52");
        String s53 = request.getParameter("s53");
        String s54 = request.getParameter("s54");
        int dsid = Integer.parseInt(request.getParameter("dsid"));

        doctorScheduleService.deleteDoctorScheduleByDsid(dsid);

        if (s11 != null && !"".equals(s11)){
            int did = Integer.parseInt(s11);
            DoctorSchedule doctorSchedule = new DoctorSchedule();
            doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);
            doctorSchedule.setWeekday(1);doctorSchedule.setWhichclass(1);
            doctorScheduleService.addDoctorSchedule(doctorSchedule);
        }
        if (s12 != null && !"".equals(s12)){
            int did = Integer.parseInt(s12);
            DoctorSchedule doctorSchedule = new DoctorSchedule();
            doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);
            doctorSchedule.setWeekday(1);doctorSchedule.setWhichclass(2);
            doctorScheduleService.addDoctorSchedule(doctorSchedule);
        }
        if (s13 != null && !"".equals(s13)){
            int did = Integer.parseInt(s13);
            DoctorSchedule doctorSchedule = new DoctorSchedule();
            doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);
            doctorSchedule.setWeekday(1);doctorSchedule.setWhichclass(3);
            doctorScheduleService.addDoctorSchedule(doctorSchedule);
        }
        if (s14 != null && !"".equals(s14)){
            int did = Integer.parseInt(s14);
            DoctorSchedule doctorSchedule = new DoctorSchedule();
            doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);
            doctorSchedule.setWeekday(1);doctorSchedule.setWhichclass(4);
            doctorScheduleService.addDoctorSchedule(doctorSchedule);
        }
        if (s21 != null && !"".equals(s21)){
            int did = Integer.parseInt(s21);
            DoctorSchedule doctorSchedule = new DoctorSchedule();
            doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);
            doctorSchedule.setWeekday(2);doctorSchedule.setWhichclass(1);
            doctorScheduleService.addDoctorSchedule(doctorSchedule);
        }
        if (s22 != null && !"".equals(s22)){ int did = Integer.parseInt(s22);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(2);doctorSchedule.setWhichclass(2);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s23 != null && !"".equals(s23)){ int did = Integer.parseInt(s23);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(2);doctorSchedule.setWhichclass(3);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s24 != null && !"".equals(s24)){ int did = Integer.parseInt(s24);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(2);doctorSchedule.setWhichclass(4);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s31 != null && !"".equals(s31)){ int did = Integer.parseInt(s31);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(3);doctorSchedule.setWhichclass(1);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s32 != null && !"".equals(s32)){ int did = Integer.parseInt(s32);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(3);doctorSchedule.setWhichclass(2);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s33 != null && !"".equals(s33)){ int did = Integer.parseInt(s33);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(3);doctorSchedule.setWhichclass(3);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s34 != null && !"".equals(s34)){ int did = Integer.parseInt(s34);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(3);doctorSchedule.setWhichclass(4);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s41 != null && !"".equals(s41)){ int did = Integer.parseInt(s41);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(4);doctorSchedule.setWhichclass(1);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s42 != null && !"".equals(s42)){ int did = Integer.parseInt(s42);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(4);doctorSchedule.setWhichclass(2);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s43 != null && !"".equals(s43)){ int did = Integer.parseInt(s43);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(4);doctorSchedule.setWhichclass(3);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s44 != null && !"".equals(s44)){ int did = Integer.parseInt(s44);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(4);doctorSchedule.setWhichclass(4);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s51 != null && !"".equals(s51)){ int did = Integer.parseInt(s51);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(5);doctorSchedule.setWhichclass(1);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s52 != null && !"".equals(s52)){ int did = Integer.parseInt(s52);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(5);doctorSchedule.setWhichclass(2);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s53 != null && !"".equals(s53)){ int did = Integer.parseInt(s53);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(5);doctorSchedule.setWhichclass(3);doctorScheduleService.addDoctorSchedule(doctorSchedule);}
        if (s54 != null && !"".equals(s54)){ int did = Integer.parseInt(s54);DoctorSchedule doctorSchedule = new DoctorSchedule();doctorSchedule.setDsid(dsid);doctorSchedule.setDid(did);doctorSchedule.setWeekday(5);doctorSchedule.setWhichclass(4);doctorScheduleService.addDoctorSchedule(doctorSchedule);}

        return true;
    }

}
