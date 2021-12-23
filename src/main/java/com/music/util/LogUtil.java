package com.music.util;

import nl.bitwalker.useragentutils.UserAgent;

import javax.servlet.http.HttpServletRequest;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.*;

public class LogUtil {


    public Map<String, Object> getInformation(HttpServletRequest request){

        String uaStr = request.getHeader("User-Agent");
        UserAgent ua = UserAgent.parseUserAgentString(uaStr);

        Map<String,Object> info = new HashMap<>();

        Properties props =System.getProperties();

        InetAddress ip4 = null;

        Map<String,String> map = System.getenv();

        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        try {

             ip4= Inet4Address.getLocalHost();

             info.put("device",props.getProperty("os.name"));
             info.put("sysUserName",ip4.getHostName());
             info.put("sysUser",map.get("USERNAME"));
             info.put("browser",ua.getBrowser());
             info.put("ip4",ip4.getHostAddress());
             info.put("date",formatter.format(date));

        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return info;
    }
}
