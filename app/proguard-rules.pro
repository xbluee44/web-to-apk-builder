# WebToAPK Builder
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keep class **.MainActivity { *; }
