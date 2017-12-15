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

  #忽略警告
  -ignorewarning

# Retrofit
-dontnote retrofit2.Platform
-dontnote retrofit2.Platform$IOS$MainThreadExecutor
-dontwarn retrofit2.Platform$Java8
-keepattributes Signature
-keepattributes Exceptions

# okhttp
-dontwarn okio.**



  ##记录生成的日志数据,gradle build时在本项目根目录输出##

  #apk 包内所有 class 的内部结构
#  -dump class_files.txt
#  #未混淆的类和成员
#  -printseeds seeds.txt
#  #列出从 apk 中删除的代码
#  -printusage unused.txt
#  #混淆前后的映射
#  -printmapping mapping.txt
#
#  ########记录生成的日志数据，gradle build时 在本项目根目录输出-end######
#
#
#  #####混淆保护自己项目的部分代码以及引用的第三方jar包library#######
#
#  #-libraryjars libs/umeng-analytics-v5.2.4.jar
#
#  #三星应用市场需要添加:sdk-v1.0.0.jar,look-v1.0.1.jar
#  #-libraryjars libs/sdk-v1.0.0.jar
#  #-libraryjars libs/look-v1.0.1.jar
#  -keep class org.json.** { *; }
#  -keep class de.tavendo.autobahn.** { *; }
#  #-keep class org.codehaus.jackson.** { *; }
#  -keep class com.nineoldandroids.** { *; }
#  -keep class org.dom4j.** { *; }
##-libraryjars libs/autobahn-0.5.0.jar
##-libraryjars libs/jackson-core-asl-1.9.7.jar
##-libraryjars libs/jackson-mapper-asl-1.9.7.jar
##-libraryjars libs/nineoldandroids-2.4.0.jar
##-libraryjars libs/android-xml-json.jar
#  #如果不想混淆 keep 掉
#  -keep class com.lippi.recorder.iirfilterdesigner.** {*; }
#  #项目特殊处理代码
#
# #忽略警告
# -dontwarn com.lippi.recorder.utils**
# #保留一个完整的包
# -keep class com.lippi.recorder.utils.** {
#     *;
#  }
#
# -keep class  com.lippi.recorder.utils.AudioRecorder{*;}
#
#
# #如果引用了v4或者v7包
# -dontwarn android.support.**
# -dontwarn org.dom4j.**
# -dontwarn org.codehaus.jackson.**
# ####混淆保护自己项目的部分代码以及引用的第三方jar包library-end####
#
# -keep public class * extends android.view.View {
#     public <init>(android.content.Context);
#     public <init>(android.content.Context, android.util.AttributeSet);
#     public <init>(android.content.Context, android.util.AttributeSet, int);
#     public void set*(...);
# }
#
#            #保持 native 方法不被混淆
##           -keepclasseswithmembernames class * {
##               native <methods>;
##           }
#
#            # Keep names - Native method names. Keep all native class/method names.
#            -keepclasseswithmembers,allowshrinking class * {
#                native <methods>;
#            }
#
#            #保持自定义控件类不被混淆
#            -keepclasseswithmembers class * {
#                public <init>(android.content.Context, android.util.AttributeSet);
#            }
#
#            #保持自定义控件类不被混淆
#            -keepclassmembers class * extends android.app.Activity {
#               public void *(android.view.View);
#            }
#
#            #保持 Parcelable 不被混淆
#            -keep class * implements android.os.Parcelable {
#              public static final android.os.Parcelable$Creator *;
#            }
#
#            #保持 Serializable 不被混淆
#            -keepnames class * implements java.io.Serializable
#
#            #保持 Serializable 不被混淆并且enum 类也不被混淆
#            -keepclassmembers class * implements java.io.Serializable {
#                static final long serialVersionUID;
#                private static final java.io.ObjectStreamField[] serialPersistentFields;
#                !static !transient <fields>;
#                !private <fields>;
#                !private <methods>;
#                private void writeObject(java.io.ObjectOutputStream);
#                private void readObject(java.io.ObjectInputStream);
#                java.lang.Object writeReplace();
#                java.lang.Object readResolve();
#            }
#
#            #保持枚举 enum 类不被混淆 如果混淆报错，建议直接使用上面的 -keepclassmembers class * implements java.io.Serializable即可
#            #-keepclassmembers enum * {
#            #  public static **[] values();
#            #  public static ** valueOf(java.lang.String);
#            #}
#
#            -keepclassmembers class * {
#                public void *ButtonClicked(android.view.View);
#            }
#
#            #不混淆资源类
#            -keepclassmembers class **.R$* {
#                public static <fields>;
#            }