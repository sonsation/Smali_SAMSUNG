.class final Lcom/android/server/notification/ZenModeHelper$H;
.super Landroid/os/Handler;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    }
.end annotation


# static fields
.field private static final METRICS_PERIOD_MS:J = 0x1499700L

.field private static final MSG_APPLY_CONFIG:I = 0x4

.field private static final MSG_DISPATCH:I = 0x1

.field private static final MSG_METRICS:I = 0x2

.field private static final MSG_SET_CONFIG:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper$H;->postApplyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .locals 0
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;->postSetConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 1343
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1342
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    return-void
.end method

.method private postApplyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .prologue
    .line 1362
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;-><init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    .line 1361
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendMessage(Landroid/os/Message;)Z

    .line 1360
    return-void
.end method

.method private postDispatchOnZenModeChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1347
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    .line 1348
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessage(I)Z

    .line 1346
    return-void
.end method

.method private postMetricsTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1352
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    .line 1353
    const-wide/32 v0, 0x1499700

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1351
    return-void
.end method

.method private postSetConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1357
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;-><init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendMessage(Landroid/os/Message;)Z

    .line 1356
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1367
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1366
    :goto_0
    return-void

    .line 1369
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->-wrap3(Lcom/android/server/notification/ZenModeHelper;)V

    goto :goto_0

    .line 1372
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper$Metrics;->-wrap0(Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    goto :goto_0

    .line 1375
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    .line 1376
    .local v1, "configData":Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->-get0(Lcom/android/server/notification/ZenModeHelper;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    monitor-enter v3

    .line 1377
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v4, v1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->config:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->reason:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    .line 1376
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1381
    .end local v1    # "configData":Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    .line 1382
    .local v0, "applyConfigData":Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->config:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->reason:Ljava/lang/String;

    .line 1383
    iget-boolean v5, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->setRingerMode:Z

    .line 1382
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->-wrap2(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
