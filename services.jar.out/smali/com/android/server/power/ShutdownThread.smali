.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$1;,
        Lcom/android/server/power/ShutdownThread$2;,
        Lcom/android/server/power/ShutdownThread$3;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/power/ShutdownThread$ExtractColor;,
        Lcom/android/server/power/ShutdownThread$Led;,
        Lcom/android/server/power/ShutdownThread$LogFileWriter;,
        Lcom/android/server/power/ShutdownThread$Slog;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field public static final AUDIT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.audit_safemode"

.field private static final BIN_TYPE_PRODUCTSHIP:Z

.field private static final BIN_TYPE_USER:Z

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final FORCE_SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.property_forcedshutdown"

.field private static final LedOffValue:I = 0x6

.field private static final LedOnValue:I = 0x6

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MINIMODE_SLEEP_TIME:I = 0x12c

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static M_STYLE_CONFIRM:Z = false

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final POWER_CONNECTED:I = 0x1

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REASON_NO_POWER:Ljava/lang/String; = "no power"

.field private static final REASON_SILENT:Ljava/lang/String; = "silent.sec"

.field private static final REBOOT_CHARGERMODE_PROPERTY:Ljava/lang/String; = "ro.rebootchargermode"

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static final RMT_SYNC_PROP:Ljava/lang/String; = "storage.efs_sync.done"

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TIMEOUT_EXTENDS_RATIO:I = 0x8

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static buttonView:Landroid/widget/LinearLayout;

.field private static coverOpen:Z

.field private static final delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static dlgAnim:Lcom/android/server/power/ShutdownDialog;

.field private static fadeoutView:Landroid/widget/RelativeLayout;

.field private static mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private static mOemClassLoader:Ldalvik/system/PathClassLoader;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mRebootUpdate:Z

.field private static mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private static mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private static mTts:Landroid/speech/tts/TextToSpeech;

.field private static m_rebootByBixby:Z

.field private static m_shutdownByBixby:Z

.field private static rootView:Landroid/widget/RelativeLayout;

.field private static sConfirmDialog:Landroid/app/Dialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static s_Context:Landroid/content/Context;


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get11()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic -get12()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    return v0
.end method

.method static synthetic -get14()Landroid/content/BroadcastReceiver;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get15()Landroid/speech/tts/TextToSpeech;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic -get16()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    return v0
.end method

.method static synthetic -get17()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    return v0
.end method

.method static synthetic -get18()Landroid/widget/RelativeLayout;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get19()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    return v0
.end method

.method static synthetic -get20()Lcom/android/server/power/ShutdownThread;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -get21()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3()Landroid/widget/LinearLayout;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return v0
.end method

.method static synthetic -get5()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic -get6()Lcom/android/server/power/ShutdownDialog;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    return-object v0
.end method

.method static synthetic -get7()Landroid/widget/RelativeLayout;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9()Lcom/samsung/android/cover/CoverManager$StateListener;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return p0
.end method

.method static synthetic -set2(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic -set3(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic -set4(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/cover/CoverState;)Z
    .locals 1
    .param p0, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2()V
    .locals 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->animateDismiss()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap4()V
    .locals 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->initBixbyVariables()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->runConfirm(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 183
    const-string/jumbo v1, "user"

    const-string/jumbo v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    .line 184
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    .line 188
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 189
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 190
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    .line 225
    new-instance v1, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 227
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 228
    const/4 v4, 0x4

    .line 227
    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 229
    const/16 v4, 0xd

    .line 227
    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 231
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 249
    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "scafe":Ljava/lang/String;
    const-string/jumbo v1, "americano"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mocha"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_1
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    .line 253
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    .line 258
    sput-object v5, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    .line 259
    sput-object v5, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    .line 260
    sput-object v5, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    .line 261
    sput-object v5, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    .line 262
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    .line 263
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    .line 267
    sput-object v5, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 528
    new-instance v1, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    new-instance v1, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    .line 1106
    new-instance v1, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 157
    return-void

    .end local v0    # "scafe":Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 184
    goto :goto_0

    .restart local v0    # "scafe":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 250
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 270
    const-string/jumbo v0, "ShutdownThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public static IsShutDownConfirming()Z
    .locals 1

    .prologue
    .line 2169
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return v0
.end method

.method public static IsShutDownStarted()Z
    .locals 2

    .prologue
    .line 2160
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_0

    .line 2161
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "shut down already running , return true"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    const/4 v0, 0x1

    return v0

    .line 2164
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static animateDismiss()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 1012
    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1013
    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1014
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$6;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1011
    :goto_0
    return-void

    .line 1023
    :cond_0
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "ButtonView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 1272
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 1273
    :try_start_0
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 1274
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v6, "!@Shutdown sequence already running, returning."

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 1275
    return-void

    .line 1277
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 1279
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->startState()V

    .line 1280
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->openLogFileWriter()V

    .line 1281
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@beginShutdownSequence"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    .line 1288
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1289
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1288
    if-eqz v4, :cond_3

    .line 1290
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1291
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1292
    if-eqz p1, :cond_5

    const/4 v3, 0x1

    .line 1293
    .local v3, "powerofftriggered":I
    :goto_0
    const-string/jumbo v4, "powerofftriggered"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1295
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1296
    const-string/jumbo v4, "isShutDownForRCS"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1298
    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1302
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "powerofftriggered":I
    :cond_3
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 1303
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 1306
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1308
    :try_start_2
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 1309
    const-string/jumbo v6, "ShutdownThread-cpu"

    const/4 v7, 0x1

    .line 1308
    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1310
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1311
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1317
    :goto_1
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1319
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string/jumbo v4, "shutdown"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1323
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1325
    :try_start_3
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 1326
    const-string/jumbo v6, "ShutdownThread-screen"

    const/16 v7, 0x1a

    .line 1325
    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1327
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1328
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1335
    :cond_4
    :goto_2
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@normal"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string/jumbo v4, "recovery-update"

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1337
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startRecoveryDialog(Landroid/content/Context;)V

    .line 1341
    :goto_3
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startShutdownThread()V

    .line 1271
    return-void

    .line 1272
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1292
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "powerofftriggered":I
    goto/16 :goto_0

    .line 1312
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "powerofftriggered":I
    :catch_0
    move-exception v1

    .line 1313
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1314
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 1329
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_1
    move-exception v1

    .line 1330
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1331
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    .line 1339
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_6
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    goto :goto_3
.end method

.method private static blackMiniModeBar(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 1178
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :goto_0
    invoke-static {p0, v4, v4}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    .line 1176
    return-void

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method public static canGlobalActionsShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2155
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownConfirming()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x0

    .line 776
    if-nez p0, :cond_0

    .line 777
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v5, "captureScreen() : mContext is NULL!!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-object v14

    .line 782
    :cond_0
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 783
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 785
    .local v10, "mDisplay":Landroid/view/Display;
    invoke-virtual {v10, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 788
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 789
    .local v13, "screenWidth":I
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 792
    .local v12, "screenHeight":I
    move v1, v13

    .line 793
    .local v1, "lcdWidth":I
    move v2, v12

    .line 795
    .local v2, "lcdHeight":I
    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 796
    .local v7, "currentRotation":I
    packed-switch v7, :pswitch_data_0

    .line 807
    :goto_0
    :pswitch_0
    const/4 v11, 0x0

    .line 808
    .local v11, "screenBitmap":Landroid/graphics/Bitmap;
    const/16 v3, 0x4e20

    .line 809
    .local v3, "minLayer":I
    const v4, 0x30d40

    .line 812
    .local v4, "maxLayer":I
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 817
    .end local v11    # "screenBitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v11, :cond_1

    .line 818
    const-string/jumbo v0, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "captureScreen : Could not capture the screen! screenBitmap == null, lcdWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " lcdHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-object v14

    .line 799
    .end local v3    # "minLayer":I
    .end local v4    # "maxLayer":I
    :pswitch_1
    move v1, v12

    .line 800
    move v2, v13

    .line 801
    goto :goto_0

    .line 813
    .restart local v3    # "minLayer":I
    .restart local v4    # "maxLayer":I
    .restart local v11    # "screenBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 814
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "captureScreen : failed to access screenshot API : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 822
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "screenBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v11

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z
    .locals 2
    .param p0, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 465
    if-nez p0, :cond_0

    .line 466
    const/4 v1, 0x1

    return v1

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 469
    .local v0, "coverState":Z
    return v0
.end method

.method private static createBeforeMConfirmDialog(Landroid/content/Context;IILcom/android/server/power/ShutdownThread$CloseDialogReceiver;)Landroid/app/Dialog;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "titleText"    # I
    .param p2, "bodyText"    # I
    .param p3, "closer"    # Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    .prologue
    .line 1032
    const/4 v4, 0x2

    .line 1033
    .local v4, "coverType":I
    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 1034
    .local v2, "coverManager":Lcom/samsung/android/cover/CoverManager;
    if-eqz v2, :cond_0

    .line 1035
    sget-object v9, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v9}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 1036
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    .line 1037
    .local v3, "coverState":Lcom/samsung/android/cover/CoverState;
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z

    move-result v9

    sput-boolean v9, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    .line 1038
    if-eqz v3, :cond_0

    .line 1039
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    .line 1044
    .end local v3    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_0
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v9, :cond_2

    .line 1045
    const v8, 0x10406f3

    .line 1050
    .local v8, "positiveTextId":I
    :goto_0
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v9, :cond_1

    const/16 v9, 0x8

    if-ne v4, v9, :cond_4

    .line 1053
    :cond_1
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v9, :cond_3

    const/16 v9, 0x8

    if-ne v4, v9, :cond_3

    .line 1054
    const-string/jumbo v9, "ShutdownThread"

    const-string/jumbo v10, "clear type confirm dialog"

    invoke-static {v9, v10}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const v9, 0x10304fa

    invoke-direct {v6, p0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1059
    .local v6, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    :goto_1
    invoke-virtual {v6, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1061
    new-instance v9, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v9, p0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Landroid/content/Context;)V

    .line 1060
    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1067
    new-instance v9, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v9}, Lcom/android/server/power/ShutdownThread$8;-><init>()V

    .line 1066
    const v10, 0x1040009

    invoke-virtual {v6, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1071
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1072
    .local v5, "dlg":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 1103
    .end local v6    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    :goto_2
    return-object v5

    .line 1047
    .end local v5    # "dlg":Landroid/app/Dialog;
    .end local v8    # "positiveTextId":I
    :cond_2
    const v8, 0x1040122

    .restart local v8    # "positiveTextId":I
    goto :goto_0

    .line 1057
    :cond_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x5

    invoke-direct {v6, p0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .restart local v6    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    goto :goto_1

    .line 1076
    .end local v6    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_4
    new-instance v7, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    invoke-direct {v7, p0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1077
    .local v7, "dlgBuilder":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
    invoke-virtual {v7, p2}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    .line 1078
    invoke-virtual {v7, p1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    .line 1080
    new-instance v9, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v9, p0}, Lcom/android/server/power/ShutdownThread$9;-><init>(Landroid/content/Context;)V

    .line 1079
    invoke-virtual {v7, v8, v9}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    .line 1087
    const v9, 0x1040009

    .line 1086
    invoke-virtual {v7, v9, p3}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    .line 1088
    invoke-virtual {v7}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->create()Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v1

    .line 1090
    .local v1, "coverDlg":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 1091
    const/16 v10, 0x833

    .line 1090
    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 1092
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x112000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1093
    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1095
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1097
    .local v0, "attr":Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x1

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1098
    const/4 v9, 0x0

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1099
    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1100
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    .line 1101
    move-object v5, v1

    .restart local v5    # "dlg":Landroid/app/Dialog;
    goto :goto_2
.end method

.method private static createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 474
    const v7, 0x10e004a

    .line 473
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 475
    .local v4, "longPressBehavior":I
    const-string/jumbo v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v6, :cond_1

    .line 478
    const v5, 0x104012f

    .line 488
    .local v5, "titleText":I
    :goto_0
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v6, :cond_3

    .line 489
    const v0, 0x1040130

    .line 508
    .local v0, "bodyText":I
    :goto_1
    new-instance v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 510
    .local v1, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v6, :cond_b

    .line 519
    :cond_0
    invoke-static {p0, v5, v0, v1}, Lcom/android/server/power/ShutdownThread;->createBeforeMConfirmDialog(Landroid/content/Context;IILcom/android/server/power/ShutdownThread$CloseDialogReceiver;)Landroid/app/Dialog;

    move-result-object v2

    .line 520
    .local v2, "dlg":Landroid/app/Dialog;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "createBeforeMConfirmDialog"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :goto_2
    iput-object v2, v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 523
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 524
    return-object v2

    .line 480
    .end local v0    # "bodyText":I
    .end local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v2    # "dlg":Landroid/app/Dialog;
    .end local v5    # "titleText":I
    :cond_1
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_2

    .line 481
    const v5, 0x10406f3

    .restart local v5    # "titleText":I
    goto :goto_0

    .line 483
    .end local v5    # "titleText":I
    :cond_2
    const v5, 0x1040137

    .restart local v5    # "titleText":I
    goto :goto_0

    .line 490
    :cond_3
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    if-eqz v6, :cond_5

    .line 491
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_4

    .line 492
    const v0, 0x10407e1

    .restart local v0    # "bodyText":I
    goto :goto_1

    .line 494
    .end local v0    # "bodyText":I
    :cond_4
    const v0, 0x10407e0

    .restart local v0    # "bodyText":I
    goto :goto_1

    .line 496
    .end local v0    # "bodyText":I
    :cond_5
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 498
    :cond_6
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_9

    .line 499
    if-ne v4, v9, :cond_8

    .line 500
    const v0, 0x10406f4

    .restart local v0    # "bodyText":I
    goto :goto_1

    .line 496
    .end local v0    # "bodyText":I
    :cond_7
    const-string/jumbo v6, "vzw"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 497
    const v0, 0x104088b

    .restart local v0    # "bodyText":I
    goto :goto_1

    .line 501
    .end local v0    # "bodyText":I
    :cond_8
    const v0, 0x10406dc

    .restart local v0    # "bodyText":I
    goto :goto_1

    .line 503
    .end local v0    # "bodyText":I
    :cond_9
    if-ne v4, v9, :cond_a

    .line 504
    const v0, 0x104012e

    .restart local v0    # "bodyText":I
    goto :goto_1

    .line 505
    .end local v0    # "bodyText":I
    :cond_a
    const v0, 0x104012d

    .restart local v0    # "bodyText":I
    goto :goto_1

    .line 511
    .restart local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_b
    invoke-static {p0, v5, v0}, Lcom/android/server/power/ShutdownThread;->createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;

    move-result-object v2

    .line 512
    .restart local v2    # "dlg":Landroid/app/Dialog;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "createMConfirmDialog"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 516
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private static createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "titleText"    # I
    .param p2, "description"    # I

    .prologue
    .line 563
    new-instance v0, Lcom/android/server/power/ShutdownThread$4;

    const v2, 0x1030011

    move-object v1, p0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$4;-><init>(Landroid/content/Context;ILandroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$4;->init()Landroid/app/Dialog;

    move-result-object v6

    .line 771
    .local v6, "dlg":Landroid/app/Dialog;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 772
    return-object v6
.end method

.method private static deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 12
    .param p0, "deviceShutdownClassName"    # Ljava/lang/String;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2115
    :try_start_0
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mOemClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v6, p0}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 2118
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v6, "rebootOrShutdown"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2119
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2134
    return v11

    .line 2123
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 2124
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@unchecked exception raised"

    invoke-static {v6, v7, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 2125
    return v10

    .line 2120
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 2121
    .local v4, "ex":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@call method fail rebootOrShutdown"

    invoke-static {v6, v7, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2122
    return v10

    .line 2130
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 2131
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@unchecked exception raised"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    return v10

    .line 2127
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 2128
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@can\'t found class"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    return v10
.end method

.method private static getReasonforshutdownFileName()Ljava/io/File;
    .locals 12

    .prologue
    const/16 v11, 0x1b0

    const/4 v10, -0x1

    .line 2200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2201
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2200
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2202
    const-string/jumbo v6, "/log/power_off_reset_reason.txt"

    .line 2200
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2203
    .local v2, "logFilename":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2204
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2203
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2205
    const-string/jumbo v6, "/log/power_off_reset_reason_backup.txt"

    .line 2203
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2207
    .local v1, "logBackupFileName":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2208
    .local v0, "fname":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2210
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2800

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 2211
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2212
    .local v3, "mBackupfname":Ljava/io/File;
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2215
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2217
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason_backup.txt delete fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    return-object v0

    .line 2222
    :cond_0
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2223
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "rename to power_off_reset_reason_backup.txt"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2225
    .local v4, "new_fname":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2226
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason.txt is re-created."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    return-object v4

    .line 2229
    .end local v4    # "new_fname":Ljava/io/File;
    :cond_1
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "rename to power_off_reset_reason_backup.txt fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    .end local v3    # "mBackupfname":Ljava/io/File;
    :cond_2
    return-object v0
.end method

.method public static hasTSafeLock(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 965
    const/4 v3, 0x0

    .line 966
    .local v3, "result":Z
    const-string/jumbo v0, "com.skt.t_smart_charge"

    .line 968
    .local v0, "TLOCK_PKG_NAME":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 969
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 970
    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 971
    .local v4, "tLock":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 976
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 971
    .restart local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 973
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 974
    .local v1, "ex":Ljava/lang/Exception;
    return v7
.end method

.method private static initBixbyVariables()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 542
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 543
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    .line 544
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    .line 545
    sput-object v0, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    .line 546
    sput-object v0, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    .line 547
    sput-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    .line 548
    sput-object v0, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    .line 541
    return-void
.end method

.method private static isConfirmAvailable(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x10407a9

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 911
    const-string/jumbo v6, "keyguard"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 912
    .local v2, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 914
    :goto_0
    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v6, "temp"

    aput-object v6, v3, v8

    .line 916
    .local v3, "mTempStringArray":[Ljava/lang/String;
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v6, :cond_0

    .line 917
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 920
    :cond_0
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isTSafeLock(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    if-eqz v6, :cond_5

    .line 926
    :cond_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isSKTCarrierLockPlusEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isFMMlocked()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 927
    :cond_2
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    if-eqz v6, :cond_6

    .line 932
    :cond_3
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 933
    .local v5, "message":Ljava/lang/String;
    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 935
    :goto_1
    return v8

    .line 912
    .end local v3    # "mTempStringArray":[Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .local v1, "mIsSecureKeyguard":Z
    goto :goto_0

    .line 921
    .end local v1    # "mIsSecureKeyguard":Z
    .restart local v3    # "mTempStringArray":[Ljava/lang/String;
    :cond_5
    const v6, 0x10407a6

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 922
    .restart local v5    # "message":Ljava/lang/String;
    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 923
    return v8

    .line 928
    .end local v5    # "message":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 929
    .restart local v5    # "message":Ljava/lang/String;
    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 938
    .end local v5    # "message":Ljava/lang/String;
    :cond_7
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v6, "true"

    aput-object v6, v4, v8

    .line 939
    .local v4, "mTrueStringArray":[Ljava/lang/String;
    const-string/jumbo v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v7, "isPowerOffAllowed"

    invoke-static {p0, v6, v7, v4}, Lcom/android/server/power/ShutdownThread;->isEDM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "false"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 940
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "power or restart : restricted by MDM "

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return v8

    .line 944
    :cond_8
    if-eqz v1, :cond_9

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v6, :cond_9

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    if-eqz v6, :cond_a

    .line 953
    :cond_9
    return v9

    .line 945
    :cond_a
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 946
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 947
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 948
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendBendedPendingIntent(Landroid/content/Context;)V

    .line 949
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 950
    return v8
.end method

.method public static isConfirmDialog()Z
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 336
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isEDM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;
    .param p3, "Arg"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 988
    const-string/jumbo v7, ""

    .line 989
    .local v7, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 990
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 991
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz p0, :cond_0

    .line 992
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string/jumbo v3, "temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1000
    .end local v6    # "cr":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 1002
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1003
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1005
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1008
    :cond_1
    return-object v7

    .line 995
    .restart local v6    # "cr":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    goto :goto_0

    .line 1004
    .end local v6    # "cr":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1005
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1004
    throw v0
.end method

.method private static isFMMlocked()Z
    .locals 2

    .prologue
    .line 980
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isPoweredPlugged()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1727
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1728
    .local v0, "f":Landroid/content/IntentFilter;
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1729
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v4, "plugged"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1730
    .local v2, "state":I
    if-ne v2, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isSKTCarrierLockPlusEnabled()Z
    .locals 2

    .prologue
    .line 984
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    return v0
.end method

.method private static isTSafeLock(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 957
    if-nez p0, :cond_0

    return v2

    .line 958
    :cond_0
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->hasTSafeLock(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 960
    :cond_1
    const-string/jumbo v0, "off_menu_setting"

    .line 961
    .local v0, "OFF_MENU_SETTING":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private static isTablet()Z
    .locals 2

    .prologue
    .line 2745
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2746
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2671
    const/16 v1, 0x3a

    .line 2673
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string/jumbo v0, "com.google.android.marvin.talkback"

    .line 2675
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2678
    .local v7, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2679
    const-string/jumbo v9, "enabled_accessibility_services"

    .line 2677
    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2680
    .local v6, "enabledServicesSetting":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 2681
    const-string/jumbo v6, ""

    .line 2684
    :cond_0
    move-object v2, v7

    .line 2685
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v7, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2686
    :cond_1
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2687
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 2688
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 2690
    .local v5, "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    .line 2691
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2692
    .local v4, "enabledPackage":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 2693
    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 2692
    if-eqz v8, :cond_1

    .line 2694
    const-string/jumbo v8, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 2692
    if-eqz v8, :cond_1

    .line 2695
    const/4 v8, 0x1

    return v8

    .line 2699
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledPackage":Ljava/lang/String;
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_2
    const/4 v8, 0x0

    return v8
.end method

.method private static needQcOemShutdown()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 2099
    const-string/jumbo v3, "ro.chipname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2100
    .local v1, "currentChip":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "8084"

    aput-object v3, v2, v4

    const-string/jumbo v3, "exynos"

    aput-object v3, v2, v7

    .line 2101
    .local v2, "skipList":[Ljava/lang/String;
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v2, v3

    .line 2102
    .local v0, "chip":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2103
    return v4

    .line 2101
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2106
    .end local v0    # "chip":Ljava/lang/String;
    :cond_1
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/oem-services.jar"

    .line 2107
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 2106
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v3, Lcom/android/server/power/ShutdownThread;->mOemClassLoader:Ldalvik/system/PathClassLoader;

    .line 2108
    return v7
.end method

.method private static needSyncQcRmtStorage()Z
    .locals 4

    .prologue
    .line 2075
    const-string/jumbo v2, "ro.hardware"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2076
    .local v0, "propHwNameValue":Ljava/lang/String;
    const-string/jumbo v2, "qcom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2077
    const-string/jumbo v2, "storage.efs_sync.done"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2078
    .local v1, "status":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2079
    const/4 v2, 0x1

    return v2

    .line 2082
    .end local v1    # "status":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static readSalesCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2734
    const-string/jumbo v1, ""

    .line 2736
    .local v1, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2737
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2738
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2741
    :cond_0
    :goto_0
    return-object v1

    .line 2740
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1216
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    return-void

    .line 1219
    :cond_0
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 1221
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 1222
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 1223
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 1224
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    .line 1225
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    .line 1226
    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 1215
    return-void
.end method

.method public static rebootByBixby(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 357
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    if-eqz v0, :cond_0

    .line 358
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "rebootByBixby confirm by reboot twice"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->shutdownConfirmByBixby(Z)V

    .line 356
    :goto_0
    return-void

    .line 362
    :cond_0
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rebootByBixby reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 364
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 365
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 366
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 367
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    .line 368
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    .line 370
    invoke-static {p0, v4, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1955
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@call oem shutdown..."

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const-string/jumbo v6, "ro.baseband"

    const-string/jumbo v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1958
    .local v0, "baseband":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->needSyncQcRmtStorage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1959
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->syncQcRmtStorage()V

    .line 1962
    :cond_0
    const-string/jumbo v1, "com.android.server.power.ShutdownOem"

    .line 1963
    .local v1, "className":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->needQcOemShutdown()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1, p1, p2}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1968
    :cond_1
    :goto_0
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@waitForAnimEnd"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    sget-object v6, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v6, :cond_2

    .line 1971
    sget-object v6, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    .line 1975
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "!@"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1976
    .local v3, "reasonLogString":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_5

    const-string/jumbo v6, "reboot : "

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    if-nez p2, :cond_6

    const-string/jumbo v6, "null"

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    const-string/jumbo v6, "ShutdownThread"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->waitIfTimeoutDumpWorking()V

    .line 1982
    if-eqz p1, :cond_7

    .line 1983
    const-string/jumbo v6, "poweroff_sound=suspend"

    invoke-static {v6}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1984
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    .line 1986
    :try_start_0
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    :cond_3
    :goto_3
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@Performing low-level shutdown..."

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    .line 2012
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    .line 1953
    return-void

    .line 1964
    .end local v3    # "reasonLogString":Ljava/lang/StringBuilder;
    :cond_4
    const-string/jumbo v1, "com.qti.server.power.ShutdownOem"

    .line 1965
    invoke-static {v1, p1, p2}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z

    goto :goto_0

    .line 1976
    .restart local v3    # "reasonLogString":Ljava/lang/StringBuilder;
    :cond_5
    const-string/jumbo v6, "shutdown : "

    goto :goto_1

    :cond_6
    move-object v6, p2

    .line 1977
    goto :goto_2

    .line 1987
    :catch_0
    move-exception v2

    .line 1988
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v6, v7, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_3

    .line 1990
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    if-eqz p0, :cond_3

    .line 1994
    new-instance v5, Landroid/os/SystemVibrator;

    invoke-direct {v5, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 1996
    .local v5, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v6, 0x1f4

    :try_start_1
    sget-object v8, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2004
    :goto_4
    const-wide/16 v6, 0x1f4

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 2005
    :catch_1
    move-exception v4

    .local v4, "unused":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 1997
    .end local v4    # "unused":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    .line 1999
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@Failed to vibrate during shutdown."

    invoke-static {v6, v7, v2}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_4
.end method

.method public static rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1249
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    return-void

    .line 1255
    :cond_0
    const-string/jumbo v1, "enterprise_policy"

    .line 1254
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1256
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1262
    :cond_1
    const-string/jumbo v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reboot safe reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", confirm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 1264
    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 1265
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 1266
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    .line 1267
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    .line 1268
    invoke-static {p0, p2, v4}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 1248
    return-void

    .line 1257
    :cond_2
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "safe mode is not allowed by IT admin"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 1237
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1238
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1239
    return-void

    .line 1242
    :cond_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1243
    return-void

    .line 1245
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1236
    return-void
.end method

.method private static restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sleep"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1186
    invoke-static {p0, v1, v1}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    .line 1187
    if-eqz p1, :cond_0

    .line 1189
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method private static runConfirm(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x12c

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3e2e147b    # 0.17f

    .line 888
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isConfirmAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 889
    return-void

    .line 892
    :cond_0
    const/16 v1, 0x12c

    .line 893
    .local v1, "duration":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 894
    sget-object v2, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    const/16 v4, 0x99

    const/16 v5, 0xff

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 895
    .local v0, "backgroundalpha":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v6, v6, v4, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 896
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 897
    new-instance v2, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 887
    return-void
.end method

.method public static saveReasonforshutdown(Ljava/lang/Exception;)V
    .locals 10
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 2173
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "ShutdownThread.saveReasonforshutdown"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReasonforshutdownFileName()Ljava/io/File;

    move-result-object v2

    .line 2175
    .local v2, "fname":Ljava/io/File;
    const/4 v4, 0x0

    .line 2177
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2178
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2179
    .local v6, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yy/MM/dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2180
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2181
    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2184
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 2185
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2189
    if-eqz v5, :cond_0

    .line 2191
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    .line 2172
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :cond_1
    :goto_1
    return-void

    .line 2192
    .restart local v0    # "dateString":Ljava/lang/String;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v1

    .line 2193
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2186
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 2189
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v4, :cond_1

    .line 2191
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2192
    :catch_2
    move-exception v1

    .line 2193
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2188
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    .line 2189
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v4, :cond_2

    .line 2191
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2188
    :cond_2
    :goto_4
    throw v7

    .line 2192
    :catch_3
    move-exception v1

    .line 2193
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2188
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 2186
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private static sendBendedPendingIntent(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1162
    const-string/jumbo v4, "keyguard"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 1164
    .local v2, "km":Landroid/app/KeyguardManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x8000000

    invoke-static {p0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1167
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1168
    .local v0, "fillInIntent":Landroid/content/Intent;
    const-string/jumbo v4, "afterKeyguardGone"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1170
    const-string/jumbo v4, "dismissType"

    const-string/jumbo v5, "shutdown"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "send secure lock intent"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-virtual {v2, v3, v0}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 1161
    return-void
.end method

.method private static sendMiniModeUiIntent(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "suppressCoverUI"    # Z
    .param p2, "miniModeUI"    # Z

    .prologue
    .line 1198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1199
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1201
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1202
    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "ShutdownThread"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1196
    return-void
.end method

.method static setInputKeysDisable(Z)V
    .locals 5
    .param p0, "bool"    # Z

    .prologue
    .line 2656
    const-string/jumbo v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    .line 2657
    .local v1, "im":Landroid/hardware/input/IInputManager;
    if-nez v1, :cond_0

    .line 2658
    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ServiceManager.checkService fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    return-void

    .line 2662
    :cond_0
    :try_start_0
    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStartedShutdown to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    invoke-interface {v1, p0}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2654
    :goto_0
    return-void

    .line 2664
    :catch_0
    move-exception v0

    .line 2665
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "error occur while input disable"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$13;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1480
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    .line 315
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 317
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 318
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 319
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    .line 320
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    .line 321
    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 314
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    .line 297
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 299
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 300
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    .line 301
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    .line 302
    invoke-static {p0, p1, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 296
    return-void
.end method

.method public static shutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 284
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sput-object p2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 286
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 283
    return-void
.end method

.method public static shutdownByBixby(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 340
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    if-eqz v0, :cond_0

    .line 341
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "shutdownByBixby confirm by shutdown twice"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->shutdownConfirmByBixby(Z)V

    .line 339
    :goto_0
    return-void

    .line 345
    :cond_0
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdownByBixby reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 347
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 348
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 349
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    .line 350
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    .line 352
    invoke-static {p0, v4, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static shutdownConfirmByBixby(Z)V
    .locals 3
    .param p0, "isCancel"    # Z

    .prologue
    .line 375
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdownConfirmByBixby, Confirm is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    if-eqz v0, :cond_0

    .line 379
    if-eqz p0, :cond_1

    .line 380
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->animateDismiss()V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    sget-object v0, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->runConfirm(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static shutdownInner(Landroid/content/Context;ZZ)V
    .locals 10
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "systemRequest"    # Z

    .prologue
    const/4 v9, 0x0

    .line 396
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 397
    :try_start_0
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_0

    .line 398
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v8, "!@Request to shutdown already running, returning."

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 399
    return-void

    .line 402
    :cond_0
    :try_start_1
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    if-eqz v6, :cond_1

    if-eqz p1, :cond_1

    .line 403
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v8, "!@duplicate shutdown confirm dialog request."

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :try_start_2
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 411
    :cond_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v5

    .line 412
    .local v5, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v5, :cond_3

    .line 413
    if-nez p2, :cond_3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eqz v6, :cond_6

    .end local v5    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :cond_3
    :goto_0
    monitor-exit v7

    .line 428
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 429
    const v6, 0x103012b

    .line 428
    invoke-direct {v0, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 431
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v6, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {v3, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 432
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->saveReasonforshutdown(Ljava/lang/Exception;)V

    .line 434
    if-eqz p1, :cond_4

    const-string/jumbo v6, "silent.sec"

    sget-object v7, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 455
    :cond_4
    const-wide/16 v6, 0x32

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 459
    :goto_1
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static {v0, v9}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    .line 393
    :cond_5
    :goto_2
    return-void

    .line 414
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v5    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :cond_6
    :try_start_4
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v8, "Shutdown Disabled by Administrator"

    invoke-static {v6, v8}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v7

    .line 416
    return-void

    .line 396
    .end local v5    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 435
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "ex":Ljava/lang/Exception;
    :cond_7
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sput-object v0, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    .line 438
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "reason"

    const-string/jumbo v7, "shutdown_confirm_dialog_close"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 441
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_8

    .line 442
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 445
    :cond_8
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v6

    sput-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    .line 446
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 448
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v6, :cond_5

    .line 449
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->blackMiniModeBar(Landroid/content/Context;)V

    goto :goto_2

    .line 456
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 457
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "InterruptedException"

    invoke-static {v6, v7, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1

    .line 420
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 12
    .param p1, "timeout"    # I

    .prologue
    .line 1736
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v4, v8, v10

    .line 1737
    .local v4, "endTime":J
    const/4 v2, 0x1

    new-array v7, v2, [Z

    .line 1738
    .local v7, "done":[Z
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1739
    .local v3, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v1, Lcom/android/server/power/ShutdownThread$16;

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/ShutdownThread$16;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;JI[Z)V

    .line 1935
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1937
    int-to-long v8, p1

    :try_start_0
    invoke-virtual {v1, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1940
    :goto_0
    const/4 v2, 0x0

    aget-boolean v2, v7, v2

    if-nez v2, :cond_0

    .line 1941
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v6, "Timed out waiting for NFC and Radio shutdown."

    invoke-static {v2, v6}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_0
    return-void

    .line 1938
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private static startGoogleShutdownDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1498
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1499
    .local v0, "pd":Landroid/app/ProgressDialog;
    const v1, 0x1040122

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1500
    const v1, 0x104012c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1501
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1502
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1503
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1505
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1506
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1508
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1509
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1510
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1512
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1494
    return-void
.end method

.method private static startRecoveryDialog(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1426
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1445
    .local v0, "pd":Landroid/app/ProgressDialog;
    const-string/jumbo v1, "recovery-update"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1446
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1447
    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1446
    :goto_0
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 1448
    const v1, 0x1040126

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1449
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v1, :cond_2

    .line 1451
    const v1, 0x1040127

    .line 1450
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1452
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1455
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1456
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1470
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1471
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1473
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1475
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v0, v1, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1476
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 1477
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 1424
    return-void

    :cond_0
    move v1, v3

    .line 1447
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1446
    goto :goto_0

    .line 1459
    :cond_2
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1461
    const v1, 0x1040129

    .line 1460
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1465
    :cond_3
    const v1, 0x104012a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1467
    const v1, 0x104012b

    .line 1466
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1468
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1
.end method

.method private startShutdownDialog()V
    .locals 4

    .prologue
    .line 1387
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1388
    .local v0, "continueSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/power/ShutdownThread$10;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1395
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "ShutdownDialog start wait"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :goto_0
    return-void

    .line 1398
    :catch_0
    move-exception v1

    .line 1399
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "ShutdownDialog start wait fail"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static startShutdownDialog(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1345
    new-instance v1, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 1346
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "Shutdown animation will start"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    invoke-static {}, Lcom/android/server/power/LibQmg;->checkSupportQmg()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->existAnim()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1349
    new-instance v1, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 1350
    const-string/jumbo v1, "silent.sec"

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1351
    :cond_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/ShutdownDialog;->setSilentShutdown(Z)V

    .line 1353
    :cond_1
    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->prepareShutdown()V

    .line 1354
    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->show()V

    .line 1360
    :goto_0
    const/4 v0, 0x0

    .line 1381
    .local v0, "dualScreenContext":Landroid/content/Context;
    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v1, :cond_2

    .line 1382
    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->show()V

    .line 1344
    :cond_2
    return-void

    .line 1356
    .end local v0    # "dualScreenContext":Landroid/content/Context;
    :cond_3
    sput-object v3, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 1357
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startGoogleShutdownDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static startShutdownThread()V
    .locals 6

    .prologue
    .line 1404
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$11;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$11;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 1406
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    .line 1408
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 1409
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "Android will be shutdown"

    .line 1408
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1412
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$12;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$12;-><init>()V

    .line 1420
    const-wide/16 v2, 0x3e8

    .line 1413
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1403
    :cond_0
    return-void
.end method

.method private static syncQcRmtStorage()V
    .locals 7

    .prologue
    .line 2086
    const/16 v0, 0x64

    .line 2087
    .local v0, "SLEEP_SIZE":I
    const-string/jumbo v4, "storage.efs_sync.done"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2088
    .local v2, "status":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x1e

    if-ge v1, v4, :cond_0

    const-string/jumbo v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2085
    :cond_0
    return-void

    .line 2089
    :cond_1
    const-string/jumbo v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "!@rmtStorage sync not yet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/lit8 v6, v1, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2094
    :goto_1
    const-string/jumbo v4, "storage.efs_sync.done"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2088
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2092
    :catch_0
    move-exception v3

    .local v3, "unused":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public static systemShutdown(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 326
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 327
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 328
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    .line 329
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    .line 330
    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 325
    return-void
.end method

.method private static textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2703
    const-string/jumbo v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2704
    .local v0, "am":Landroid/media/AudioManager;
    const/16 v6, 0x11

    new-array v3, v6, [D

    .local v3, "volumetable":[D
    fill-array-data v3, :array_0

    .line 2706
    if-eqz v0, :cond_1

    .line 2707
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2708
    .local v2, "systemVolume":I
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 2709
    .local v1, "musicVolume":I
    const/16 v6, 0xf

    if-le v1, v6, :cond_0

    const/16 v1, 0xf

    .line 2711
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2715
    .end local v1    # "musicVolume":I
    .end local v2    # "systemVolume":I
    .local v4, "ttsVolume":D
    :goto_0
    new-instance v6, Landroid/speech/tts/TextToSpeech;

    new-instance v7, Lcom/android/server/power/ShutdownThread$19;

    invoke-direct {v7, v4, v5, p1}, Lcom/android/server/power/ShutdownThread$19;-><init>(DLjava/lang/String;)V

    invoke-direct {v6, p0, v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v6, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 2702
    return-void

    .line 2713
    .end local v4    # "ttsVolume":D
    :cond_1
    const-wide/16 v4, 0x0

    .restart local v4    # "ttsVolume":D
    goto :goto_0

    .line 2704
    :array_0
    .array-data 8
        0x0
        0x3f7cac083126e979L    # 0.007
        0x3f847ae147ae147bL    # 0.01
        0x3f916872b020c49cL    # 0.017
        0x3f9999999999999aL    # 0.025
        0x3f9eb851eb851eb8L    # 0.03
        0x3fa1eb851eb851ecL    # 0.035
        0x3fa810624dd2f1aaL    # 0.047
        0x3faeb851eb851eb8L    # 0.06
        0x3fb4395810624dd3L    # 0.079
        0x3fb999999999999aL    # 0.1
        0x3fc0a3d70a3d70a4L    # 0.13
        0x3fc47ae147ae147bL    # 0.16
        0x3fd3333333333333L    # 0.3
        0x3fe6666666666666L    # 0.7
        0x0
        0x401c000000000000L    # 7.0
    .end array-data
.end method

.method private uncrypt()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2016
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "Calling uncrypt and monitoring the progress..."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    new-instance v2, Lcom/android/server/power/ShutdownThread$17;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$17;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 2039
    .local v2, "progressListener":Landroid/os/RecoverySystem$ProgressListener;
    const/4 v5, 0x1

    new-array v0, v5, [Z

    .line 2040
    .local v0, "done":[Z
    aput-boolean v8, v0, v8

    .line 2041
    new-instance v3, Lcom/android/server/power/ShutdownThread$18;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/server/power/ShutdownThread$18;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    .line 2056
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2059
    const-wide/32 v6, 0xdbba0

    :try_start_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    :goto_0
    aget-boolean v5, v0, v8

    if-nez v5, :cond_0

    .line 2063
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "Timed out waiting for uncrypt."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_0
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "uncrypt finished."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    iget-object v5, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 2068
    const v6, 0x1040129

    .line 2067
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2069
    .local v1, "msg":Ljava/lang/CharSequence;
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v6, 0x64

    invoke-direct {v5, v6, v1}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 2070
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-direct {v5}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog()V

    .line 2015
    return-void

    .line 2060
    .end local v1    # "msg":Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    .local v4, "unused":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private static waitIfTimeoutDumpWorking()V
    .locals 5

    .prologue
    .line 2139
    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2140
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "!@Wait for dumpstate"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2142
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "!@Dumpstate finished "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2150
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2137
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 2144
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "!@Dumpstate timeouted!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2147
    :catch_0
    move-exception v0

    .line 2148
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "delayDumpLock TryLock"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2150
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 2149
    :catchall_0
    move-exception v1

    .line 2150
    sget-object v2, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2149
    throw v1
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 1516
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1517
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1518
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1515
    return-void

    .line 1516
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method actionDoneMount()V
    .locals 2

    .prologue
    .line 1523
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v1

    .line 1524
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    .line 1525
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1522
    return-void

    .line 1523
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 34

    .prologue
    .line 1534
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->-wrap0()V

    .line 1535
    new-instance v6, Lcom/android/server/power/ShutdownThread$14;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$14;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 1548
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1549
    .local v28, "reason":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x5b

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1550
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 1558
    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    :cond_0
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Sending shutdown broadcast..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1565
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1566
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 1568
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1567
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1571
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-nez v2, :cond_a

    const-string/jumbo v2, "no power"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1574
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1575
    const-wide/32 v8, 0x13880

    .line 1574
    add-long v20, v4, v8

    .line 1577
    .local v20, "endTime":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1578
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 1579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v20, v8

    .line 1580
    .local v14, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_b

    .line 1581
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@Shutdown broadcast timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v14    # "delay":J
    :cond_1
    monitor-exit v4

    .line 1594
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_2

    .line 1595
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1597
    :cond_2
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Shutting down activity manager..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 1600
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_3

    .line 1602
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1606
    :cond_3
    :goto_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_4

    .line 1607
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1610
    :cond_4
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Shutting down package manager..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v26

    .line 1612
    check-cast v26, Lcom/android/server/pm/PackageManagerService;

    .line 1614
    .local v26, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v26, :cond_5

    .line 1615
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 1617
    :cond_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_6

    .line 1618
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1622
    :cond_6
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 1623
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_7

    .line 1624
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1627
    :cond_7
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-nez v2, :cond_d

    .line 1628
    new-instance v22, Ljava/io/File;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1629
    .local v22, "f":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1630
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@/proc/sysrq-trigger not exists!"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    return-void

    .line 1548
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v20    # "endTime":J
    .end local v22    # "f":Ljava/io/File;
    .end local v26    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v28    # "reason":Ljava/lang/String;
    :cond_8
    const-string/jumbo v2, "0"

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, ""

    goto/16 :goto_1

    .line 1572
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v28    # "reason":Ljava/lang/String;
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v20, v4, v8

    .line 1571
    .restart local v20    # "endTime":J
    goto/16 :goto_2

    .line 1583
    .restart local v14    # "delay":J
    :cond_b
    :try_start_2
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_c

    .line 1584
    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v32

    .line 1585
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    .line 1584
    mul-double v8, v8, v32

    .line 1585
    const-wide v32, 0x40c3880000000000L    # 10000.0

    .line 1584
    div-double v8, v8, v32

    double-to-int v0, v8

    move/from16 v31, v0

    .line 1586
    .local v31, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1589
    .end local v31    # "status":I
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1590
    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_3

    .line 1577
    .end local v14    # "delay":J
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 1603
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_1
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    .line 1636
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v26    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_d
    new-instance v25, Lcom/android/server/power/ShutdownThread$15;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$15;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 1643
    .local v25, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Shutting down MountService"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1647
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x7530

    add-long v18, v4, v8

    .line 1648
    .local v18, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1651
    :try_start_4
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1650
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v24

    .line 1652
    .local v24, "mount":Landroid/os/storage/IMountService;
    new-instance v22, Ljava/io/File;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1653
    .restart local v22    # "f":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1654
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@MountService shutdown skip"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1664
    .end local v22    # "f":Ljava/io/File;
    .end local v24    # "mount":Landroid/os/storage/IMountService;
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    if-nez v2, :cond_e

    .line 1665
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v18, v8

    .line 1666
    .restart local v14    # "delay":J
    const-string/jumbo v2, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "!@MountService delay : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", systemTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_16

    .line 1668
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@Shutdown wait timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v14    # "delay":J
    :cond_e
    monitor-exit v4

    .line 1684
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_f

    .line 1685
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1687
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 1690
    :cond_f
    const-string/jumbo v2, "ro.rebootchargermode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1691
    .local v30, "sRebootCharger":Ljava/lang/String;
    const-string/jumbo v2, "sys.property_forcedshutdown"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1693
    .local v29, "sForcedShutdown":Ljava/lang/String;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Check power connected"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->isPoweredPlugged()Z

    move-result v27

    .line 1695
    .local v27, "powerConnected":Z
    const-string/jumbo v2, "true"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v2, :cond_10

    .line 1696
    const-string/jumbo v2, "1"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1706
    :cond_10
    :goto_6
    const-string/jumbo v2, "ro.alarm_boot"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 1707
    .local v23, "isAlarmBoot":Z
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1709
    .local v12, "cryptState":Ljava/lang/String;
    if-eqz v23, :cond_12

    .line 1710
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1711
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1709
    if-eqz v2, :cond_12

    .line 1712
    :cond_11
    const-string/jumbo v2, "/persist/alarm/powerOffAlarmHandle"

    .line 1713
    const-string/jumbo v4, "1"

    .line 1712
    invoke-static {v2, v4}, Landroid/app/AlarmManager;->writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    :cond_12
    const-string/jumbo v2, "mrvl"

    const-string/jumbo v4, "ro.board.platform"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1718
    const-string/jumbo v2, "power_off=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1720
    :cond_13
    const-string/jumbo v4, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "!@ run, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1721
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_18

    const-string/jumbo v2, "reboot"

    .line 1720
    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1721
    const-string/jumbo v5, " requested "

    .line 1720
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1722
    const-string/jumbo v5, "reason="

    .line 1720
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1722
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_19

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 1720
    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1533
    return-void

    .line 1656
    .end local v12    # "cryptState":Ljava/lang/String;
    .end local v23    # "isAlarmBoot":Z
    .end local v27    # "powerConnected":Z
    .end local v29    # "sForcedShutdown":Ljava/lang/String;
    .end local v30    # "sRebootCharger":Ljava/lang/String;
    .restart local v22    # "f":Ljava/io/File;
    .restart local v24    # "mount":Landroid/os/storage/IMountService;
    :cond_14
    if-eqz v24, :cond_15

    .line 1657
    :try_start_6
    invoke-interface/range {v24 .. v25}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    .line 1661
    .end local v22    # "f":Ljava/io/File;
    .end local v24    # "mount":Landroid/os/storage/IMountService;
    :catch_2
    move-exception v16

    .line 1662
    .local v16, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@Exception during MountService shutdown"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    .line 1648
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    .line 1659
    .restart local v22    # "f":Ljava/io/File;
    .restart local v24    # "mount":Landroid/os/storage/IMountService;
    :cond_15
    :try_start_8
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@MountService unavailable for shutdown"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_5

    .line 1671
    .end local v22    # "f":Ljava/io/File;
    .end local v24    # "mount":Landroid/os/storage/IMountService;
    .restart local v14    # "delay":J
    :cond_16
    const-wide/16 v8, 0x7530

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v32

    .line 1672
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    .line 1671
    mul-double v8, v8, v32

    .line 1673
    const-wide v32, 0x40dd4c0000000000L    # 30000.0

    .line 1671
    div-double v8, v8, v32

    double-to-int v0, v8

    move/from16 v31, v0

    .line 1674
    .restart local v31    # "status":I
    add-int/lit8 v31, v31, 0x12

    .line 1675
    :try_start_9
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1678
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_5

    .line 1679
    :catch_3
    move-exception v17

    .line 1680
    .restart local v17    # "e":Ljava/lang/InterruptedException;
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_5

    .line 1695
    .end local v14    # "delay":J
    .end local v17    # "e":Ljava/lang/InterruptedException;
    .end local v31    # "status":I
    .restart local v27    # "powerConnected":Z
    .restart local v29    # "sForcedShutdown":Ljava/lang/String;
    .restart local v30    # "sRebootCharger":Ljava/lang/String;
    :cond_17
    if-eqz v27, :cond_10

    .line 1699
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 1700
    const-string/jumbo v2, "charging"

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    goto/16 :goto_6

    .line 1721
    .restart local v12    # "cryptState":Ljava/lang/String;
    .restart local v23    # "isAlarmBoot":Z
    :cond_18
    const-string/jumbo v2, "shutdown"

    goto/16 :goto_7

    .line 1722
    :cond_19
    const-string/jumbo v2, "null"

    goto/16 :goto_8
.end method
