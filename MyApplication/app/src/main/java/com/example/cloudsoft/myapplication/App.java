package com.example.cloudsoft.myapplication;

import android.app.Application;

import chat.icloudsoft.userwebchatlib.utils.AppUtil;

/**
 * Created by mySAAS on 2017/12/7.
 */

public class App extends Application {

    public static  String BASE_URL = "ws://u.im-cc.com:17998/httpif";
    public static  String UPLOAD_URL = "http://uccfile.im-cc.com/";//文件上传的url测试
    public static  String DOWNLOAD_URL = "http://uccfile.im-cc.com/download/";//文件下载的url

    @Override
    public void onCreate() {
        super.onCreate();
        AppUtil.init(this, BASE_URL, DOWNLOAD_URL, UPLOAD_URL);
    }
}
