# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
-keep class chat.icloudsoft.**{*;}

##指定代码的压缩级别
#  -optimizationpasses 5
#
#  #包明不混合大小写
#  -dontusemixedcaseclassnames
#
#  #不去忽略非公共的库类
#  -dontskipnonpubliclibraryclasses
#
#   #优化  不优化输入的类文件
#  -dontoptimize
#
#   #不做预校验
#  -dontpreverify
#
#   #混淆时是否记录日志
#  -verbose
#
#   # 混淆时所采用的算法
#  -optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
#
#  #保护注解
#  -keepattributes *Annotation*

#  # 保持哪些类不被混淆
#  -keep public class * extends android.app.Fragment
#  -keep public class * extends android.support.v7.app.AppCompatActivity
#  -keep public class * extends android.app.Activity
#  -keep public class * extends android.app.Application
#  -keep public class * extends android.app.Service
#  -keep public class * extends android.content.BroadcastReceiver
#  -keep public class * extends android.content.ContentProvider
#  -keep public class * extends android.app.backup.BackupAgentHelper
#  -keep public class * extends android.preference.Preference
#  -keep public class com.android.vending.licensing.ILicensingService
#  -keep public class chat.icloudsoft.userwebchatlib.data.bean.**{*;}
#  -keep public class chat.icloudsoft.userwebchatlib.utils.**{*;}
#  -keep public class chat.icloudsoft.userwebchatlib.data.callback.**{*;}
#  -keep public class chat.icloudsoft.userwebchatlib.ui.activity.**{*;}
#  -keep public class chat.icloudsoft.userwebchatlib.ui.session.**{*;}
#  -keep interface chat.icloudsoft.userwebchatlib.ui.session.**{*;}
#  -keep public class chat.icloudsoft.userwebchatlib.ui.session.SessionContract.Presenter {*;}
#  -keep public class chat.icloudsoft.userwebchatlib.ui.session.SessionContract.View {*;}
#  -keep interface * extends chat.icloudsoft.userwebchatlib.ui.base.BaseView
##  -keep interface * extends chat.icloudsoft.userwebchatlib.ui.base.BasePresenter
#  -keep public class chat.icloudsoft.userwebchatlib.ui.fragment.**{*;}
#  #如果有引用v4包可以添加下面这行
#  -keep public class * extends android.support.v4.app.Fragment

# icloudsoft
-keep class chat.icloudsoft.**{*;}
-dontwarn chat.icloudsoft.**

-keep class com.nineoldandroids.**{*;}

# tavendo
-keep class de.tavendo.autobahn.**{*;}
-dontwarn de.tavendo.**

# dom4j
-keep class org.dom4j.** { *; }
-dontwarn org.dom4j.**

# retrofit
-dontwarn okio.**
-dontwarn javax.annotation.**
-dontwarn com.fasterxml.**
-dontwarn retrofit2.**

# picasso
-dontwarn com.squareup.okhttp.**

-keep class org.json.** { *; }