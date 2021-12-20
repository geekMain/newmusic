package com.music.util;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;

public class LogUtil {

    //登录Ip
    public String getInet(){
        InetAddress ip4 = null;
        try {
             ip4= Inet4Address.getLocalHost();
            System.out.println(ip4.getHostName());
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return ip4.getHostAddress();
    }


}
