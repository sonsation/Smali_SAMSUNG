.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
.super Ljava/lang/Object;
.source "EdgeLightingClientManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;
    }
.end annotation


# static fields
.field private static final MSG_SCREEN_CHANGED:I = 0x3

.field private static final MSG_START_EDGHLIGHTING:I = 0x1

.field private static final MSG_STOP_EDGHLIGHTING:I = 0x2


# instance fields
.field final component:Landroid/content/ComponentName;

.field condition:I

.field private mHandler:Landroid/os/Handler;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

.field final token:Landroid/os/IBinder;

.field final uid:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onScreenChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onStopEdgeLighting(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->startEdgeLightingService(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "condition"    # I
    .param p5, "pid"    # I
    .param p6, "uid"    # I

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get6(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    .line 360
    iput-object p2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    .line 361
    iput-object p3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    .line 362
    iput p4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    .line 363
    iput p5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    .line 364
    iput p6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EdgeLightingHost : linkToDeath error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private _onScreenChanged(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 474
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    .line 475
    .local v0, "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    if-eqz v0, :cond_0

    .line 476
    invoke-interface {v0, p1}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onScreenChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v0    # "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    :cond_0
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onScreenChanged : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "reason"    # I

    .prologue
    .line 452
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    .line 453
    .local v0, "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    if-eqz v0, :cond_0

    .line 454
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v0    # "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    :cond_0
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onStartEdgeLighting : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _onStopEdgeLighting(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    .line 464
    .local v0, "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStopEdgeLighting(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v0    # "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    :cond_0
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onStopEdgeLighting : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startEdgeLightingService(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 405
    const-string v2, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startEdgeLightingService"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 408
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const-string v3, "com.samsung.android.app.edgelighting.EdgeLightingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 411
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 376
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binderDied : component = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 378
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 379
    .local v0, "N":I
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 380
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get4(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->stopEdgeLighting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 384
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 385
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get5(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 386
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get5(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 388
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-interface {v2, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 389
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "binderDied."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V

    .line 397
    const-wide/16 v4, 0x3e8

    .line 391
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    return-void

    .line 377
    .end local v0    # "N":I
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 385
    .restart local v0    # "N":I
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onScreenChanged(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x0

    .line 440
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenChanged on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_2

    .line 444
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenChanged : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 447
    :cond_2
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    return-void

    :cond_3
    move v0, v1

    .line 447
    goto :goto_0
.end method

.method public onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "reason"    # I

    .prologue
    .line 418
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartEdgeLighting pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_2

    .line 422
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartEdgeLighting : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    return-void
.end method

.method public onStopEdgeLighting(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 429
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    :cond_0
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopEdgeLighting pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_2

    .line 433
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopEdgeLighting : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  [Host: component:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") condition:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCondition(I)V
    .locals 0
    .param p1, "condition"    # I

    .prologue
    .line 401
    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    .line 400
    return-void
.end method
