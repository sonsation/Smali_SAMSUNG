.class public Lcom/samsung/android/rlc/service/RmmTask;
.super Ljava/lang/Object;
.source "RmmTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;,
        Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;
    }
.end annotation


# static fields
.field public static final BOOT:I = 0x0

.field public static final CHECK_INIT_STATUS:I = 0x7

.field private static final CscFeature_RMM_EnableCode:Ljava/lang/String; = "CscFeature_Common_SupportRmm"

.field public static final DELIVERY_REPORT:I = 0x2

.field public static final GCM_MG_REGISTRATION:I = 0x5

.field public static final GCM_PUSH_REG:I = 0x3

.field private static final GCM_RCV_PERMISSION:Ljava/lang/String; = "com.google.android.c2dm.permission.SEND"

.field public static final INIT:I = 0x1

.field private static final INTENT_GCM_RECEIVE:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final INTENT_GCM_REG_CANCEL:Ljava/lang/String; = "android.intent.action.REGISTRATION_CANCELED"

.field private static final INTENT_GCM_REG_COMPETE:Ljava/lang/String; = "android.intent.action.REGISTRATION_COMPLETED"

.field private static final INTENT_GCM_REG_ID:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field private static final INTENT_INIT_DVC:Ljava/lang/String; = "com.samsung.android.rmm.initialize"

.field private static final INTENT_INIT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field private static final INTENT_RETRY_C2DMREG:Ljava/lang/String; = "com.samsung.android.rlc.C2DM_REGISTRATION_RETRY"

.field private static final INTENT_RETRY_CEHCKDVC:Ljava/lang/String; = "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

.field private static final INTENT_RETRY_COMPETE:Ljava/lang/String; = "com.samsung.android.rlc.COMPLETE_RETRY"

.field private static final INTENT_RETRY_DELIVERY:Ljava/lang/String; = "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

.field private static final INTENT_RETRY_GCMREG:Ljava/lang/String; = "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

.field private static final INTENT_RETRY_GCMREQ:Ljava/lang/String; = "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

.field private static final INTENT_RETRY_HTTP:Ljava/lang/String; = "com.samsung.android.rlc.HTTP_REQUEST_RETRY"

.field private static final INTENT_RETRY_PREPARE:Ljava/lang/String; = "com.samsung.android.rlc.PREPARE_RETRY"

.field private static final INTENT_RETRY_REPORT:Ljava/lang/String; = "com.samsung.android.rlc.REPORT_RETRY"

.field private static final INTENT_RETRY_SPPREG_:Ljava/lang/String; = "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

.field private static final INTENT_RETRY_SPPREQ:Ljava/lang/String; = "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

.field private static final INTENT_RETRY_TOKEN:Ljava/lang/String; = "com.samsung.android.rlc.TOKEN_RETRY"

.field private static final INTENT_RETRY_UNLOCK_ALERT:Ljava/lang/String; = "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

.field private static final INTENT_SPP_ACK_RESULT:Ljava/lang/String; = "com.sec.spp.NotificationAckResultAction"

.field private static final INTENT_SPP_ERROR:Ljava/lang/String; = "com.sec.spp.ServiceAbnormallyStoppedAction"

.field private static final INTENT_SPP_MESSAGE:Ljava/lang/String; = "eb850acb179b3447"

.field private static final INTENT_SPP_REG_CHANGE:Ljava/lang/String; = "com.sec.spp.RegistrationChangedAction"

.field private static final INTENT_SYS_BOOT_COMPLETE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final INTENT_SYS_NOTI_CANCLE:Ljava/lang/String; = "android.intent.action.NOTI_CANCELED"

.field private static final INTENT_WAKE_UP_CLIENT:Ljava/lang/String; = "com.samsung.remotelock.CLIENT_WAKEUP"

.field public static final RLC_CLEAR:I = 0xd

.field public static final RLC_COMPLETE:I = 0xa

.field public static final RLC_NOT_SUPPORT:I = 0xc

.field public static final RLC_PREPARE:I = 0x9

.field public static final RLC_REG_RCV:I = 0xe

.field public static final RLC_RESULT_REPORT:I = 0xb

.field protected static final RMM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.rlc"

.field public static final SPP_MG_REGISTRATION:I = 0x6

.field public static final SPP_PUSH_REG:I = 0x4

.field private static final SYS_PERMISSION:Ljava/lang/String; = "com.sec.pcw.device.permission.PROTECT_SYSTEM"

.field static final TAG:Ljava/lang/String;

.field public static final UNKNOWN:I = -0x1

.field public static final UNLOCK_REPORT:I = 0x8

.field private static rmmTask:Lcom/samsung/android/rlc/service/RmmTask;


# instance fields
.field private mContext:Landroid/content/Context;

.field private queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;

    const-class v0, Lcom/samsung/android/rlc/service/RmmTask;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    .line 45
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "RmmTask created"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;-><init>(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/rlc/service/RmmTask;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/service/RmmTask;
    .locals 2

    .prologue
    const-class v1, Lcom/samsung/android/rlc/service/RmmTask;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/rlc/service/RmmTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/service/RmmTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getOperationName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 78
    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    .line 79
    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    .line 80
    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    .line 81
    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    .line 82
    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    .line 83
    if-eq p0, v0, :cond_6

    const/4 v0, 0x7

    .line 84
    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    .line 85
    if-eq p0, v0, :cond_8

    const/16 v0, 0xc

    .line 86
    if-eq p0, v0, :cond_9

    const/16 v0, 0xb

    .line 87
    if-eq p0, v0, :cond_a

    const/16 v0, 0xa

    .line 88
    if-eq p0, v0, :cond_b

    const/16 v0, 0x9

    .line 89
    if-eq p0, v0, :cond_c

    const/16 v0, 0xd

    .line 90
    if-eq p0, v0, :cond_d

    const/16 v0, 0xe

    .line 91
    if-eq p0, v0, :cond_e

    const-string/jumbo v0, "UNKNOWN"

    .line 92
    return-object v0

    :cond_0
    const-string/jumbo v0, "BOOT"

    .line 77
    return-object v0

    :cond_1
    const-string/jumbo v0, "INIT"

    .line 78
    return-object v0

    :cond_2
    const-string/jumbo v0, "DELIVERY_REPORT"

    .line 79
    return-object v0

    :cond_3
    const-string/jumbo v0, "GCM_PUSH_REG"

    .line 80
    return-object v0

    :cond_4
    const-string/jumbo v0, "SPP_PUSH_REG"

    .line 81
    return-object v0

    :cond_5
    const-string/jumbo v0, "GCM_MG_REGISTRATION"

    .line 82
    return-object v0

    :cond_6
    const-string/jumbo v0, "SPP_MG_REGISTRATION"

    .line 83
    return-object v0

    :cond_7
    const-string/jumbo v0, "CHECK_INIT_STATUS"

    .line 84
    return-object v0

    :cond_8
    const-string/jumbo v0, "UNLOCK_REPORT"

    .line 85
    return-object v0

    :cond_9
    const-string/jumbo v0, "RLC_NOT_SUPPORT"

    .line 86
    return-object v0

    :cond_a
    const-string/jumbo v0, "RLC_RESULT_REPORT"

    .line 87
    return-object v0

    :cond_b
    const-string/jumbo v0, "RLC_COMPLETE"

    .line 88
    return-object v0

    :cond_c
    const-string/jumbo v0, "RLC_PREPARE"

    .line 89
    return-object v0

    :cond_d
    const-string/jumbo v0, "RLC_CREAR"

    .line 90
    return-object v0

    :cond_e
    const-string/jumbo v0, "RLC_REGISTRATION_RECEIVER"

    .line 91
    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v0, "type"

    const/4 v1, -0x1

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xe

    .line 98
    if-ne v0, v1, :cond_2

    .line 103
    :cond_0
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHandleIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/rlc/service/RmmTask;->getOperationName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    packed-switch v0, :pswitch_data_0

    .line 152
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :cond_2
    const/16 v1, 0xd

    .line 98
    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isRlcClear(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "RLC Cleared !!! "

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->init(Landroid/content/Context;)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->registerAtGCM(Landroid/content/Context;)V

    goto :goto_0

    .line 117
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->registerAtSPP(Landroid/content/Context;)V

    goto :goto_0

    .line 121
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->run(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    .line 131
    if-eqz v0, :cond_1

    const-string/jumbo v0, "Completed"

    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "clearOp"

    .line 133
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 139
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 143
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 146
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/rlc/service/RmmTask;->registerRcv(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.rlc"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 195
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PACKAGE NAME :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 198
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method private registerRcv(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 204
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[registerRcv]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ro.csc.sales_code"

    .line 205
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.security.vaultkeeper.feature"

    .line 206
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CSC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " , Rmm prop : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lcom/samsung/android/rlc/service/RmmTask;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "There is no RMM Client"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void

    :cond_1
    const-string/jumbo v0, "1"

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "rlc.cscFeature"

    .line 213
    invoke-static {p1, v0}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportRmm"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 216
    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CscFeature_RMM_EnableCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz v1, :cond_3

    .line 219
    :cond_2
    new-instance v0, Lcom/samsung/android/rlc/receiver/GCMReceiver;

    invoke-direct {v0}, Lcom/samsung/android/rlc/receiver/GCMReceiver;-><init>()V

    .line 220
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.google.android.c2dm.intent.RECEIVE"

    .line 221
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.rlc"

    .line 222
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v2, "com.google.android.c2dm.permission.SEND"

    .line 223
    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.c2dm.intent.REGISTRATION"

    .line 224
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.rlc"

    .line 225
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v2, "com.google.android.c2dm.permission.SEND"

    .line 226
    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.REGISTRATION_COMPLETED"

    .line 227
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.google.android.c2dm.permission.SEND"

    .line 228
    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.REGISTRATION_CANCELED"

    .line 229
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.google.android.c2dm.permission.SEND"

    .line 230
    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    new-instance v1, Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;

    invoke-direct {v1}, Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;-><init>()V

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    .line 234
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.pcw.device.permission.PROTECT_SYSTEM"

    .line 235
    invoke-virtual {p1, v1, v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.NOTI_CANCELED"

    .line 236
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.pcw.device.permission.PROTECT_SYSTEM"

    .line 237
    invoke-virtual {p1, v1, v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    new-instance v1, Lcom/samsung/android/rlc/receiver/WakeUPReceiver;

    invoke-direct {v1}, Lcom/samsung/android/rlc/receiver/WakeUPReceiver;-><init>()V

    const-string/jumbo v2, "com.samsung.remotelock.CLIENT_WAKEUP"

    .line 241
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "rlc"

    .line 242
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v2, "operation.initialize"

    .line 243
    invoke-virtual {v0, v2, v5}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    new-instance v1, Lcom/samsung/android/rlc/receiver/RetryReceiver;

    invoke-direct {v1}, Lcom/samsung/android/rlc/receiver/RetryReceiver;-><init>()V

    const-string/jumbo v2, "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

    .line 248
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.C2DM_REGISTRATION_RETRY"

    .line 250
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

    .line 252
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.TOKEN_RETRY"

    .line 254
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.HTTP_REQUEST_RETRY"

    .line 256
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.COMPLETE_RETRY"

    .line 258
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.PREPARE_RETRY"

    .line 260
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

    .line 262
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    .line 264
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.REPORT_RETRY"

    .line 266
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

    .line 268
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

    .line 270
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

    .line 272
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 276
    new-instance v1, Lcom/samsung/android/rlc/receiver/SPPReceiver;

    invoke-direct {v1}, Lcom/samsung/android/rlc/receiver/SPPReceiver;-><init>()V

    const-string/jumbo v2, "eb850acb179b3447"

    .line 277
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.spp.NotificationAckResultAction"

    .line 279
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.spp.RegistrationChangedAction"

    .line 281
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.spp.ServiceAbnormallyStoppedAction"

    .line 283
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    new-instance v1, Lcom/samsung/android/rlc/receiver/InitalizeReceiver;

    invoke-direct {v1}, Lcom/samsung/android/rlc/receiver/InitalizeReceiver;-><init>()V

    const-string/jumbo v2, "com.samsung.android.rmm.initialize"

    .line 288
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.permission.RMM_INIT"

    .line 289
    invoke-virtual {p1, v1, v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 291
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    new-instance v1, Lcom/samsung/android/rlc/receiver/UnlockReceiver;

    invoke-direct {v1}, Lcom/samsung/android/rlc/receiver/UnlockReceiver;-><init>()V

    const-string/jumbo v2, "com.samsung.android.action.RMM_BLINK_UNLOCK"

    .line 293
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.permission.RMM_INIT"

    .line 294
    invoke-virtual {p1, v1, v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 299
    return-void

    :cond_3
    const-string/jumbo v1, "true"

    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/util/RLCUtil;->isRMMEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "This device not support rmm service"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public static startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 4

    .prologue
    .line 303
    if-nez p0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    .line 303
    if-eq p2, v0, :cond_0

    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "type"

    .line 305
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    if-nez p1, :cond_2

    .line 311
    :goto_1
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/rlc/service/RmmTask;->getOperationName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {p0}, Lcom/samsung/android/rlc/service/RmmTask;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/service/RmmTask;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    new-instance v2, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;

    invoke-direct {v2, v0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->add(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;)V

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1
.end method
