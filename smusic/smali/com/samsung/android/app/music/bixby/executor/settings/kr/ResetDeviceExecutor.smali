.class public Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;
.super Ljava/lang/Object;
.source "ResetDeviceExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->mActivity:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    .line 39
    return-void
.end method

.method private executeAction(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;>;"
    const/4 v4, 0x1

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v1, "DownloadingDevice"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 64
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeAction() - device count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->mActivity:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->showDeviceDeregisterDialog()V

    .line 67
    const-string v1, "DownloadDevice"

    const-string v2, "Exist"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v2, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->TAG:Ljava/lang/String;

    const-string v2, "executeAction() - no registered device exist"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "DownloadDevice"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v2, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 4
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    const-string v1, "RESET_DOWNLOAD_DEVICE"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->mActivity:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getData()Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    .local v0, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;>;"
    if-eqz v0, :cond_0

    .line 48
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->TAG:Ljava/lang/String;

    const-string v2, "execute() - device list data exist"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->executeAction(Ljava/util/ArrayList;)V

    .line 56
    :goto_0
    const/4 v1, 0x1

    .line 58
    .end local v0    # "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;>;"
    :goto_1
    return v1

    .line 51
    .restart local v0    # "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;>;"
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->TAG:Ljava/lang/String;

    const-string v2, "execute() - device list data not exist, waiting server response"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->mActivity:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    const/16 v2, 0x27e8

    .line 53
    invoke-virtual {v1, v2, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->registerBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    goto :goto_0

    .line 58
    .end local v0    # "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 78
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 82
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    packed-switch p3, :pswitch_data_0

    .line 93
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->executeAction(Ljava/util/ArrayList;)V

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->mActivity:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    const/16 v2, 0x27e8

    .line 96
    invoke-virtual {v1, v2, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unregisterBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 97
    return-void

    .line 85
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    instance-of v1, p4, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;

    if-eqz v1, :cond_0

    .line 86
    check-cast p4, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;

    .line 87
    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;->getDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    .local v0, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;>;"
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;->executeAction(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
