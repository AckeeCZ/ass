# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in <sdk location>/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

#-printmapping ..\outputs\mapping.txt

-optimizationpasses 5
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** e(...);
    public static *** i(...);
    public static *** v(...);
    public static *** w(...);
}

-keepclassmembers class * { public <init>(android.content.Context); }

-keepattributes *Annotation*
-keepattributes Signature

-keep class com.google.gson.** { *; }
-keep class com.google.inject.** { *; }
-keep class org.apache.http.** { *; }
-keep class javax.inject.** { *; }
-keep class retrofit.** { *; }


-dontwarn com.google.appengine.**
-dontwarn java.nio.**
-dontwarn rx.**
-dontwarn javax.**

-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable

-keep public class javax.net.ssl.**
-keepclassmembers public class javax.net.ssl.** {
  *;
}

-keep public class org.apache.http.**
-keepclassmembers public class org.apache.http.** {
  *;
}

#google maps
-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}

-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}

-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}

-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

#retrofit
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keepattributes Signature
-keepattributes Exceptions

#okhttp
-dontwarn okio.**
-dontwarn okhttp3.internal.platform.*

#picasso
-dontwarn com.squareup.picasso.OkHttpDownloader

# Dagger Android
-dontwarn com.google.errorprone.annotations.**

#keep classes that have to stay unchanged because of reflection (gson, animations, ...)
#TODO add app specific packages


