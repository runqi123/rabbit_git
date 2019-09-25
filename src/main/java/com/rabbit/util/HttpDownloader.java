package com.rabbit.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;


public class HttpDownloader {
    private URL url = null;
    /**
     * 根据提供的URL地址下载文件，所下载的文件必须是文本文件。
     * ***************************************************
     * 1、创建一个URL对象
     * 2、通过URL对象，创建一个HttpURLConnection对象
     * 3、通过HttpURLConnection对象，得到一个InputStream
     * 4、从InputStream中读取数据
     * ***************************************************
     * @param urlStr 需要下载的文件的URL
     * @return 返回所下载文件的内容
     */
    public String download(String urlStr) {
        StringBuffer sb = new StringBuffer();
        String line = null;
        BufferedReader buffer = null;
        InputStream input = null;

        try {
            //使用getInputStreamFromUrl得到一个InputStream
            input = this.getInputStreamFromUrl(urlStr);
            //使用IO流读取数据
            buffer = new BufferedReader(new InputStreamReader(input));
            while((line = buffer.readLine()) != null) {
                sb.append(line);
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //关闭相关的资源
            try {
                if(buffer != null) {
                    buffer.close();
                    buffer = null;
                }
                if(input != null) {
                    input.close();
                    input = null;
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return sb.toString();
    }

    /**
     * 根据URL得到HttpURLConnection的输入流
     * @param urlStr 代表url的字符串
     * @return 返回一个输入流
     * @throws MalformedURLException, IOException
     */
    public InputStream getInputStreamFromUrl(String urlStr)
            throws MalformedURLException, IOException {
        //通过传入的urlStr字符串对象创建一个URL对象
        url = new URL(urlStr);
        //通过创建的URL对象创建一个Http连接
        HttpURLConnection urlConn = (HttpURLConnection)url.openConnection();
        //通过Http连接得到一个输入流
        InputStream input = urlConn.getInputStream();
        return input;
    }
}

