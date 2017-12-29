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

.field private static final INTENT_RETRY_THEFT:Ljava/lang/String; = "com.samsung.android.rlc.THEFT_PROTECTION_RETRY"

.field private static final INTENT_RETRY_TOKEN:Ljava/lang/String; = "com.samsung.android.rlc.TOKEN_RETRY"

.field private static final INTENT_RETRY_UNLOCK_ALERT:Ljava/lang/String; = "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

.field private static final INTENT_SPP_ACK_RESULT:Ljava/lang/String; = "com.sec.spp.NotificationAckResultAction"

.field private static final INTENT_SPP_ERROR:Ljava/lang/String; = "com.sec.spp.ServiceAbnormallyStoppedAction"

.field private static final INTENT_SPP_MESSAGE:Ljava/lang/String; = "eb850acb179b3447"

.field private static final INTENT_SPP_REG_CHANGE:Ljava/lang/String; = "com.sec.spp.RegistrationChangedAction"

.field private static final INTENT_SYS_BOOT_COMPLETE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final INTENT_SYS_NOTI_CANCLE:Ljava/lang/String; = "android.intent.action.NOTI_CANCELED"

.field private static final INTENT_SYS_TIME_CHANGE:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field private static final INTENT_WAKE_UP_CLIENT:Ljava/lang/String; = "com.samsung.remotelock.CLIENT_WAKEUP"

.field public static final RLC_CLEAR:I = 0xd

.field public static final RLC_COMPLETE:I = 0xa

.field public static final RLC_NOT_SUPPORT:I = 0xc

.field public static final RLC_PREPARE:I = 0x9

.field public static final RLC_REG_RCV:I = 0xe

.field public static final RLC_RESULT_REPORT:I = 0xb

.field public static final RLC_THEFT_PROTECTION_RELEASE:I = 0xf

.field protected static final RMM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.rlc"

.field public static final SPP_MG_REGISTRATION:I = 0x6

.field public static final SPP_PUSH_REG:I = 0x4

.field private static final SYS_PERMISSION:Ljava/lang/String; = "com.sec.pcw.device.permission.PROTECT_SYSTEM"

.field static final TAG:Ljava/lang/String;

.field public static final UNKNOWN:I = -0x1

.field public static final UNLOCK_REPORT:I = 0x8

.field private static connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

.field private static connRegTime:J

.field private static rmmTask:Lcom/samsung/android/rlc/service/RmmTask;


# instance fields
.field private mContext:Landroid/content/Context;

.field private queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/rlc/service/RmmTask;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;

    .line 61
    const-class v0, Lcom/samsung/android/rlc/service/RmmTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    .line 456
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/rlc/service/RmmTask;->connRegTime:J

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    .line 49
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v1, "RmmTask created"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;-><init>(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/service/RmmTask;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/samsung/android/rlc/service/RmmTask;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/samsung/android/rlc/service/RmmTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/service/RmmTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;

    .line 58
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getOperationName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 82
    if-nez p0, :cond_0

    const-string v0, "BOOT"

    return-object v0

    .line 83
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "INIT"

    return-object v0

    .line 84
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "DELIVERY_REPORT"

    return-object v0

    .line 85
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "GCM_PUSH_REG"

    return-object v0

    .line 86
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "SPP_PUSH_REG"

    return-object v0

    .line 87
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string v0, "GCM_MG_REGISTRATION"

    return-object v0

    .line 88
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string v0, "SPP_MG_REGISTRATION"

    return-object v0

    .line 89
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string v0, "CHECK_INIT_STATUS"

    return-object v0

    .line 90
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string v0, "UNLOCK_REPORT"

    return-object v0

    .line 91
    :cond_8
    const/16 v0, 0xc

    if-ne p0, v0, :cond_9

    const-string v0, "RLC_NOT_SUPPORT"

    return-object v0

    .line 92
    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const-string v0, "RLC_RESULT_REPORT"

    return-object v0

    .line 93
    :cond_a
    const/16 v0, 0xa

    if-ne p0, v0, :cond_b

    const-string v0, "RLC_COMPLETE"

    return-object v0

    .line 94
    :cond_b
    const/16 v0, 0x9

    if-ne p0, v0, :cond_c

    const-string v0, "RLC_PREPARE"

    return-object v0

    .line 95
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string v0, "RLC_CREAR"

    return-object v0

    .line 96
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string v0, "RLC_REGISTRATION_RECEIVER"

    return-object v0

    .line 97
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string v0, "RLC_THEFT_PROTECTION_RELEASE"

    return-object v0

    .line 98
    :cond_f
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 104
    .local v2, "type":I
    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isRlcClear(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    sget-object v3, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v4, "RLC Cleared !!! "

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 109
    :cond_0
    sget-object v3, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/rlc/service/RmmTask;->getOperationName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    packed-switch v2, :pswitch_data_0

    .line 101
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 114
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->init(Landroid/content/Context;)V

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->registerAtGCM(Landroid/content/Context;)V

    goto :goto_0

    .line 123
    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->registerAtSPP(Landroid/content/Context;)V

    goto :goto_0

    .line 127
    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    :pswitch_6
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :pswitch_7
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->run(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    .line 137
    .local v1, "resultReport":Z
    if-eqz v1, :cond_1

    const-string v3, "Completed"

    iget-object v4, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v0, "clearBundle":Landroid/os/Bundle;
    const-string v3, "clearOp"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    const/16 v4, 0xc

    invoke-static {v3, v0, v4}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 145
    .end local v0    # "clearBundle":Landroid/os/Bundle;
    .end local v1    # "resultReport":Z
    :pswitch_9
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 149
    :pswitch_a
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    :pswitch_b
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/rlc/service/RmmTask;->registerRcv(Landroid/content/Context;)V

    goto :goto_0

    .line 155
    :pswitch_c
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/rlc/receiver/handler/TheftProtectionHandler;->makeTheftBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/receiver/handler/TheftProtectionHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_0

    nop

    .line 111
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
        :pswitch_c
    .end packed-switch
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.rlc"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 206
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PACKAGE NAME :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    const/4 v2, 0x1

    return v2

    .line 208
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v2, 0x0

    return v2
.end method

.method public static regConnReceiver(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v6, 0x44aa200

    .line 458
    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v3, "Register Connectivity Receiver"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :try_start_0
    sget-wide v2, Lcom/samsung/android/rlc/service/RmmTask;->connRegTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/rlc/service/RmmTask;->connRegTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 461
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/rlc/service/RmmTask;->connRegTime:J

    .line 466
    :cond_1
    new-instance v2, Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

    invoke-direct {v2}, Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;-><init>()V

    sput-object v2, Lcom/samsung/android/rlc/service/RmmTask;->connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

    .line 468
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 469
    .local v1, "networkIntentfilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    .end local v1    # "networkIntentfilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 462
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/rlc/service/RmmTask;->connRegTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    .line 463
    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v3, "Previous register time is small then max back off"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerRcv(Landroid/content/Context;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const-string v29, "ro.csc.sales_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 216
    .local v19, "salesCode":Ljava/lang/String;
    const-string v29, "ro.security.vaultkeeper.feature"

    invoke-static/range {v29 .. v29}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 217
    .local v22, "supportRMM":Ljava/lang/String;
    sget-object v29, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CSC : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " , Rmm prop : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", VaultKeeper : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/service/RmmTask;->isInstalled(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_7

    const-string v29, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 223
    const-string v29, "rlc.cscFeature"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 225
    .local v8, "cscEnableInProp":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v29

    const-string v30, "CscFeature_Common_SupportRmm"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 226
    .local v7, "cscEnable":Z
    if-eqz v7, :cond_0

    .line 227
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v29

    const-string v30, "cscEnable"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v29

    const-string v30, "cscEnable"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 230
    .local v9, "cscEnableInSecure":Ljava/lang/String;
    sget-object v29, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CscFeature_RMM_EnableCode : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ,"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ,"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2

    :cond_1
    if-nez v7, :cond_2

    .line 233
    const-string v29, "true"

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 232
    if-nez v29, :cond_2

    .line 233
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/rlc/util/RLCUtil;->isRMMEnable()Z

    move-result v29

    .line 232
    if-eqz v29, :cond_a

    .line 234
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v17

    .line 236
    .local v17, "rlcStatus":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 237
    .local v18, "rmmPkgVer":Ljava/lang/String;
    const-string v29, "Completed"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    const-string v29, "factoryReset"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 238
    :cond_3
    const-string v29, "Prenormal"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 237
    if-nez v29, :cond_4

    .line 238
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    .line 237
    if-eqz v29, :cond_5

    .line 238
    :cond_4
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v29

    if-eqz v29, :cond_8

    .line 251
    .end local v18    # "rmmPkgVer":Ljava/lang/String;
    :cond_5
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v29

    const-string v30, "bootTime"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "boot":Ljava/lang/String;
    sget-object v29, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "There is no boot Time : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v29

    const-string v30, "bootTime"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v6    # "boot":Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/rlc/util/RLCUtil;->checkRMMFunctions()Z

    move-result v29

    if-nez v29, :cond_9

    .line 259
    sget-object v29, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v30, "Error in RMM Function"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    return-void

    .line 220
    .end local v7    # "cscEnable":Z
    .end local v8    # "cscEnableInProp":Ljava/lang/String;
    .end local v9    # "cscEnableInSecure":Ljava/lang/String;
    .end local v17    # "rlcStatus":Ljava/lang/String;
    :cond_7
    sget-object v29, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v30, "There is no RMM Client"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void

    .line 238
    .restart local v7    # "cscEnable":Z
    .restart local v8    # "cscEnableInProp":Ljava/lang/String;
    .restart local v9    # "cscEnableInSecure":Ljava/lang/String;
    .restart local v17    # "rlcStatus":Ljava/lang/String;
    .restart local v18    # "rmmPkgVer":Ljava/lang/String;
    :cond_8
    :try_start_2
    const-string v29, "2.0.00"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-ltz v29, :cond_5

    .line 239
    sget-object v29, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v30, "Theft protection support device"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/rlc/util/RLCUtil;->setTheftProtection()V

    .line 241
    const-string v29, "Prenormal"

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 242
    sget-object v29, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v30, "Device Status is prenormal"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v29, "theftptc"

    const-string v30, "Y"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 246
    .end local v18    # "rmmPkgVer":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 247
    .local v10, "e":Ljava/lang/Exception;
    sget-object v29, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 262
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 263
    .restart local v10    # "e":Ljava/lang/Exception;
    sget-object v29, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception in RMMManager : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void

    .line 266
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v29, "boot_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    sub-long v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v29, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v30, "[registerRcv]"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v11, Lcom/samsung/android/rlc/receiver/GCMReceiver;

    invoke-direct {v11}, Lcom/samsung/android/rlc/receiver/GCMReceiver;-><init>()V

    .line 269
    .local v11, "gcmReceiver":Lcom/samsung/android/rlc/receiver/GCMReceiver;
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v14, "intentfilter":Landroid/content/IntentFilter;
    const-string v29, "com.google.android.c2dm.intent.RECEIVE"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v29, "com.samsung.android.rlc"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 272
    const-string v29, "com.google.android.c2dm.permission.SEND"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 273
    const-string v29, "com.google.android.c2dm.intent.REGISTRATION"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v29, "com.samsung.android.rlc"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 275
    const-string v29, "com.google.android.c2dm.permission.SEND"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 276
    const-string v29, "android.intent.action.REGISTRATION_COMPLETED"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v29, "com.google.android.c2dm.permission.SEND"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 278
    const-string v29, "android.intent.action.REGISTRATION_CANCELED"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v29, "com.google.android.c2dm.permission.SEND"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 281
    new-instance v23, Landroid/content/IntentFilter;

    invoke-direct/range {v23 .. v23}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    .local v23, "sysIntentfilter":Landroid/content/IntentFilter;
    new-instance v24, Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;

    invoke-direct/range {v24 .. v24}, Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;-><init>()V

    .line 283
    .local v24, "systemReceiver":Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;
    const-string v29, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v29, "com.sec.pcw.device.permission.PROTECT_SYSTEM"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 285
    const-string v29, "android.intent.action.NOTI_CANCELED"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v29, "com.sec.pcw.device.permission.PROTECT_SYSTEM"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 287
    const-string v29, "android.intent.action.TIME_SET"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    const-string v29, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    new-instance v27, Landroid/content/IntentFilter;

    invoke-direct/range {v27 .. v27}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    .local v27, "wakeIntentfilter":Landroid/content/IntentFilter;
    new-instance v28, Lcom/samsung/android/rlc/receiver/WakeUPReceiver;

    invoke-direct/range {v28 .. v28}, Lcom/samsung/android/rlc/receiver/WakeUPReceiver;-><init>()V

    .line 294
    .local v28, "wakeupReceiver":Lcom/samsung/android/rlc/receiver/WakeUPReceiver;
    const-string v29, "com.samsung.remotelock.CLIENT_WAKEUP"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v29, "rlc"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 296
    const-string v29, "operation.initialize"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v15, "retIntentfilter":Landroid/content/IntentFilter;
    new-instance v16, Lcom/samsung/android/rlc/receiver/RetryReceiver;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/rlc/receiver/RetryReceiver;-><init>()V

    .line 301
    .local v16, "retryReceiver":Lcom/samsung/android/rlc/receiver/RetryReceiver;
    const-string v29, "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    const-string v29, "com.samsung.android.rlc.C2DM_REGISTRATION_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    const-string v29, "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    const-string v29, "com.samsung.android.rlc.TOKEN_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    const-string v29, "com.samsung.android.rlc.HTTP_REQUEST_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    const-string v29, "com.samsung.android.rlc.COMPLETE_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    const-string v29, "com.samsung.android.rlc.PREPARE_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    const-string v29, "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    const-string v29, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    const-string v29, "com.samsung.android.rlc.REPORT_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    const-string v29, "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    const-string v29, "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    const-string v29, "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    const-string v29, "com.samsung.android.rlc.THEFT_PROTECTION_RETRY"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    const-string v29, "com.samsung.android.rlc.SECOND_CHECK_DEVICE"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    const-string v29, "com.samsung.android.rlc.THIRD_CHECK_DEVICE"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    new-instance v20, Landroid/content/IntentFilter;

    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v20, "sppIntentfilter":Landroid/content/IntentFilter;
    new-instance v21, Lcom/samsung/android/rlc/receiver/SPPReceiver;

    invoke-direct/range {v21 .. v21}, Lcom/samsung/android/rlc/receiver/SPPReceiver;-><init>()V

    .line 336
    .local v21, "sppRecevier":Lcom/samsung/android/rlc/receiver/SPPReceiver;
    const-string v29, "eb850acb179b3447"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    const-string v29, "com.sec.spp.NotificationAckResultAction"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    const-string v29, "com.sec.spp.RegistrationChangedAction"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    const-string v29, "com.sec.spp.ServiceAbnormallyStoppedAction"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .local v12, "initFilter":Landroid/content/IntentFilter;
    new-instance v13, Lcom/samsung/android/rlc/receiver/InitalizeReceiver;

    invoke-direct {v13}, Lcom/samsung/android/rlc/receiver/InitalizeReceiver;-><init>()V

    .line 347
    .local v13, "initReceiver":Lcom/samsung/android/rlc/receiver/InitalizeReceiver;
    const-string v29, "com.samsung.android.rmm.initialize"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v29, "com.samsung.android.permission.RMM_INIT"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v13, v12, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 350
    new-instance v25, Landroid/content/IntentFilter;

    invoke-direct/range {v25 .. v25}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v25, "unlockFilter":Landroid/content/IntentFilter;
    new-instance v26, Lcom/samsung/android/rlc/receiver/UnlockReceiver;

    invoke-direct/range {v26 .. v26}, Lcom/samsung/android/rlc/receiver/UnlockReceiver;-><init>()V

    .line 352
    .local v26, "unlockReceiver":Lcom/samsung/android/rlc/receiver/UnlockReceiver;
    const-string v29, "com.samsung.android.action.RMM_BLINK_UNLOCK"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v29, "com.samsung.android.permission.RMM_INIT"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 214
    return-void

    .line 356
    .end local v11    # "gcmReceiver":Lcom/samsung/android/rlc/receiver/GCMReceiver;
    .end local v12    # "initFilter":Landroid/content/IntentFilter;
    .end local v13    # "initReceiver":Lcom/samsung/android/rlc/receiver/InitalizeReceiver;
    .end local v14    # "intentfilter":Landroid/content/IntentFilter;
    .end local v15    # "retIntentfilter":Landroid/content/IntentFilter;
    .end local v16    # "retryReceiver":Lcom/samsung/android/rlc/receiver/RetryReceiver;
    .end local v17    # "rlcStatus":Ljava/lang/String;
    .end local v20    # "sppIntentfilter":Landroid/content/IntentFilter;
    .end local v21    # "sppRecevier":Lcom/samsung/android/rlc/receiver/SPPReceiver;
    .end local v23    # "sysIntentfilter":Landroid/content/IntentFilter;
    .end local v24    # "systemReceiver":Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;
    .end local v25    # "unlockFilter":Landroid/content/IntentFilter;
    .end local v26    # "unlockReceiver":Lcom/samsung/android/rlc/receiver/UnlockReceiver;
    .end local v27    # "wakeIntentfilter":Landroid/content/IntentFilter;
    .end local v28    # "wakeupReceiver":Lcom/samsung/android/rlc/receiver/WakeUPReceiver;
    :cond_a
    sget-object v29, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v30, "This device not support rmm service"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public static startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "type"    # I

    .prologue
    .line 363
    if-eqz p0, :cond_1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v0, "taskIntent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 371
    :cond_0
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/rlc/service/RmmTask;->getOperationName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {p0}, Lcom/samsung/android/rlc/service/RmmTask;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/service/RmmTask;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    new-instance v2, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;

    invoke-direct {v2, v0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->add(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;)V

    .line 362
    .end local v0    # "taskIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static unregConnReceiver(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v2, "Unregister Connectivity Receiver"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :try_start_0
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

    if-eqz v1, :cond_0

    .line 481
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 482
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/rlc/service/RmmTask;->connReceiver:Lcom/samsung/android/rlc/receiver/ConnectivityReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
