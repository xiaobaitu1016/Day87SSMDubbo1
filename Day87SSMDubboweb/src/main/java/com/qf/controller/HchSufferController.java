package com.qf.controller;

import com.qf.pojo.*;
import com.qf.pojo.Number;
import com.qf.service.IDepartmentsBigService;
import com.qf.service.IDoctorService;
import com.qf.service.INumberService;
import com.qf.service.ISufferService;
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
public class HchSufferController {

    @Resource
    private ISufferService sufferService;
    @Resource
    private INumberService numberService;
    @Resource
    private IDepartmentsBigService departmentsBigService;
    @Resource
    private IDoctorService doctorService;

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
            for (Doctor d:allDoctor) {
                NumberExample.Criteria criteria2 = numberExample.createCriteria();
                criteria2.andDidEqualTo(d.getDid());

                if (suname != null && !"".equals(suname)){
                    SufferExample sufferExample = new SufferExample();
                    SufferExample.Criteria suffercriteria = sufferExample.createCriteria();

                    suffercriteria.andSunameEqualTo(suname);

                    List<Suffer> allSufferByExample = sufferService.getAllSufferByExample(sufferExample);
                    if (allSufferByExample != null && !allSufferByExample.isEmpty()){
                        criteria2.andSuidEqualTo(allSufferByExample.get(0).getSuid());
                    }

                }

                if (dids != null && !"".equals(dids)){
                    int did = Integer.parseInt(dids);
                    criteria2.andDidEqualTo(did);
                }
                numberExample.or(criteria2);
            }
        }else {
            NumberExample.Criteria criteria = numberExample.createCriteria();
            if (suname != null && !"".equals(suname)){
                SufferExample sufferExample = new SufferExample();
                SufferExample.Criteria suffercriteria = sufferExample.createCriteria();

                suffercriteria.andSunameEqualTo(suname);

                List<Suffer> allSufferByExample = sufferService.getAllSufferByExample(sufferExample);

                if (allSufferByExample != null && !allSufferByExample.isEmpty()){
                    criteria.andSuidEqualTo(allSufferByExample.get(0).getSuid());
                }
            }

            if (dids != null && !"".equals(dids)){
                int did = Integer.parseInt(dids);
                criteria.andDidEqualTo(did);
            }
        }

        List<Number> allNumberByExample = numberService.getAllNumberByExample(numberExample);

        LayuiUtil<Number> layuiUtil = new LayuiUtil<>();

        LayuiUtil<Number> numberLayuiUtil = layuiUtil.toLayuiList(allNumberByExample);

        return numberLayuiUtil;

    }

    @GetMapping("/htSufferWaitDescr/{nuid}")
    public String htSufferWaitDescr(Model model, @PathVariable int nuid){
        NumberExample numberExample = new NumberExample();
        NumberExample.Criteria criteria = numberExample.createCriteria();
        criteria.andNuidEqualTo(nuid);

        List<Number> allNumberByExample = numberService.getAllNumberByExample(numberExample);

        model.addAttribute("numberCur",allNumberByExample.get(0));
        //
        return "sufferWaitDescr";
    }

}
