package com.music.util;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

public class EmailUtil{

    //设置SMTP服务器
    private final String HOST_NAME = "smtp.qq.com";

    //设置编码格式
    private final String CHARSET = "utf-8";

    //设置发送人
    private final String EMAIL = "969220214@qq.com";

    //设置发送人名称
    private final String SENDER = "New Music";

    //设置授权码
    private final String AUTHENTICATION_CODE = "nbxkiogckfrwbbif";


    public void sendEmail(String receiver,String theme,String text){
        try {
            HtmlEmail email=new HtmlEmail();
            email.setHostName(HOST_NAME);
            email.setCharset(CHARSET);
            email.addTo(receiver);
            email.setFrom(EMAIL,SENDER);
            email.setAuthentication(EMAIL,AUTHENTICATION_CODE);
            email.setSubject(theme);//主题
            email.setMsg(text);//内容
            email.send();
        } catch (EmailException e) {
            e.printStackTrace();
        }
    }
}
