package com.su.ssm.client.service;

import com.su.ssm.client.mapper.UserInfoMapper;
import com.su.ssm.client.model.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service
public class Login {

    @Resource
    private UserInfoMapper userInfoMapper;
    public  UserInfo login(UserInfo info){
        System.out.println("login..");
        System.out.println(info.toString());
        return userInfoMapper.selectByPassword(info);
    }

    public  int save(UserInfo info){
        System.out.println("login..");
        System.out.println(info.toString());
        return userInfoMapper.insert(info);
    }
}
