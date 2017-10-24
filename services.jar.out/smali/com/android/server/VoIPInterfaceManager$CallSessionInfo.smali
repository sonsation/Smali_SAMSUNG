.class public Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
.super Ljava/lang/Object;
.source "VoIPInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoIPInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallSessionInfo"
.end annotation


# instance fields
.field private actionName:Ljava/lang/String;

.field private callCountInThisSession:I

.field private callNumber:Ljava/lang/String;

.field clientCallback:Landroid/os/IVoIPCallbackInterface;

.field private isIncoming:Ljava/lang/Boolean;

.field private mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

.field private packageName:Ljava/lang/String;

.field private remotePartyNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/VoIPInterfaceManager;

.field private useBTCall:Ljava/lang/Boolean;

.field private useHoldCall:Ljava/lang/Boolean;


# direct methods
.method static synthetic -get0(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Lcom/android/server/VoIPInterfaceManager$CallState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/server/VoIPInterfaceManager;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/VoIPInterfaceManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 256
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

    .line 258
    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    .line 259
    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    .line 260
    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    .line 261
    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;

    .line 263
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    .line 264
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;

    .line 266
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    .line 269
    iput v2, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callCountInThisSession:I

    .line 271
    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    .line 256
    return-void
.end method


# virtual methods
.method public clearCallSessionInfo()V
    .locals 2

    .prologue
    .line 283
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 284
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 282
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBTStatus()Z
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBTStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/VoIPInterfaceManager;->-wrap0(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCallCountInThisSession()I
    .locals 2

    .prologue
    .line 363
    const-class v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v0

    .line 364
    :try_start_0
    iget v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callCountInThisSession:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;
    .locals 2

    .prologue
    .line 351
    const-class v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 351
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;
    .locals 2

    .prologue
    .line 331
    const-class v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getDirection()Z
    .locals 2

    .prologue
    .line 389
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getHoldStatus()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    const-class v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRegisteredCallNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    const-class v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRemotePartyNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    const-class v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getactionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    const-class v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isValidSessionInfo()Z
    .locals 4

    .prologue
    .line 308
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    const-string/jumbo v2, "    ** YOU SHOULD FILL OUT ALL FIELD ** "

    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->-wrap0(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    isValidSessionInfo() : pakageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actionName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    const-string/jumbo v3, ", callNumber :"

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    const-string/jumbo v3, ", clientCallback : "

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->-wrap0(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 309
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    const-string/jumbo v2, "    isValidSessionInfo() : All session field is valid"

    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->-wrap0(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    isValidSessionInfo() : pakageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actionName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 318
    const-string/jumbo v3, ", callNumber :"

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 318
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 318
    const-string/jumbo v3, ", clientCallback : "

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 318
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->-wrap0(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setBTStatus(Z)V
    .locals 3
    .param p1, "useBT"    # Z

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBTStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/VoIPInterfaceManager;->-wrap0(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 338
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    .line 336
    return-void
.end method

.method public setCallCountInThisSession(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 357
    const-class v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v0

    .line 358
    :try_start_0
    iput p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callCountInThisSession:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 356
    return-void

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setCallSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)V
    .locals 2
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "callNumber"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IVoIPCallbackInterface;

    .prologue
    .line 274
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 275
    :try_start_0
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    .line 276
    iput-object p2, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    .line 277
    iput-object p3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    .line 278
    iput-object p4, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 273
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V
    .locals 2
    .param p1, "mCallState"    # Lcom/android/server/VoIPInterfaceManager$CallState;

    .prologue
    .line 325
    const-class v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v0

    .line 326
    :try_start_0
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 324
    return-void

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setDirection(Z)V
    .locals 3
    .param p1, "direction"    # Z

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDirection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/VoIPInterfaceManager;->-wrap0(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 386
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    .line 384
    return-void
.end method

.method public setRemotePartyNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 369
    const-class v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v0

    .line 370
    :try_start_0
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 368
    return-void

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
