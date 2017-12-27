package com.mikolenko.oksana.database.web;

import com.mikolenko.oksana.database.persistense.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

public class HostPage {
    private final UserDao userDao;

    @Autowired
    public HostPage(UserDao userDao) {
        this.userDao = userDao;
    }



    @RequestMapping(path = "/host")
    public ModelAndView MainPage(ModelAndView modelAndView, HttpServletRequest request) {
        Principal principal = request.getUserPrincipal();
        String name = principal.getName();
        String role = "/host";
        modelAndView.setViewName("host_page");
        modelAndView.addObject("myPage", role);


        return modelAndView;
    }
}
