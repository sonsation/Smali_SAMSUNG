.class Lcom/android/server/MountService$UnmountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private final mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "force"    # Z

    .prologue
    .line 4298
    iput-object p1, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    .line 4299
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 4300
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    .line 4298
    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    .prologue
    .line 4358
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 4357
    return-void
.end method

.method public handleExecute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 4305
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-wrap19(Lcom/android/server/MountService;)V

    .line 4306
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-wrap20(Lcom/android/server/MountService;)V

    .line 4309
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 4310
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-get10(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v7, v7, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v6

    .line 4313
    if-nez v3, :cond_0

    .line 4314
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 4315
    return-void

    .line 4309
    .end local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 4318
    .restart local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_0
    iget v5, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v6, v6, Lcom/android/server/MountService$ObbState;->ownerGid:I

    if-eq v5, v6, :cond_1

    .line 4319
    const-string/jumbo v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission denied attempting to unmount OBB "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4320
    const-string/jumbo v7, " (owned by GID "

    .line 4319
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4320
    iget v7, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    .line 4319
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4320
    const-string/jumbo v7, ")"

    .line 4319
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    const/16 v5, 0x19

    invoke-virtual {p0, v5}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 4322
    return-void

    .line 4325
    :cond_1
    const/4 v4, 0x0

    .line 4327
    .local v4, "rc":I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v5, "obb"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "unmount"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v7, v7, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4328
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    iget-boolean v5, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    if-eqz v5, :cond_2

    .line 4329
    const-string/jumbo v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 4331
    :cond_2
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4344
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v4, :cond_5

    .line 4345
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 4346
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5, v3}, Lcom/android/server/MountService;->-wrap15(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    .line 4349
    invoke-virtual {p0, v9}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 4304
    :goto_1
    return-void

    .line 4332
    :catch_0
    move-exception v2

    .line 4333
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 4334
    .local v1, "code":I
    const/16 v5, 0x195

    if-ne v1, v5, :cond_3

    .line 4335
    const/4 v4, -0x7

    goto :goto_0

    .line 4336
    :cond_3
    const/16 v5, 0x196

    if-ne v1, v5, :cond_4

    .line 4338
    const/4 v4, 0x0

    goto :goto_0

    .line 4340
    :cond_4
    const/4 v4, -0x1

    goto :goto_0

    .line 4345
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 4351
    :cond_5
    const-string/jumbo v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not unmount OBB: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    const/16 v5, 0x16

    invoke-virtual {p0, v5}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4364
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UnmountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4365
    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4366
    const-string/jumbo v1, ",force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4367
    iget-boolean v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4368
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
