.class public Lcom/android/server/am/ActivityManagerPerformance;
.super Ljava/lang/Object;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerPerformance$1;,
        Lcom/android/server/am/ActivityManagerPerformance$MainHandler;
    }
.end annotation


# static fields
.field static AMP_ENABLE:Z = false

.field static AMP_PERF_ENABLE:Z = false

.field static AMP_RELAUNCH_RESUME_ON:Z = false

.field static DEBUG:Z = false

.field static DEBUG_TRACE:Z = false

.field private static final DISABLE_MSG_ACT_RESUME:I = 0x3

.field private static final DISABLE_MSG_ACT_START:I = 0x2

.field private static final DISABLE_MSG_APP_SWITCH:I = 0x1

.field static NOT_USER_BINARY:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManagerPerformance"

.field private static TIMEOUT_ACT_RESUME:I = 0x0

.field private static TIMEOUT_ACT_START:I = 0x0

.field private static TIMEOUT_APP_SWITCH:I = 0x0

.field private static TIMEOUT_PREV_RESUME:I = 0x0

.field static final TOP_STATE_APP:I = 0x4

.field static final TOP_STATE_HOME:I = 0x2

.field static final TOP_STATE_INIT:I = 0x0

.field static final TOP_STATE_IS_CREATING:I = 0x1

.field static final TOP_STATE_RECENTS_APP:I = 0x3

.field private static booster:Lcom/android/server/am/ActivityManagerPerformance;

.field static curTopAct:Lcom/android/server/am/ActivityRecord;

.field static curTopState:I


# instance fields
.field private isMultiWindowResume:Z

.field private lastHomeBoostedTime:J

.field private lastHomePressedTime:J

.field private mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsScreenOn:Z

.field private mLockActResume:Ljava/lang/Object;

.field private mLockActStart:Ljava/lang/Object;

.field private mLockAppSwitch:Ljava/lang/Object;

.field private mLockHome:Ljava/lang/Object;

.field private mLockRelaunchResume:Ljava/lang/Object;

.field private mLockTail:Ljava/lang/Object;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private needSkipResume:Z

.field private rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

.field private rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

.field private rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

.field private rLastActHome:Lcom/android/server/am/ActivityRecord;

.field private rLastActTail:Lcom/android/server/am/ActivityRecord;

.field private rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;


# direct methods
.method static synthetic -set0(Lcom/android/server/am/ActivityManagerPerformance;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/ActivityManagerPerformance;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "onoff"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "onoff"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "onoff"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 23
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    .line 24
    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_debug"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    sput-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    .line 25
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_debug_trace"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 26
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 27
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_perf_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 28
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_relaunch_resume"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    .line 29
    const-string/jumbo v0, "sys.config.amp_to_act_resume"

    const-string/jumbo v1, "1000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    .line 30
    const-string/jumbo v0, "sys.config.amp_to_act_start"

    const-string/jumbo v1, "2000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    .line 31
    const-string/jumbo v0, "sys.config.amp_to_app_switch"

    const-string/jumbo v1, "3000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    .line 32
    const-string/jumbo v0, "sys.config.amp_to_prev_resume"

    const-string/jumbo v1, "3000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    .line 19
    return-void

    :cond_1
    move v0, v1

    .line 23
    goto/16 :goto_0
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 762
    new-instance v0, Lcom/android/server/am/ActivityManagerPerformance$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerPerformance$1;-><init>(Lcom/android/server/am/ActivityManagerPerformance;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 42
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "ActivityManagerPerformance"

    .line 45
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 44
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 46
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 47
    new-instance v0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;-><init>(Lcom/android/server/am/ActivityManagerPerformance;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    .line 48
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerPerformance;->registerReceiver()V

    .line 40
    return-void
.end method

.method static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3d

    .line 781
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 782
    :cond_0
    return-void

    .line 783
    :cond_1
    const/4 v4, 0x0

    .line 784
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 785
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 786
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    if-eqz v5, :cond_c

    .line 787
    const-string/jumbo v5, "_perf_enable="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 788
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 789
    .local v2, "enable":Z
    sput-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 790
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP perf enable change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    return-void

    .line 792
    .end local v2    # "enable":Z
    :cond_3
    const-string/jumbo v5, "_enable="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 793
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 794
    .restart local v2    # "enable":Z
    sput-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 795
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP enable change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v5, :cond_4

    .line 797
    if-eqz v2, :cond_5

    .line 798
    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v5}, Lcom/android/server/am/ActivityManagerPerformance;->registerReceiver()V

    .line 802
    :cond_4
    :goto_0
    return-void

    .line 800
    :cond_5
    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v5}, Lcom/android/server/am/ActivityManagerPerformance;->unregisterReceiver()V

    goto :goto_0

    .line 803
    .end local v2    # "enable":Z
    :cond_6
    const-string/jumbo v5, "_relaunch_resume="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 804
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 805
    .restart local v2    # "enable":Z
    sput-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    .line 806
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP relaunch_resume change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    return-void

    .line 808
    .end local v2    # "enable":Z
    :cond_7
    const-string/jumbo v5, "_to_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 809
    const/4 v3, -0x1

    .line 811
    .local v3, "time":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 816
    const/16 v5, 0x64

    if-ge v3, v5, :cond_8

    .line 817
    const-string/jumbo v5, "-- AMP time cannot be under 100ms"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    return-void

    .line 812
    :catch_0
    move-exception v1

    .line 813
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP cannot change time. value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    return-void

    .line 820
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    const-string/jumbo v5, "_app_switch="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 821
    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    .line 822
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_APP_SWITCH change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    return-void

    .line 824
    :cond_9
    const-string/jumbo v5, "_act_start="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 825
    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    .line 826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_ACT_START change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    return-void

    .line 828
    :cond_a
    const-string/jumbo v5, "_act_resume="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 829
    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    .line 830
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_ACT_RESUME change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    return-void

    .line 832
    :cond_b
    const-string/jumbo v5, "_prev_resume="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 833
    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    .line 834
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_PREV_RESUME change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    return-void

    .line 839
    .end local v3    # "time":I
    :cond_c
    const-string/jumbo v5, "_debug="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 840
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 841
    .local v0, "debug":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP debug change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    .line 843
    return-void

    .line 844
    .end local v0    # "debug":Z
    :cond_d
    const-string/jumbo v5, "_debug_trace="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 845
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 846
    .restart local v0    # "debug":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP debug_trace change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 848
    return-void

    .line 850
    .end local v0    # "debug":Z
    :cond_e
    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v5, :cond_f

    .line 851
    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-virtual {v5, p0}, Lcom/android/server/am/ActivityManagerPerformance;->dump(Ljava/io/PrintWriter;)V

    .line 780
    :cond_f
    return-void
.end method

.method public static getBooster()Lcom/android/server/am/ActivityManagerPerformance;
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBooster(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)Lcom/android/server/am/ActivityManagerPerformance;
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 53
    new-instance v0, Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityManagerPerformance;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    .line 54
    :cond_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerPerformance;->getBooster()Lcom/android/server/am/ActivityManagerPerformance;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized notifyCurTopAct(Lcom/android/server/am/ActivityRecord;)V
    .locals 10
    .param p0, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-class v6, Lcom/android/server/am/ActivityManagerPerformance;

    monitor-enter v6

    .line 117
    :try_start_0
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, p0, :cond_1

    :cond_0
    monitor-exit v6

    .line 118
    return-void

    .line 119
    :cond_1
    :try_start_1
    const-string/jumbo v2, "notifyCurTopAct()"

    .line 120
    .local v2, "method":Ljava/lang/String;
    if-nez p0, :cond_6

    const/4 v3, 0x1

    .line 123
    .local v3, "topState":I
    :goto_0
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 124
    const-string/jumbo v1, "notifyCurTopAct() activity changed"

    .line 125
    .local v1, "log":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\n[Activity] prev: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", cur: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v5, :cond_3

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\n[Process] prev: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_9

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", cur: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p0, :cond_a

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\n[Package] prev: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_b

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", cur: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p0, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n[TOP_STATE] prev: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_3
    const-string/jumbo v4, "ActivityManagerPerformance"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v4, :cond_4

    .line 133
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    .end local v1    # "log":Ljava/lang/String;
    :cond_4
    sput-object p0, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    .line 136
    sget v4, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-eq v4, v3, :cond_e

    .line 137
    sget v0, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    .line 138
    .local v0, "lastTopState":I
    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    .line 139
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v4, :cond_e

    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v4, :cond_e

    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-eqz v4, :cond_e

    .line 140
    sget v4, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 141
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 142
    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "notifyCurTopAct() call setBoosterHome()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_5
    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, p0}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 144
    return-void

    .line 121
    .end local v0    # "lastTopState":I
    .end local v3    # "topState":I
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v3, 0x2

    .restart local v3    # "topState":I
    goto/16 :goto_0

    .line 122
    .end local v3    # "topState":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v3, 0x3

    .restart local v3    # "topState":I
    goto/16 :goto_0

    .end local v3    # "topState":I
    :cond_8
    const/4 v3, 0x4

    .restart local v3    # "topState":I
    goto/16 :goto_0

    .restart local v1    # "log":Ljava/lang/String;
    :cond_9
    move-object v5, v4

    .line 127
    goto/16 :goto_1

    :cond_a
    move-object v5, v4

    goto/16 :goto_2

    :cond_b
    move-object v5, v4

    .line 128
    goto/16 :goto_3

    .line 146
    .end local v1    # "log":Ljava/lang/String;
    .restart local v0    # "lastTopState":I
    :cond_c
    const/4 v4, 0x3

    if-ne v0, v4, :cond_e

    sget v4, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-eq v4, v9, :cond_d

    sget v4, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-ne v4, v8, :cond_e

    .line 147
    :cond_d
    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_f

    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v4, p0, :cond_e

    if-eqz p0, :cond_f

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_f

    .end local v0    # "lastTopState":I
    :cond_e
    monitor-exit v6

    .line 116
    return-void

    .line 149
    .restart local v0    # "lastTopState":I
    :cond_f
    :try_start_3
    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v4, :cond_11

    sget v4, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-ne v4, v9, :cond_11

    .line 150
    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 151
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_10

    .line 152
    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "notifyCurTopAct() skipped. isMultiWindowResume: true"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_10
    monitor-exit v6

    .line 153
    return-void

    .line 155
    :cond_11
    :try_start_4
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_12

    .line 156
    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "notifyCurTopAct() call setBoosterAppSwitch()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_12
    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    .line 159
    return-void

    .end local v0    # "lastTopState":I
    .end local v2    # "method":Ljava/lang/String;
    .end local v3    # "topState":I
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4
.end method

.method private final registerReceiver()V
    .locals 3

    .prologue
    .line 752
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 753
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 751
    return-void
.end method

.method private setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p1, "onoff"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v11, 0x3

    .line 205
    const-string/jumbo v4, "setBoosterActResume()"

    .line 206
    .local v4, "method":Ljava/lang/String;
    if-eqz p2, :cond_4

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 207
    :goto_0
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 208
    if-eqz p2, :cond_5

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 209
    :goto_1
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 210
    :goto_2
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterActResume() onoff: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", r: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), curBoost: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_0

    .line 212
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterActResume() Trace\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v8, "com.sec.android.app.camera"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "com.android.server.telecom"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 217
    :cond_1
    const-string/jumbo v8, "EXEC_ACTIVITY"

    invoke-static {v8, v6}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v8, :cond_3

    .line 220
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "AMS_ACT_RESUME"

    const/16 v10, 0x15

    invoke-static {v8, v9, v10}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 221
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 222
    .local v2, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v2, :cond_7

    .line 223
    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "setBoosterActResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 206
    .end local v2    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_4
    const/4 v6, 0x0

    .local v6, "pkgName":Ljava/lang/String;
    goto/16 :goto_0

    .line 208
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    .local v7, "procName":Ljava/lang/String;
    goto/16 :goto_1

    .line 209
    .end local v7    # "procName":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    .local v1, "curBoostProcName":Ljava/lang/String;
    goto/16 :goto_2

    .line 227
    .end local v1    # "curBoostProcName":Ljava/lang/String;
    .restart local v2    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_7
    if-eqz p1, :cond_b

    .line 228
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v0, 0x1f4

    .line 229
    .local v0, "boostMaxTime":I
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v8, v11}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    .line 231
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :try_start_1
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 233
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9

    .line 235
    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_acquire() ACT_RESUME"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, p2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 237
    .local v5, "nmsg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v10, v0

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    .end local v0    # "boostMaxTime":I
    .end local v5    # "nmsg":Landroid/os/Message;
    :goto_4
    return-void

    .line 228
    :cond_8
    sget v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    .restart local v0    # "boostMaxTime":I
    goto :goto_3

    .line 231
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 238
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 240
    :goto_5
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() ACT_RESUME failed. stop boosting of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_9

    .line 242
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() ACT_RESUME failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_9
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    const/4 v9, 0x0

    invoke-direct {p0, v9, v8}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    .line 244
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 239
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "curBoostProcName":Ljava/lang/String;
    goto :goto_5

    .line 248
    .end local v0    # "boostMaxTime":I
    .end local v1    # "curBoostProcName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_4
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 249
    :try_start_5
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v8, :cond_c

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 250
    return-void

    .line 251
    :cond_c
    :try_start_7
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 252
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v9

    .line 254
    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() ACT_RESUME"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    .line 256
    :catch_1
    move-exception v3

    .line 257
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() ACT_RESUME failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_d

    .line 259
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_release() ACT_RESUME failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 248
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :try_start_9
    monitor-exit v9

    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
.end method

.method private setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p1, "onoff"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 266
    const-string/jumbo v4, "setBoosterActStart()"

    .line 267
    .local v4, "method":Ljava/lang/String;
    if-eqz p2, :cond_4

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 268
    :goto_0
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 269
    if-eqz p2, :cond_5

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 270
    :goto_1
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 271
    :goto_2
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterActStart() onoff: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", r: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), curBoost: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_0

    .line 273
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterActStart() Trace\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v8, "com.sec.android.app.camera"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "com.android.server.telecom"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 278
    :cond_1
    const-string/jumbo v8, "EXEC_ACTIVITY"

    invoke-static {v8, v6}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_2
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v8, :cond_7

    .line 281
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "AMS_ACT_START"

    const/16 v10, 0x15

    invoke-static {v8, v9, v10}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    .line 284
    :cond_3
    :goto_3
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v8, :cond_8

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    .line 285
    .local v2, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :goto_4
    if-nez v2, :cond_9

    .line 286
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterActStart() skipped. SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void

    .line 267
    .end local v2    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_4
    const/4 v6, 0x0

    .local v6, "pkgName":Ljava/lang/String;
    goto/16 :goto_0

    .line 269
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    .local v7, "procName":Ljava/lang/String;
    goto/16 :goto_1

    .line 270
    .end local v7    # "procName":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    .local v1, "curBoostProcName":Ljava/lang/String;
    goto/16 :goto_2

    .line 282
    .end local v1    # "curBoostProcName":Ljava/lang/String;
    :cond_7
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v8, :cond_3

    .line 283
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "AMS_RESUME"

    const/16 v10, 0x15

    invoke-static {v8, v9, v10}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_3

    .line 284
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_4

    .line 290
    .restart local v2    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_9
    if-eqz p1, :cond_e

    .line 291
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v0, 0x1f4

    .line 292
    .local v0, "boostMaxTime":I
    :goto_5
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    .line 294
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :try_start_1
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 296
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9

    .line 298
    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_acquire() ACT_START"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9, p2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 300
    .local v5, "nmsg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v10, v0

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    .end local v0    # "boostMaxTime":I
    .end local v5    # "nmsg":Landroid/os/Message;
    :goto_6
    return-void

    .line 291
    :cond_a
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v8, :cond_b

    sget v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    .restart local v0    # "boostMaxTime":I
    goto :goto_5

    .end local v0    # "boostMaxTime":I
    :cond_b
    sget v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    .restart local v0    # "boostMaxTime":I
    goto :goto_5

    .line 294
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 301
    :catch_0
    move-exception v3

    .line 302
    .local v3, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 303
    :goto_7
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() ACT_START failed. stop boosting of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_c

    .line 305
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() ACT_START failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_c
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    const/4 v9, 0x0

    invoke-direct {p0, v9, v8}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    .line 307
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 302
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "curBoostProcName":Ljava/lang/String;
    goto :goto_7

    .line 310
    .end local v0    # "boostMaxTime":I
    .end local v1    # "curBoostProcName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e
    const/4 v8, 0x0

    invoke-direct {p0, v8, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V

    .line 312
    :try_start_4
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 313
    :try_start_5
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v8, :cond_f

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 314
    return-void

    .line 315
    :cond_f
    :try_start_7
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 316
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v9

    .line 318
    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() ACT_START"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_6

    .line 320
    :catch_1
    move-exception v3

    .line 321
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() ACT_START failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_10

    .line 323
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_release() ACT_START failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_10
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 312
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :try_start_9
    monitor-exit v9

    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
.end method

.method private setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p1, "onoff"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v11, 0x1

    .line 330
    const-string/jumbo v4, "setBoosterAppSwitch()"

    .line 331
    .local v4, "method":Ljava/lang/String;
    if-eqz p2, :cond_4

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 332
    :goto_0
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 333
    if-eqz p2, :cond_5

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 334
    :goto_1
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 335
    :goto_2
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterAppSwitch() onoff: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", r: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), curBoost: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_0

    .line 337
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterAppSwitch() Trace\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v8, "com.sec.android.app.camera"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "com.android.server.telecom"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 342
    :cond_1
    const-string/jumbo v8, "EXEC_ACTIVITY"

    invoke-static {v8, v6}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v8, :cond_3

    .line 345
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "AMS_APP_SWITCH"

    const/16 v10, 0x15

    invoke-static {v8, v9, v10}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    .line 346
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    .line 347
    .local v2, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v2, :cond_7

    .line 348
    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "setBoosterAppSwitch() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void

    .line 331
    .end local v2    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_4
    const/4 v6, 0x0

    .local v6, "pkgName":Ljava/lang/String;
    goto/16 :goto_0

    .line 333
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    .local v7, "procName":Ljava/lang/String;
    goto/16 :goto_1

    .line 334
    .end local v7    # "procName":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    .local v1, "curBoostProcName":Ljava/lang/String;
    goto/16 :goto_2

    .line 352
    .end local v1    # "curBoostProcName":Ljava/lang/String;
    .restart local v2    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_7
    if-eqz p1, :cond_b

    .line 353
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v0, 0x1f4

    .line 354
    .local v0, "boostMaxTime":I
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v8, v11}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    .line 356
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :try_start_1
    const-string/jumbo v8, "AMS_APP_SWITCH"

    invoke-static {v8, v6}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 359
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9

    .line 361
    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_acquire() APP_SWITCH"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, p2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 363
    .local v5, "nmsg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v10, v0

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 329
    .end local v0    # "boostMaxTime":I
    .end local v5    # "nmsg":Landroid/os/Message;
    :goto_4
    return-void

    .line 353
    :cond_8
    sget v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    .restart local v0    # "boostMaxTime":I
    goto :goto_3

    .line 356
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 364
    :catch_0
    move-exception v3

    .line 365
    .local v3, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 366
    :goto_5
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() APP_SWITCH failed. stop boosting of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_9

    .line 368
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() APP_SWITCH failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_9
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    const/4 v9, 0x0

    invoke-direct {p0, v9, v8}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    .line 370
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 365
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "curBoostProcName":Ljava/lang/String;
    goto :goto_5

    .line 373
    .end local v0    # "boostMaxTime":I
    .end local v1    # "curBoostProcName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    invoke-direct {p0, v11, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V

    .line 375
    :try_start_4
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 376
    :try_start_5
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v8, :cond_c

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 377
    return-void

    .line 378
    :cond_c
    :try_start_7
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 379
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v9

    .line 381
    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() APP_SWITCH"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    .line 383
    :catch_1
    move-exception v3

    .line 384
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() APP_SWITCH failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_d

    .line 386
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterAppSwitch() AMP_release failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 375
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :try_start_9
    monitor-exit v9

    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
.end method

.method private setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p1, "fastBoost"    # Z
    .param p2, "startAct"    # Z
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 436
    const-string/jumbo v2, "setBoosterHome()"

    .line 437
    .local v2, "method":Ljava/lang/String;
    if-eqz p3, :cond_1

    iget-object v3, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 438
    :goto_0
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 439
    if-eqz p3, :cond_2

    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 440
    :goto_1
    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterHome() fastBoost: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", startAct: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", curTopState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v9}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", r: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", pkgName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v7, :cond_0

    .line 442
    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterHome() Trace\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    :cond_0
    sget v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-nez v7, :cond_3

    .line 447
    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() skipped. Method is called by non-system_server"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void

    .line 437
    :cond_1
    const/4 v3, 0x0

    .local v3, "pkgName":Ljava/lang/String;
    goto/16 :goto_0

    .line 439
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    .local v6, "procName":Ljava/lang/String;
    goto/16 :goto_1

    .line 450
    .end local v6    # "procName":Ljava/lang/String;
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v7, :cond_5

    .line 451
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 452
    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() skipped. mIsScreenOn: false"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_4
    return-void

    .line 455
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 456
    .local v4, "now":J
    if-eqz p1, :cond_c

    .line 457
    if-nez p3, :cond_8

    .line 458
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    .line 466
    :cond_6
    if-nez p3, :cond_1c

    sget v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1c

    .line 467
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 468
    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterHome() skipped. Home key was pressed, but curTopState is already "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v9}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_7
    return-void

    .line 459
    :cond_8
    iget-wide v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0xc8

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    iget-wide v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0xc8

    cmp-long v7, v8, v10

    if-gez v7, :cond_6

    .line 460
    :cond_9
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    if-eq v7, p3, :cond_a

    if-eqz p3, :cond_a

    .line 461
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    .line 462
    :cond_a
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 463
    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_b
    return-void

    .line 472
    :cond_c
    iget-wide v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0xc8

    cmp-long v7, v8, v10

    if-ltz v7, :cond_d

    iget-wide v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0xc8

    cmp-long v7, v8, v10

    if-gez v7, :cond_10

    .line 473
    :cond_d
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    if-eq v7, p3, :cond_e

    if-eqz p3, :cond_e

    .line 474
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    .line 475
    :cond_e
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_f

    .line 476
    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_f
    return-void

    .line 479
    :cond_10
    sget v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1c

    .line 480
    if-eqz p3, :cond_15

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v7, p3, :cond_11

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-ne v7, p3, :cond_13

    .line 483
    :cond_11
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_12

    .line 484
    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterHome() skipped. already boosted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_12
    return-void

    .line 481
    :cond_13
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_14

    iget-object v7, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 480
    if-nez v7, :cond_11

    .line 482
    :cond_14
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_15

    iget-object v7, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 480
    if-nez v7, :cond_11

    .line 487
    :cond_15
    if-eqz p2, :cond_17

    .line 488
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_16

    .line 489
    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() call setBoosterActStart()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_16
    const/4 v7, 0x1

    invoke-direct {p0, v7, p3}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    .line 501
    :goto_2
    return-void

    .line 492
    :cond_17
    if-eqz p3, :cond_1a

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eq v7, p3, :cond_18

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_1a

    iget-object v7, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 493
    :cond_18
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_19

    .line 494
    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterHome() skipped. already boosted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_19
    return-void

    .line 497
    :cond_1a
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_1b

    .line 498
    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() call setBoosterActResume()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1b
    const/4 v7, 0x1

    invoke-direct {p0, v7, p3}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_2

    .line 505
    :cond_1c
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v7, :cond_1d

    .line 506
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "AMS_APP_HOME"

    const/16 v9, 0x15

    invoke-static {v7, v8, v9}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    .line 507
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    .line 508
    .local v0, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v0, :cond_1e

    .line 509
    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 512
    :cond_1e
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    .line 514
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :try_start_1
    const-string/jumbo v7, "AMS_APP_HOME"

    invoke-static {v7, v3}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 517
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8

    .line 519
    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "AMP_acquire() HOME"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_3
    return-void

    .line 514
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "AMP_acquire() HOME failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_1f

    .line 523
    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AMP_acquire() HOME failed. e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private setBoosterRelaunchResume(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 530
    const-string/jumbo v2, "setBoosterRelaunchResume()"

    .line 531
    .local v2, "method":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 532
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 533
    :goto_0
    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterRelaunchResume() r: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v4, :cond_0

    .line 535
    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterRelaunchResume() Trace\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 540
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_1

    .line 541
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "AMS_RELAUNCH_RESUME"

    const/16 v6, 0x15

    invoke-static {v4, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 543
    .local v0, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v0, :cond_3

    .line 544
    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "setBoosterRelaunchResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void

    .line 532
    .end local v0    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_2
    const/4 v3, 0x0

    .local v3, "procName":Ljava/lang/String;
    goto :goto_0

    .line 549
    .end local v3    # "procName":Ljava/lang/String;
    .restart local v0    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 551
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5

    .line 553
    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "AMP_acquire() RELAUNCH_RESUME"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_1
    return-void

    .line 549
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "AMP_acquire() RELAUNCH_RESUME failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 557
    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AMP_acquire() RELAUNCH_RESUME failed. e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "fromAppSwitch"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 393
    const-string/jumbo v2, "setBoosterTail()"

    .line 394
    .local v2, "method":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 395
    if-eqz p2, :cond_2

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 396
    :goto_0
    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterTail() from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_3

    const-string/jumbo v4, "AppSwitch"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", r: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v4, :cond_0

    .line 398
    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterTail() Trace\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v4, :cond_4

    .line 403
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 404
    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "setBoosterTail() skipped. mIsScreenOn: false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    return-void

    .line 395
    :cond_2
    const/4 v3, 0x0

    .local v3, "procName":Ljava/lang/String;
    goto :goto_0

    .line 396
    .end local v3    # "procName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "ActStart"

    goto :goto_1

    .line 407
    :cond_4
    if-eqz p1, :cond_7

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_7

    .line 408
    :cond_5
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 409
    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterTail() skipped. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_a

    const-string/jumbo v4, "AppSwitch"

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " is not finished"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_6
    return-void

    .line 407
    :cond_7
    if-nez p1, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_5

    .line 413
    :cond_8
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_9

    .line 414
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "AMS_RESUME_TAIL"

    const/16 v6, 0x15

    invoke-static {v4, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 415
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 416
    .local v0, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v0, :cond_b

    .line 417
    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 409
    .end local v0    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_a
    const-string/jumbo v4, "ActStart"

    goto :goto_2

    .line 422
    .restart local v0    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_b
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 424
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5

    .line 426
    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "AMP_acquire() TAIL"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_3
    return-void

    .line 422
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "AMP_acquire() TAIL failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 430
    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AMP_acquire() TAIL failed. e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method static topStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 104
    packed-switch p0, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NO_STATE_NUM_OF_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :pswitch_0
    const-string/jumbo v0, "TOP_STATE_INIT"

    return-object v0

    .line 106
    :pswitch_1
    const-string/jumbo v0, "TOP_STATE_IS_CREATING"

    return-object v0

    .line 107
    :pswitch_2
    const-string/jumbo v0, "TOP_STATE_HOME"

    return-object v0

    .line 108
    :pswitch_3
    const-string/jumbo v0, "TOP_STATE_RECENTS_APP"

    return-object v0

    .line 109
    :pswitch_4
    const-string/jumbo v0, "TOP_STATE_APP"

    return-object v0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final unregisterReceiver()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 757
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 855
    if-nez p1, :cond_0

    .line 856
    return-void

    .line 857
    :cond_0
    const-string/jumbo v0, "ACTIVITY MANAGER AMP (dumpsys activity amp)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 854
    return-void
.end method

.method getCurBoostInfoStr()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 174
    const-string/jumbo v0, "===== ActivityManagerPerformance, getCurBoostInfoStr info ====="

    .line 175
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\nAMP_ENABLE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", AMP_PERF_ENABLE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mIsScreenOn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v1, :cond_1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\nTIMEOUT_ACT_RESUME: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", TIMEOUT_ACT_START: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", TIMEOUT_APP_SWITCH: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[curTopState] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rCurBoostAppSwitch] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rCurBoostActStart] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rCurBoostActResume] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rLastActTail] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rLastActHome] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rLastRelaunchResume] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n===== ActivityManagerPerformance, getCurBoostInfoStr end  ====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    return-object v0

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\nTIMEOUT_PREV_RESUME: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move-object v1, v2

    .line 182
    goto/16 :goto_1

    :cond_3
    move-object v1, v2

    .line 183
    goto/16 :goto_2

    :cond_4
    move-object v1, v2

    .line 184
    goto/16 :goto_3

    :cond_5
    move-object v1, v2

    .line 185
    goto/16 :goto_4

    :cond_6
    move-object v1, v2

    .line 186
    goto/16 :goto_5
.end method

.method public isHomeKeyPressed()V
    .locals 4

    .prologue
    .line 735
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 736
    const-string/jumbo v0, "isHomeKeyPressed()"

    .line 737
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "isHomeKeyPressed() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_0

    .line 739
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHomeKeyPressed() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 743
    .end local v0    # "method":Ljava/lang/String;
    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v1, :cond_1

    .line 745
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    .line 734
    return-void

    .line 744
    :cond_1
    return-void
.end method

.method onActivityRelaunchLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z

    .prologue
    .line 694
    const-string/jumbo v0, "onActivityRelaunchLocked()"

    .line 695
    .local v0, "method":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 696
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityRelaunchLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "), andResume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_0

    .line 698
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityRelaunchLocked() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 702
    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    if-nez v1, :cond_1

    .line 703
    return-void

    .line 704
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_3

    .line 705
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 706
    const-string/jumbo v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "onActivityRelaunchLocked() skipped. mIsScreenOn: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_2
    return-void

    .line 709
    :cond_3
    if-eqz p2, :cond_4

    .line 710
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterRelaunchResume(Lcom/android/server/am/ActivityRecord;)V

    .line 693
    :cond_4
    return-void
.end method

.method onActivityResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 615
    const-string/jumbo v0, "onActivityResumeLocked()"

    .line 616
    .local v0, "method":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 617
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_0

    .line 619
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v1, :cond_1

    .line 624
    return-void

    .line 625
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v1, :cond_2

    .line 626
    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 627
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_4

    .line 628
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 629
    const-string/jumbo v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "onActivityResumeLocked() skipped. mIsScreenOn: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_3
    return-void

    .line 632
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v1, :cond_6

    .line 633
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 634
    const-string/jumbo v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "onActivityResumeLocked() skipped. needSkipResume is true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_5
    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    .line 636
    return-void

    .line 638
    :cond_6
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v1, :cond_a

    .line 639
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 640
    :cond_7
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 641
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_8
    return-void

    .line 644
    :cond_9
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    .line 614
    :goto_0
    return-void

    .line 646
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 647
    invoke-direct {p0, v5, v5, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    .line 648
    return-void

    .line 650
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 651
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_c

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_e

    .line 654
    :cond_c
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 655
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_d
    return-void

    .line 652
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_f

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 651
    if-nez v1, :cond_c

    .line 653
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_10

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 651
    if-nez v1, :cond_c

    .line 658
    :cond_10
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    .line 659
    return-void

    .line 661
    :cond_11
    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 662
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_12

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_14

    .line 666
    :cond_12
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 667
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_13
    return-void

    .line 662
    :cond_14
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_12

    .line 663
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 662
    if-nez v1, :cond_12

    .line 664
    :cond_15
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 662
    if-nez v1, :cond_12

    .line 665
    :cond_16
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_17

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 662
    if-nez v1, :cond_12

    .line 670
    :cond_17
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .line 672
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_1c

    .line 673
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_19

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_1b

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 674
    :cond_19
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_1a

    .line 675
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_1a
    return-void

    .line 678
    :cond_1b
    iput-boolean v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 679
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .line 681
    :cond_1c
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_1f

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 682
    :cond_1d
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 683
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_1e
    return-void

    .line 686
    :cond_1f
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0
.end method

.method onActivityStartLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 563
    const-string/jumbo v0, "onActivityStartLocked()"

    .line 564
    .local v0, "method":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 565
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_0

    .line 567
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v1, :cond_1

    .line 572
    return-void

    .line 573
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v1, :cond_2

    .line 574
    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 575
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_4

    .line 576
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 577
    const-string/jumbo v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "onActivityStartLocked() skipped. mIsScreenOn: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_3
    return-void

    .line 580
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v1, :cond_5

    .line 581
    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    .line 582
    :cond_5
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v1, :cond_6

    .line 583
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    .line 584
    return-void

    .line 586
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 587
    invoke-direct {p0, v5, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    .line 588
    return-void

    .line 590
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 591
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    .line 592
    return-void

    .line 594
    :cond_8
    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 595
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_b

    .line 598
    :cond_9
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 599
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_a
    return-void

    .line 596
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 595
    if-nez v1, :cond_9

    .line 597
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 595
    if-nez v1, :cond_9

    .line 602
    :cond_d
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    .line 562
    :goto_0
    return-void

    .line 604
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_f

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 605
    :cond_f
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_10

    .line 606
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_10
    return-void

    .line 609
    :cond_11
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method onActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 714
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 715
    const-string/jumbo v0, "onActivityVisibleLocked()"

    .line 716
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityVisibleLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_0

    .line 718
    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityVisibleLocked() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 722
    .end local v0    # "method":Ljava/lang/String;
    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v1, :cond_1

    .line 723
    return-void

    .line 724
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v1, :cond_2

    .line 725
    iput-boolean v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 726
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_3

    .line 727
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    .line 728
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_4

    .line 729
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    .line 730
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_5

    .line 731
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    .line 713
    :cond_5
    return-void
.end method
