.class public Lcom/samsung/android/os/SemPerfManager;
.super Ljava/lang/Object;
.source "SemPerfManager.java"


# static fields
.field public static final AMS_RESUME_BOOST_TYPE_ACQUIRE:I = 0x1

.field public static final AMS_RESUME_BOOST_TYPE_RELEASE:I = 0x2

.field public static final AMS_RESUME_BOOST_TYPE_TAIL:I = 0x3

.field static final BASE_MODEL:Ljava/lang/String; = "zl"

.field static BOARD_PLATFORM:Ljava/lang/String; = null

.field public static final COMMAND_ACTIVITY_EXECUTION:Ljava/lang/String; = "EXEC_ACTIVITY"

.field public static final COMMAND_BROWSER_DASH_MODE:Ljava/lang/String; = "SBROWSER_DASH_MODE"

.field public static final COMMAND_BROWSER_PAGE_LOADING:Ljava/lang/String; = "SBROWSER_PAGE_LOADING"

.field public static final COMMAND_BUS_DCVS_GOVERNOR_CHANGE:Ljava/lang/String; = "BUS_DCVS_GOVERNOR"

.field public static final COMMAND_FINGER_HOVER_OFF:Ljava/lang/String; = "FINGER_HOVER_OFF"

.field public static final COMMAND_FINGER_HOVER_ON:Ljava/lang/String; = "FINGER_HOVER_ON"

.field public static final COMMAND_GENERAL_SHELL:Ljava/lang/String; = "GENERAL_SHELL"

.field public static final COMMAND_GESTURE_DETECTED:Ljava/lang/String; = "GESTURE_DETECTED"

.field public static final COMMAND_HOVERING_EVENT:Ljava/lang/String; = "HOVERING_EVENT"

.field public static final COMMAND_REQUEST_CACHE_DROP:Ljava/lang/String; = "REQ_DROP_CACHE"

.field public static final COMMAND_SAMSUNG_SIP:Ljava/lang/String; = "KNOWN_APP_SIP"

.field public static final COMMAND_SCREEN_ROTATION:Ljava/lang/String; = "TYPE_WINDOW_ORIENTATION"

.field public static final COMMAND_SCROLL:Ljava/lang/String; = "TYPE_SCROLL"

.field public static final COMMAND_SMOOTH_SCROLL:Ljava/lang/String; = "SMOOTH_SCROLL"

.field public static final COMMAND_SUSTAINED_PERF:Ljava/lang/String; = "SUSTAINED_PERF"

.field public static final COMMAND_USB_TETHERING:Ljava/lang/String; = "USBTETHERING"

.field public static final COMMAND_VR_MODE:Ljava/lang/String; = "VR_MODE"

.field static final DEVICE_TYPE:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SemPerfManager"

.field static final ROTATION_BOOSTING_TIMEOUT:I = 0x1f4

.field static final ROTATION_GPU_BOOSTING_TIMEOUT:I = 0x7d0

.field static final SIOP_MODEL:Ljava/lang/String; = "ssrm_zlf_xx"

.field private static volatile mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

.field private static volatile mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

.field static volatile sCfmsService:Landroid/os/ICustomFrequencyManager;

.field static sIsDebugLevelHigh:Z


# instance fields
.field mSupportedCPUCoreNum:[I

.field mSupportedCPUCoreNumForSSRM:[I

.field mSupportedCPUFrequency:[I

.field mSupportedCPUFrequencyForSSRM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 18
    const-string/jumbo v0, "0x4948"

    .line 19
    const-string/jumbo v1, "ro.debug_level"

    const-string/jumbo v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/os/SemPerfManager;->sIsDebugLevelHigh:Z

    .line 119
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->BOARD_PLATFORM:Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->DEVICE_TYPE:Ljava/lang/String;

    .line 195
    sput-object v3, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    .line 196
    sput-object v3, Lcom/samsung/android/os/SemPerfManager;->mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 234
    sput-object v3, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 16
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUCoreNum:[I

    .line 122
    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUCoreNumForSSRM:[I

    .line 123
    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUFrequency:[I

    .line 124
    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUFrequencyForSSRM:[I

    .line 128
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 273
    sget-boolean v0, Lcom/samsung/android/os/SemPerfManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    return-void
.end method

.method public static onActivityResumeEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 201
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_0

    .line 203
    const/16 v1, 0x17

    .line 202
    invoke-static {p0, p1, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    .line 205
    :cond_0
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_1

    .line 207
    const-string/jumbo v1, "AMS_RESUME_TAIL_CSTATE"

    const/16 v2, 0x15

    .line 206
    invoke-static {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 210
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 227
    :try_start_0
    const-string/jumbo v1, "SemPerfManager"

    const-string/jumbo v2, "onActivityResumeEvent:: type is not defined"

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemPerfManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_2
    :goto_0
    return-void

    .line 212
    :pswitch_0
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_2

    .line 213
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_2

    .line 218
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    goto :goto_0

    .line 222
    :pswitch_2
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_2

    .line 223
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static onScrollEvent(Z)V
    .locals 2
    .param p0, "isScroll"    # Z

    .prologue
    .line 239
    const-string/jumbo v1, "TYPE_SCROLL"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "TRUE"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 239
    :cond_0
    const-string/jumbo v0, "FALSE"

    goto :goto_0
.end method

.method public static onSmoothScrollEvent(Z)V
    .locals 2
    .param p0, "isScroll"    # Z

    .prologue
    .line 245
    const-string/jumbo v1, "SMOOTH_SCROLL"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "TRUE"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void

    .line 245
    :cond_0
    const-string/jumbo v0, "FALSE"

    goto :goto_0
.end method

.method public static sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 256
    :try_start_0
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 257
    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 258
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 259
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 262
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    .line 263
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p0, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
