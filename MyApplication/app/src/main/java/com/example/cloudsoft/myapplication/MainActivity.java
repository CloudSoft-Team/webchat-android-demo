package com.example.cloudsoft.myapplication;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.List;

import chat.icloudsoft.userwebchatlib.data.bean.PropertyBean;
import chat.icloudsoft.userwebchatlib.ui.activity.SessionDetailsActivity;

public class MainActivity extends AppCompatActivity {
    // 自定义字段的KEY
    public final static String CUSTOM_KEY_001 = "CUSTOMTEXT001";
    public final static String CUSTOM_KEY_116 = "CUSTOMTEXT116";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


    }

    public void onClickLightCustom(View view) {
        List<PropertyBean> list = new ArrayList<>();
        PropertyBean bean1 = new PropertyBean();
        bean1.key = CUSTOM_KEY_001;
        bean1.value = "hello";
        PropertyBean bean2 = new PropertyBean();
        bean2.key = CUSTOM_KEY_116;
        bean2.value = "https://www.baidu.com/";
        list.add(bean1);
        list.add(bean2);
        String params = new Gson().toJson(list);
        Intent it = new Intent(MainActivity.this, SessionDetailsActivity.class);
        it.putExtra("params", params);
//      it.putExtra("hostNum","2809");//sandairen
        it.putExtra("hostNum", "jKU4fm");//10057
//        it.putExtra("hostNum", "WdacF6");//10057
//      it.putExtra("hostNum","2716");//beijing
        it.putExtra("custId", "eflkqjw");
//      it.putExtra("custId",DEVICE_ID);
        it.putExtra("imUserNick", "Lucky");
        it.putExtra("phone", "123578399");
//      it.putExtra("MessageFlag","1");
//      it.putExtra("strIMUserheadimgurl","http://112.124.37.196:7006/UF/customavatars/000/00/35/73_avatar_middle.jpg");
        startActivity(it);

    }
}
