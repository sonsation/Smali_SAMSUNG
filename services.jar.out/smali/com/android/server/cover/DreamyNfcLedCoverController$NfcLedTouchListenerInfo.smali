.class Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
.super Ljava/lang/Object;
.source "DreamyNfcLedCoverController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/DreamyNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcLedTouchListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/DreamyNfcLedCoverController;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "type"    # I

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 481
    iput-object p3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    .line 482
    iput p4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 483
    iput p5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    .line 484
    iput p6, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 479
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 489
    const-string/jumbo v0, "CoverManager.DreamyNfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-get0(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-get0(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 493
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 488
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onCoverTapLeft()V
    .locals 4

    .prologue
    .line 545
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 546
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "null listener received onCoverTapLeft!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-void

    .line 551
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 550
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 552
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 553
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapLeft()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "Failed onCoverTapLeft callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTapMid()V
    .locals 4

    .prologue
    .line 561
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 562
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "null listener received onCoverTapMid!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void

    .line 567
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 566
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 568
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 569
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapMid()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "Failed onCoverTapMid callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTapRight()V
    .locals 4

    .prologue
    .line 577
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 578
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "null listener received onCoverTapRight!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void

    .line 583
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 582
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 584
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 585
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapRight()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "Failed onCoverTapRight callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTouchAccept()V
    .locals 4

    .prologue
    .line 497
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 498
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchAccept!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 503
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 502
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 504
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 505
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "Failed onCoverTouchAccept callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTouchReject()V
    .locals 4

    .prologue
    .line 513
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 514
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchReject!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void

    .line 519
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 518
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 520
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 521
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v1

    .line 524
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "Failed onCoverTouchReject callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 529
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 530
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "null listener received onSystemCoverEvent!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void

    .line 535
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 534
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 536
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 537
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "Failed onSystemCoverEvent callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
