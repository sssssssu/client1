package com.su.ssm.client.controller;

import com.su.ssm.client.model.UserInfo;
import com.su.ssm.client.service.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.sound.midi.Soundbank;

@Controller
public class controller {
    @Resource
    Login login;

    @RequestMapping("saveUser")
    public String saveUser(UserInfo info){
        System.out.println(info.toString());
        UserInfo user=login.login(info);
        if (user==null){
            System.out.println("失败");

            return "index";
        }else {
            System.out.println("成功");
            return "success";
        }

    }

    @RequestMapping("save")
    public String save(UserInfo info){

        int res=login.save(info);
        if (res != 1){
            System.out.println("注册失败");

            return "index";
        }else {
            System.out.println("注册成功");
            return "success";
        }

    }
    @RequestMapping("savePage")
    public String savePage(){
        System.out.println("前端控制器");
        return "save";
    }
}
