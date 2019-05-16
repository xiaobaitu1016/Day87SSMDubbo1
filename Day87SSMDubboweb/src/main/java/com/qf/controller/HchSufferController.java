package com.qf.controller;

import com.qf.pojo.*;
import com.qf.pojo.Number;
import com.qf.service.*;
import com.qf.util.LayuiUtil;
import com.qf.util.PageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class HchSufferController {

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

    @GetMapping("/toHtSufferList")
    public String toHtSufferList(){
        return "ht/sufferList";
    }

    @PostMapping("/htAllSuffer")
    @ResponseBody
    public LayuiUtil<Suffer> getAllOrders(HttpServletRequest request) {
        int page = Integer.parseInt(request.getParameter("page"));
        int limit = Integer.parseInt(request.getParameter("limit"));

        String suids = request.getParameter("suid");
        String suname = request.getParameter("suname");

        SufferExample sufferExample = new SufferExample();
        SufferExample.Criteria criteria = sufferExample.createCriteria();

        if (suids != null && !"".equals(suids)){
            String substring = suids.substring(2);

            int didi = Integer.parseInt(substring)-10000;

            criteria.andSuidEqualTo(didi);
        }

        if (suname != null && !"".equals(suname)){

            criteria.andSunameLike("%"+suname+"%");
        }

        List<Suffer> allSufferByExample = sufferService.getAllSufferByExample(sufferExample);
        List<Suffer> allSufferByPageExample = sufferService.getAllSufferByPageExample(sufferExample, page, limit);

        LayuiUtil<Suffer> layuiUtil = new LayuiUtil<>();

        LayuiUtil<Suffer> sufferLayuiUtil = layuiUtil.toLayuiList(allSufferByPageExample);

        sufferLayuiUtil.setCount(allSufferByExample.size());

        return sufferLayuiUtil;
    }

    @GetMapping("/toHtSufferWaitList")
    public String toHtSufferWaitList(Model model){
        model.addAttribute("allDepartmentsBig",departmentsBigService.getAllDepartmentsBigByExample(null));

        model.addAttribute("allDoctor",doctorService.getAllDoctor(null));

        return "ht/sufferWaitList";
    }

    @PostMapping("/htGetDoctorList")
    @ResponseBody
    public List<Doctor> getDoctorList(HttpServletRequest request){
        String departSmall = request.getParameter("departSmall");

        int dsid = Integer.parseInt(departSmall);

        System.out.println(dsid);

        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria = doctorExample.createCriteria();

        criteria.andDsidEqualTo(dsid);

        List<Doctor> allDoctor = doctorService.getAllDoctor(doctorExample);

        return allDoctor;
    }

    @PostMapping("/htAllSufferWait")
    @ResponseBody
    public LayuiUtil<Number> htAllSufferWait(HttpServletRequest request) {
        int page = Integer.parseInt(request.getParameter("page"));
        int limit = Integer.parseInt(request.getParameter("limit"));

        String suname = request.getParameter("suname");
        String dsids = request.getParameter("dsid");
        String dids = request.getParameter("did");

        NumberExample numberExample = new NumberExample();

        if (dsids != null && !"".equals(dsids)){
            int dsid = Integer.parseInt(dsids);
            DoctorExample doctorExample = new DoctorExample();
            DoctorExample.Criteria criteria1 = doctorExample.createCriteria();

            criteria1.andDsidEqualTo(dsid);

            List<Doctor> allDoctor = doctorService.getAllDoctor(doctorExample);

            if (allDoctor.size() == 0){
                LayuiUtil<Number> util = new LayuiUtil<>();
                List<Number> numberList = new ArrayList<>();

                LayuiUtil<Number> list = util.toLayuiList(numberList);

                return list;
            }else {
                for (Doctor d:allDoctor) {
                    NumberExample.Criteria criteria2 = numberExample.createCriteria();
                    criteria2.andDidEqualTo(d.getDid());

                    if (suname != null && !"".equals(suname)){
                        SufferExample sufferExample = new SufferExample();
                        SufferExample.Criteria suffercriteria = sufferExample.createCriteria();

                        suffercriteria.andSunameEqualTo(suname);

                        List<Suffer> allSufferByExample = sufferService.getAllSufferByExample(sufferExample);
                        if (allSufferByExample.size()>0){
                            criteria2.andSuidEqualTo(allSufferByExample.get(0).getSuid());
                        }

                    }

                    if (dids != null && !"".equals(dids)){
                        int did = Integer.parseInt(dids);
                        criteria2.andDidEqualTo(did);
                    }
                    numberExample.or(criteria2);
                }
            }

        }else {
            NumberExample.Criteria criteria = numberExample.createCriteria();
            if (suname != null && !"".equals(suname)){
                SufferExample sufferExample = new SufferExample();
                SufferExample.Criteria suffercriteria = sufferExample.createCriteria();

                suffercriteria.andSunameEqualTo(suname);

                List<Suffer> allSufferByExample = sufferService.getAllSufferByExample(sufferExample);

                if (allSufferByExample.size()>0){
                    criteria.andSuidEqualTo(allSufferByExample.get(0).getSuid());
                }
            }

            if (dids != null && !"".equals(dids)){
                int did = Integer.parseInt(dids);
                criteria.andDidEqualTo(did);
            }
        }

        List<Number> allNumberByExample = numberService.getAllNumberByExample(numberExample);

        PageUtil<Number> pageUtil = new PageUtil<>();

        List<Number> numberList = pageUtil.pageUtil(allNumberByExample, page, limit);

        LayuiUtil<Number> layuiUtil = new LayuiUtil<>();

        LayuiUtil<Number> numberLayuiUtil = layuiUtil.toLayuiList(numberList);
        numberLayuiUtil.setCount(allNumberByExample.size());

        return numberLayuiUtil;

    }

    @GetMapping("/htSufferWaitDescr/{nuid}")
    public String htSufferWaitDescr(Model model, @PathVariable int nuid){
        NumberExample numberExample = new NumberExample();
        NumberExample.Criteria criteria = numberExample.createCriteria();
        criteria.andNuidEqualTo(nuid);

        List<Number> allNumberByExample = numberService.getAllNumberByExample(numberExample);

        model.addAttribute("numberCur",allNumberByExample.get(0));

        return "ht/sufferWaitDescr";
    }

    @GetMapping("/toHtSufferWaitAdd")
    public String toHtSufferWaitAdd(Model model){
        model.addAttribute("allSuffer",sufferService.getAllSufferByExample(null));

        model.addAttribute("allDbig",departmentsBigService.getAllDepartmentsBigByExample(null));

        model.addAttribute("allDoctor",doctorService.getAllDoctor(null));

        model.addAttribute("allIllness",iIllnessService.getAllIllness(null));

        return "ht/sufferWaitAdd";
    }

    @PostMapping("/htGetSufferBySuid")
    @ResponseBody
    public List<Suffer> htGetSufferBySuid(HttpServletRequest request){

        SufferExample sufferExample = new SufferExample();
        SufferExample.Criteria criteria = sufferExample.createCriteria();
        String suid1 = request.getParameter("suid");

        if (suid1 != null && !"".equals(suid1)){
            int suid = Integer.parseInt(suid1);
            criteria.andSuidEqualTo(suid);
        }

        List<Suffer> allSufferByExample = sufferService.getAllSufferByExample(sufferExample);

        return allSufferByExample;
    }

    @PostMapping("/htGetSufferBySuname")
    @ResponseBody
    public List<Suffer> htGetSufferBySuname(HttpServletRequest request){
        String suname = request.getParameter("suname");

        SufferExample sufferExample = new SufferExample();
        SufferExample.Criteria criteria = sufferExample.createCriteria();

        if (suname != null && !"".equals(suname)){
            criteria.andSunameEqualTo(suname);
        }


        List<Suffer> allSufferByExample = sufferService.getAllSufferByExample(sufferExample);

        return allSufferByExample;
    }

    @PostMapping("/htGetDsmall")
    @ResponseBody
    public List<Illness> htGetDsmall(HttpServletRequest request){
        String didd = request.getParameter("dsid");

        int dsid = Integer.parseInt(didd);

        DepartmentsSmallExample smallExample = new DepartmentsSmallExample();

        DepartmentsSmallExample.Criteria criteria = smallExample.createCriteria();

        criteria.andDsidEqualTo(dsid);

        return departmentsSmallService.getAllDepartmentsSmallByExample(smallExample).get(0).getIllnessList();
    }

    @PostMapping("/htGetDsmallByDoctor")
    @ResponseBody
    public List<Illness> htGetDsmallByDoctor(HttpServletRequest request){
        String didd = request.getParameter("did");

        int did = Integer.parseInt(didd);

        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria1 = doctorExample.createCriteria();

        criteria1.andDidEqualTo(did);

        List<Doctor> allDoctor = doctorService.getAllDoctor(doctorExample);

        int dsid = allDoctor.get(0).getDsid();

        DepartmentsSmallExample smallExample = new DepartmentsSmallExample();

        DepartmentsSmallExample.Criteria criteria = smallExample.createCriteria();

        criteria.andDsidEqualTo(dsid);

        return departmentsSmallService.getAllDepartmentsSmallByExample(smallExample).get(0).getIllnessList();
    }

    @PostMapping("/htGetCountByAdd")
    @ResponseBody
    public int htGetCountByAdd(HttpServletRequest request){
        String didd = request.getParameter("did");
        String times = request.getParameter("time");
        int did = Integer.parseInt(didd);

        String time = times.substring(0, 10);
        NumberExample numberExample = new NumberExample();
        NumberExample.Criteria criteria = numberExample.createCriteria();

        criteria.andDidEqualTo(did);
        criteria.andDataEqualTo(time);

        List<Number> allNumberByExample = new ArrayList<>();
        allNumberByExample = numberService.getAllNumberByExample(numberExample);

        return allNumberByExample.size()+1;
    }

    @PostMapping("/sufferWaitAddSubmit")
    @ResponseBody
    public boolean sufferWaitAddSubmit(HttpServletRequest request) throws ParseException {
        int suid = Integer.parseInt(request.getParameter("suid"));
        int did = Integer.parseInt(request.getParameter("did"));
        int ilid = Integer.parseInt(request.getParameter("ilid"));
        String time = request.getParameter("time").substring(0,16);
        String state = request.getParameter("state");
        int count = Integer.parseInt(request.getParameter("count"));
        String descrs = request.getParameter("descrs");
        String remarks = request.getParameter("remarks");
        String date = time.substring(0,10);

        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria1 = doctorExample.createCriteria();
        criteria1.andDidEqualTo(did);
        List<Doctor> allDoctor = doctorService.getAllDoctor(doctorExample);
        Doctor doctor = allDoctor.get(0);

        SufferExample sufferExample = new SufferExample();
        SufferExample.Criteria criteria = sufferExample.createCriteria();
        criteria.andSuidEqualTo(suid);
        List<Suffer> allSufferByExample = sufferService.getAllSufferByExample(sufferExample);
        Suffer suffer = allSufferByExample.get(0);
        double price = suffer.getPrice()-doctor.getDoctorRole().getPrice();
        suffer.setPrice(price);

        sufferService.updateSufferBySuid(suffer);

        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date timeFormat = format.parse(time);

        Number number = new Number();

        number.setData(date);
        number.setCount(count);
        number.setIlid(ilid);
        number.setDid(did);
        number.setSuid(suid);
        number.setTime(timeFormat);
        number.setDescr(descrs);
        number.setRemarks(remarks);
        number.setState(state);

        boolean b = numberService.addNumber(number);

        return b;
    }

    @GetMapping("/toHtSufferMyWaitList")
    public String toHtSufferMyWaitList(Model model,HttpServletRequest request){
        Doctor curDoctor = (Doctor) request.getSession().getAttribute("curDoctor");

        IllnessExample illnessExample = new IllnessExample();
        IllnessExample.Criteria criteria = illnessExample.createCriteria();
        criteria.andDsidEqualTo(curDoctor.getDsid());

        model.addAttribute("allIllness",iIllnessService.getAllIllnessByExample(illnessExample));
        return "ht/sufferMyWaitList";
    }

    @PostMapping("/htAllMySufferWait")
    @ResponseBody
    public LayuiUtil<Number> htAllMySufferWait(HttpServletRequest request) throws ParseException {
        int page = Integer.parseInt(request.getParameter("page"));
        int limit = Integer.parseInt(request.getParameter("limit"));

        String ilids = request.getParameter("ilid");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        Doctor curDoctor = (Doctor) request.getSession().getAttribute("curDoctor");

        NumberExample numberExample = new NumberExample();
        NumberExample.Criteria criteria = numberExample.createCriteria();
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        DateFormat format1 = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
        String datenow = format.format(date);

        criteria.andDataEqualTo(datenow);

        criteria.andDidEqualTo(curDoctor.getDid());

        if ((startTime != null && !"".equals(startTime)) || (endTime != null && !"".equals(endTime))){
            if((startTime == null || "".equals(startTime)) && (endTime != null && !"".equals(endTime))){
                String substring = endTime.substring(0, 8);
                String s = datenow + " " + substring;
                Date parse = format1.parse(s);

                criteria.andTimeLessThan(parse);
            }else if((startTime != null && !"".equals(startTime)) && (endTime == null || "".equals(endTime))){
                String substring = startTime.substring(0, 8);
                String s = datenow + " " + substring;
                Date parse = format1.parse(s);
                criteria.andTimeGreaterThan(parse);
            }else if((startTime != null && !"".equals(startTime)) && (endTime != null && !"".equals(endTime))){
                String substring1 = startTime.substring(0, 8);
                String substring2 = endTime.substring(0, 8);
                String send = datenow + " " + substring2;
                String sstart = datenow + " " + substring1;
                Date start = format1.parse(sstart);
                Date end = format1.parse(send);

                criteria.andTimeBetween(start,end);
            }
        }


        List<Number> allNumberByExample = numberService.getAllNumberByExample(numberExample);

        PageUtil<Number> pageUtil = new PageUtil<>();

        List<Number> numberList = pageUtil.pageUtil(allNumberByExample, page, limit);

        LayuiUtil<Number> layuiUtil = new LayuiUtil<>();

        LayuiUtil<Number> numberLayuiUtil = layuiUtil.toLayuiList(numberList);
        numberLayuiUtil.setCount(allNumberByExample.size());

        return numberLayuiUtil;
    }

    @PostMapping("/htSufferWaitJiezhen")
    @ResponseBody
    public boolean htSufferWaitJiezhen(HttpServletRequest request){
        int nuid = Integer.parseInt(request.getParameter("nuid"));
        Number numberByNuid = numberService.getNumberByNuid(nuid);

        numberByNuid.setState("已就诊");

        boolean b = numberService.updateNumberByNuid(numberByNuid);

        return b;
    }

    @GetMapping("/toHtMySufferWaitAdd")
    public String toHtMySufferWaitAdd(Model model,HttpServletRequest request){
        model.addAttribute("allSuffer",sufferService.getAllSufferByExample(null));

        model.addAttribute("allDbig",departmentsBigService.getAllDepartmentsBigByExample(null));

        model.addAttribute("allDoctor",doctorService.getAllDoctor(null));



        Doctor curDoctor = (Doctor) request.getSession().getAttribute("curDoctor");
        List<Illness> illnessList = curDoctor.getDepartmentsSmall().getIllnessList();

        model.addAttribute("allIllness",curDoctor.getDepartmentsSmall().getIllnessList());

        model.addAttribute("count11",illnessList.size()+1);

        return "ht/sufferMyWaitAdd";
    }

}
