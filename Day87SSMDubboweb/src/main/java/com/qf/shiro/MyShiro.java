package com.qf.shiro;

import com.qf.pojo.Doctor;
import com.qf.pojo.DoctorExample;
import com.qf.pojo.Roles;
import com.qf.service.IDoctorService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;
import java.util.List;

public class MyShiro extends AuthorizingRealm {

    @Resource
    private IDoctorService doctorService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();

        String uname = getAvailablePrincipal(principals).toString();

        int did = Integer.parseInt(uname);

        List<Roles> roleListByDid = doctorService.getRoleListByDid(did);

        for (Roles r:roleListByDid) {
            info.addRole(r.getRname());
        }

        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        SimpleAuthenticationInfo info = null;

        UsernamePasswordToken tk = (UsernamePasswordToken) token;

        String username = tk.getUsername();
        char[] password = tk.getPassword();

        Doctor doctor = new Doctor();
        doctor.setDid(Integer.parseInt(username));
        doctor.setPassword(new String(password));

        Doctor login = doctorService.login(doctor);

        if (login != null){
            info = new SimpleAuthenticationInfo(username,new String(password),getName());
        }
        return info;
    }
}
