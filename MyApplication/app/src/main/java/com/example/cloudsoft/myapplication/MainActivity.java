package com.example.cloudsoft.myapplication;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.support.v4.app.NotificationCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import android.util.Log;
import android.view.View;
import android.widget.Toast;

import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.List;

import chat.icloudsoft.userwebchatlib.data.bean.PropertyBean;
import chat.icloudsoft.userwebchatlib.data.callback.MessCallBack;
import chat.icloudsoft.userwebchatlib.ui.activity.SessionDetailsActivity;
import chat.icloudsoft.userwebchatlib.utils.MessageNotifyUtils;

public class MainActivity extends AppCompatActivity {
    // 自定义字段的KEY
    public final static String CUSTOM_KEY_001 = "CUSTOMTEXT001";
    public final static String CUSTOM_KEY_116 = "CUSTOMTEXT116";

    public final static String TAG = "MainActivity";

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
        it.putExtra("params", params); // 自定义字段
        it.putExtra("hostNum", "jKU4fm");// webchat 接入号
        it.putExtra("custId", "eflkqjw"); // 用户标识id
        it.putExtra("imUserNick", "Lucky");// 用户昵称
        it.putExtra("MessageFlag", "1"); // 接收未读消息
        it.putExtra("strIMUserheadimgurl","http://112.124.37.196:7006/UF/customavatars/000/00/35/73_avatar_middle.jpg");
        startActivity(it);
    }

    @Override
    protected void onResume() {
        super.onResume();

        MessageNotifyUtils.getMessCallBack(new MessCallBack<String>() {
            @Override
            public void onSuccess(String result) {
                Log.d(TAG, "result : " + result);
                Toast.makeText(MainActivity.this, ""+result, Toast.LENGTH_SHORT).show();
            }
        });
    }
}
