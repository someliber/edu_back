package com.liber.utilts;

import org.apache.commons.codec.digest.DigestUtils;

public class Md5 {
    public final static String md5key="MS2";

    /**
     * MD5方法
     * @param text 明文
     * @param key 密钥
     * @return 密文
     * @throws Exception
     */
    public static String md5(String text,String key)throws Exception{
        //加密后的字符串
        String encodeStr= DigestUtils.md5Hex(text+key);
        return encodeStr;
    }

    public static boolean verify(String text,String key,String md5) throws Exception{
        //根据传入后的密钥进行验证
        String md5Text=md5(text,key);
        if(md5Text.equals(md5)){
            System.out.println("MD5验证通过");
            return true;
        }
        return false;
    }

    public static void main(String[] args) throws Exception {
        //注册 用户名：tom 密码：123456
        //添加用户的时候，要将明文密码转换为密文密码
        String encodeStr = Md5.md5("123456", md5key);
        System.out.println("MD5加密后的字符串为：encodeStr:"+encodeStr);

        //登录：用户名tom 密码：123456
        boolean verify = Md5.verify("123456", md5key, encodeStr);
        System.out.println(verify);
    }
}
