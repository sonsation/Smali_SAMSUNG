.class public Lcom/sec/android/app/camera/util/ContextProviderUtils;
.super Ljava/lang/Object;
.source "ContextProviderUtils.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final BEAUTY_LARGE_EYES:Ljava/lang/String; = "Z112"

.field public static final BEAUTY_LEVEL:Ljava/lang/String; = "Z021"

.field public static final BEAUTY_SLIM_FACE:Ljava/lang/String; = "Z113"

.field public static final BEAUTY_SPOT_LIGHT:Ljava/lang/String; = "Z114"

.field public static final BURST_MAX_COUNT:Ljava/lang/String; = "0005"

.field private static final CAMERA_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.camera"

.field public static final CAMERA_RESOLUTION_FRONT:Ljava/lang/String; = "Z090"

.field public static final CAMERA_RESOLUTION_REAR:Ljava/lang/String; = "Z089"

.field public static final CAPTURE_FRONT:Ljava/lang/String; = "Front"

.field public static final CAPTURE_METHOD_FRONT:Ljava/lang/String; = "G003"

.field public static final CAPTURE_METHOD_REAR:Ljava/lang/String; = "G001"

.field public static final CAPTURE_REAR:Ljava/lang/String; = "Rear"

.field public static final COVER_MODE:Ljava/lang/String; = "Z030"

.field public static final COVER_PHOTO:Ljava/lang/String; = "Photo"

.field public static final COVER_VIDEO:Ljava/lang/String; = "Video"

.field public static final DETECTED_FACE:Ljava/lang/String; = "G018"

.field public static final EFFECT_COUNT:Ljava/lang/String; = "G015"

.field public static final EFFECT_MENU:Ljava/lang/String; = "G014"

.field public static final EFFECT_NAME_DUAL_IMAGE:Ljava/lang/String; = "Z119"

.field public static final EFFECT_NAME_DUAL_VIDEO:Ljava/lang/String; = "Z120"

.field public static final EFFECT_NAME_FRONT:Ljava/lang/String; = "Z029"

.field public static final EFFECT_NAME_REAR:Ljava/lang/String; = "Z028"

.field public static final EFFECT_REORDER:Ljava/lang/String; = "G013"

.field public static final EXPOSURE_METER:Ljava/lang/String; = "Z141"

.field private static final FEATURE:Ljava/lang/String; = "feature"

.field public static final FLASH_FRONT:Ljava/lang/String; = "Z106"

.field public static final FLASH_MODE:Ljava/lang/String; = "Z118"

.field public static final FLASH_MODE_FRONT:Ljava/lang/String; = "Z082"

.field public static final FLASH_REAR:Ljava/lang/String; = "Z107"

.field public static final FOOD_BLUR_TYPE:Ljava/lang/String; = "Z102"

.field public static final FOOD_LEVEL:Ljava/lang/String; = "Z103"

.field public static final FRONT_BV:Ljava/lang/String; = "G017"

.field public static final HDR:Ljava/lang/String; = "Z087"

.field public static final MODE_EFFECT_PAGE_NAVIGATORS_ENTER:Ljava/lang/String; = "G011"

.field public static final MODE_EFFECT_SWIPE_ENTER:Ljava/lang/String; = "G012"

.field public static final MOTION_PANORAMA_MODE:Ljava/lang/String; = "Z143"

.field public static final MOTION_PANORAMA_MODE_SETTING:Ljava/lang/String; = "Z145"

.field public static final MOTION_PHOTO:Ljava/lang/String; = "Z130"

.field public static final OBJECT_TRACKING_AF:Ljava/lang/String; = "Z067"

.field public static final ORNETATION_FRONT_PICTURE:Ljava/lang/String; = "G023"

.field public static final ORNETATION_FRONT_VIDEO:Ljava/lang/String; = "G025"

.field public static final ORNETATION_REAR_PICTURE:Ljava/lang/String; = "G024"

.field public static final ORNETATION_REAR_VIDEO:Ljava/lang/String; = "G026"

.field public static final PICTURE_FORMAT:Ljava/lang/String; = "Z060"

.field public static final QR_CODE_DETECTION:Ljava/lang/String; = "Z133"

.field public static final REAR_BEAUTY_LEVEL:Ljava/lang/String; = "G005"

.field public static final REAR_BV:Ljava/lang/String; = "G016"

.field public static final RECORDING_MOTION_SPEED:Ljava/lang/String; = "Z110"

.field public static final RECORDING_SNAPSHOT:Ljava/lang/String; = "RECORDING_SNAPSHOT"

.field public static final RECORDING_STOP_FRONT:Ljava/lang/String; = "Z101"

.field public static final RECORDING_STOP_REAR:Ljava/lang/String; = "Z100"

.field public static final RECORDING_ZOOM_VALUE:Ljava/lang/String; = "G022"

.field private static final SETTING_OPTION:Ljava/lang/String; = "extra"

.field public static final SHOOTING_MODE_NAME_FRONT:Ljava/lang/String; = "Z002"

.field public static final SHOOTING_MODE_NAME_REAR:Ljava/lang/String; = "Z001"

.field public static final TAG:Ljava/lang/String; = "ContextProviderUtils"

.field public static final TIMER:Ljava/lang/String; = "G010"

.field public static final TOUCH_AE_LOCKED:Ljava/lang/String; = "Z068"

.field public static final TOUCH_EV_CHANGED:Ljava/lang/String; = "Z069"

.field private static final VALUE:Ljava/lang/String; = "value"

.field public static final VIDEO_STABILIZATION:Ljava/lang/String; = "Z070"

.field public static final ZOOM_VALUE:Ljava/lang/String; = "Z066"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptureMethodString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CAPTURE_METHOD_BUTTON"

    goto :goto_0

    :pswitch_1
    const-string v0, "CAPTURE_METHOD_VOICE_COMMAND"

    goto :goto_0

    :pswitch_2
    const-string v0, "CAPTURE_METHOD_Volume key"

    goto :goto_0

    :pswitch_3
    const-string v0, "CAPTURE_METHOD_SCREEN_TOUCH"

    goto :goto_0

    :pswitch_4
    const-string v0, "CAPTURE_METHOD_PALM_DETECTION"

    goto :goto_0

    :pswitch_5
    const-string v0, "CAPTURE_METHOD_HRM_SHUTTER"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getCurrentDateTime()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMultipleStatusSet([Ljava/lang/String;[Ljava/lang/String;)[Landroid/content/ContentValues;
    .locals 5

    array-length v2, p0

    new-array v0, v2, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    const-string v3, "app_id"

    const-string v4, "com.sec.android.app.camera"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, v0, v1

    const-string v3, "feature"

    aget-object v4, p0, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, v0, v1

    const-string v3, "extra"

    aget-object v4, p1, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ContextProviderUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status feature ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ContextProviderUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status extra ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "ContextProviderUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Feature ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ContextProviderUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-eqz v1, :cond_1

    const-string v1, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v1, "ContextProviderUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Feature ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ContextProviderUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ContextProviderUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
