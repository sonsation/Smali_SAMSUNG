.class public Lcom/samsung/android/codecsolution/CodecSolutionManagerService;
.super Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;
.source "CodecSolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;
    }
.end annotation


# static fields
.field private static final CLASS_MHDR_META_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice.MhdrMetaService"

.field private static final CLASS_MHDR_PARAM_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice.MhdrParamService"

.field private static final CLASS_MHDR_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice.MhdrService"

.field private static final CLASS_SMARTFIT_SERVICE:Ljava/lang/String; = "com.samsung.android.smartfitting.SmartFittingService"

.field private static final INTENT_SMARTFIT_FOUND_BLACK_BAR:Ljava/lang/String; = "com.samsung.intent.action.FOUND_BLACK_BAR"

.field private static final PACKAGE_MHDR_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice"

.field private static final PACKAGE_SMARTFIT_SERVICE:Ljava/lang/String; = "com.samsung.android.smartfitting"

.field private static final TAG:Ljava/lang/String; = "CodecSolution"

.field public static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBlackbar:I

.field private mIsInWhiteList:I

.field private mSmartFittingConnection:Landroid/content/ServiceConnection;

.field private mSmartFittingMode:I

.field private mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Lcom/samsung/android/smartfitting/ISmartFittingService;)Lcom/samsung/android/smartfitting/ISmartFittingService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    .line 96
    new-instance v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;-><init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingConnection:Landroid/content/ServiceConnection;

    .line 34
    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    .line 36
    iput v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBlackbar:I

    .line 38
    iput v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsInWhiteList:I

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->startSmartFittingService()V

    .line 33
    return-void
.end method


# virtual methods
.method public checkblackbarstatus()I
    .locals 2

    .prologue
    .line 167
    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "checkblackbarstatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBlackbar:I

    return v0
.end method

.method public debug()V
    .locals 2

    .prologue
    .line 208
    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "debug!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public getSmartFittingMode()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I

    return v0
.end method

.method public getWhiteListStatus()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsInWhiteList:I

    return v0
.end method

.method public hideSmartFittingButton()V
    .locals 3

    .prologue
    .line 196
    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "hideSmartFittingButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    if-eqz v1, :cond_0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    invoke-interface {v1}, Lcom/samsung/android/smartfitting/ISmartFittingService;->hideSmartFittingButton()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMhdrEnable(I)V
    .locals 5
    .param p1, "enable"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    const-string/jumbo v2, "CodecSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMhdrEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.mhdrservice"

    const-string/jumbo v3, "com.samsung.android.mhdrservice.MhdrParamService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v2, "HDR-ENABLE"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 68
    return-void
.end method

.method public setMhdrMetaData(IIII)V
    .locals 4
    .param p1, "maxAvgLight"    # I
    .param p2, "maxContentLight"    # I
    .param p3, "maxDispL"    # I
    .param p4, "minDispL"    # I

    .prologue
    .line 78
    const-string/jumbo v1, "CodecSolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxAvgLight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string/jumbo v1, "CodecSolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxContentLight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string/jumbo v1, "CodecSolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxDispL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string/jumbo v1, "CodecSolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "minDispL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.mhdrservice"

    const-string/jumbo v2, "com.samsung.android.mhdrservice.MhdrMetaService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string/jumbo v1, "MaxAvgLight"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "MaxContentLight"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "MaxDispL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "MinDispL"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 77
    return-void
.end method

.method public setSmartFittingMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 146
    const-string/jumbo v0, "CodecSolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartFittingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I

    .line 145
    return-void
.end method

.method public setWhiteListStatus(I)V
    .locals 3
    .param p1, "whitelist"    # I

    .prologue
    .line 173
    const-string/jumbo v0, "CodecSolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWhiteListStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsInWhiteList:I

    .line 172
    return-void
.end method

.method public showSmartFittingButton()V
    .locals 3

    .prologue
    .line 184
    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "showSmartFittingButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    if-eqz v1, :cond_0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    invoke-interface {v1}, Lcom/samsung/android/smartfitting/ISmartFittingService;->showSmartFittingButton()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startMhdrService(ILjava/lang/String;)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "vendor"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string/jumbo v3, "CodecSolution"

    const-string/jumbo v4, "startMhdrService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string/jumbo v3, "CodecSolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.permission.USE_MHDR_SERVICE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 49
    .local v2, "perm":Z
    :goto_0
    const-string/jumbo v3, "CodecSolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "permission : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string/jumbo v3, "CodecSolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calling uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string/jumbo v3, "CodecSolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "my uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.mhdrservice"

    const-string/jumbo v4, "com.samsung.android.mhdrservice.MhdrService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v3, "pid"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const-string/jumbo v3, "vendor"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1

    .line 44
    .local v1, "name":Landroid/content/ComponentName;
    return-void

    .line 47
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "perm":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "perm":Z
    goto :goto_0
.end method

.method public declared-synchronized startSmartFittingService()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 114
    :try_start_0
    const-string/jumbo v2, "CodecSolution"

    const-string/jumbo v3, "startSmartFittingService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.smartfitting"

    const-string/jumbo v3, "com.samsung.android.smartfitting.SmartFittingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    if-nez v2, :cond_0

    .line 119
    const-string/jumbo v2, "CodecSolution"

    const-string/jumbo v3, "binder is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 113
    return-void

    .line 122
    :cond_0
    :try_start_1
    const-string/jumbo v2, "CodecSolution"

    const-string/jumbo v3, "binder is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    invoke-interface {v2}, Lcom/samsung/android/smartfitting/ISmartFittingService;->reinitSmartFittingService()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public stopMhdrService()V
    .locals 3

    .prologue
    .line 61
    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "stopMhdrService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.mhdrservice"

    const-string/jumbo v2, "com.samsung.android.mhdrservice.MhdrService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 60
    return-void
.end method

.method public declared-synchronized stopSmartFittingService()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 133
    :try_start_0
    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "stopSmartFittingService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    if-eqz v0, :cond_0

    .line 136
    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "binder is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->hideSmartFittingButton()V

    .line 141
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 132
    return-void

    .line 139
    :cond_0
    :try_start_1
    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateblackbarstatus(I)V
    .locals 3
    .param p1, "blackBarState"    # I

    .prologue
    .line 157
    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "updateblackbarstatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBlackbar:I

    .line 159
    if-lez p1, :cond_0

    .line 160
    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "sendBroadcast com.samsung.intent.action.FOUND_BLACK_BAR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.FOUND_BLACK_BAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    :cond_0
    return-void
.end method
