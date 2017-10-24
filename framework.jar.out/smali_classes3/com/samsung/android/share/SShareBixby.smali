.class public Lcom/samsung/android/share/SShareBixby;
.super Ljava/lang/Object;
.source "SShareBixby.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SShareBixby$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SShareBixby"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mBixbyGetDataReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeliveredPkgs:[Ljava/lang/String;

.field mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field final mHandler:Landroid/os/Handler;

.field private mIsBixbySuccess:Z

.field private mSlotAppName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/share/SShareBixby;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mDeliveredPkgs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mSlotAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby;->mSlotAppName:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;[Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "Pkgs"    # [Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/samsung/android/share/SShareBixby$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareBixby$1;-><init>(Lcom/samsung/android/share/SShareBixby;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mBixbyGetDataReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    .line 47
    iput-object p4, p0, Lcom/samsung/android/share/SShareBixby;->mDeliveredPkgs:[Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareBixby;->createExecutorCommandHandler()V

    .line 43
    return-void
.end method

.method private addReceiverForBixby()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.android.chooser.ACTION_EM_COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby;->mBixbyGetDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method private removeReceiverForBixby()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mBixbyGetDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    return-void
.end method


# virtual methods
.method public createExecutorCommandHandler()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "Chooser"

    .line 151
    new-instance v2, Lcom/samsung/android/share/SShareBixby$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/share/SShareBixby$2;-><init>(Lcom/samsung/android/share/SShareBixby;)V

    .line 150
    invoke-static {v0, v1, v2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->createInstance(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/share/executor/IExecutorCommandListener;)Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    .line 149
    return-void
.end method

.method public registerReceiverRequestCommand()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/samsung/android/share/SShareBixby;->addReceiverForBixby()V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    const-string/jumbo v1, "Chooser_State"

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->logEnterState(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->requestStateCommand(Landroid/content/Context;)V

    .line 89
    :cond_0
    return-void
.end method

.method public sendAppSelectionForBixby(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 56
    const-string/jumbo v1, "SShareBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectedPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.intelligence.executormanager"

    const-string/jumbo v3, "com.samsung.android.intelligence.executormanager.ExecutorManagerChooserReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v1, "command"

    const-string/jumbo v2, "app_selection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string/jumbo v1, "selectedPackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    iput-boolean v4, p0, Lcom/samsung/android/share/SShareBixby;->mIsBixbySuccess:Z

    .line 64
    invoke-virtual {p0, v4}, Lcom/samsung/android/share/SShareBixby;->sendStateCommandResponse(Z)V

    .line 55
    return-void
.end method

.method public sendNlgRequest(I)V
    .locals 4
    .param p1, "nlgType"    # I

    .prologue
    .line 71
    new-instance v0, Lcom/samsung/android/share/executor/data/NlgRequestInfo;

    const-string/jumbo v1, "CrossShareVia"

    invoke-direct {v0, v1}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "nri":Lcom/samsung/android/share/executor/data/NlgRequestInfo;
    if-nez p1, :cond_1

    .line 74
    const-string/jumbo v1, "AppName"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "No"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/share/executor/data/NlgRequestInfo;

    .line 81
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    const-string/jumbo v2, "Chooser"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->requestNlg(Ljava/lang/String;Lcom/samsung/android/share/executor/data/NlgRequestInfo;)V

    .line 82
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    .line 83
    const-string/jumbo v2, "failure"

    .line 82
    invoke-virtual {v1, v2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendStateCommandResponse(Ljava/lang/String;)V

    .line 70
    return-void

    .line 75
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 76
    const-string/jumbo v1, "AppName"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "No"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/share/executor/data/NlgRequestInfo;

    goto :goto_0

    .line 77
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 78
    const-string/jumbo v1, "AppName"

    const-string/jumbo v2, "Valid"

    const-string/jumbo v3, "No"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/share/executor/data/NlgRequestInfo;

    goto :goto_0
.end method

.method public sendStateCommandResponse(Z)V
    .locals 2
    .param p1, "bSet"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    if-nez v0, :cond_0

    .line 115
    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "sendResponse: mExecutorCommandHandler is null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendStateCommandResponse(Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendStateCommandResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/samsung/android/share/SShareBixby;->removeReceiverForBixby()V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    const-string/jumbo v1, "Chooser_State"

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->logExitState(Ljava/lang/String;)V

    .line 104
    iget-boolean v0, p0, Lcom/samsung/android/share/SShareBixby;->mIsBixbySuccess:Z

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/share/SShareBixby;->sendStateCommandResponse(Z)V

    .line 100
    :cond_0
    return-void
.end method
