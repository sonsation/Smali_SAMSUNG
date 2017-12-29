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
    .line 645
    iput-object p1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput-object p2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 648
    iput-object p3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    .line 649
    iput p4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 650
    iput p5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    .line 651
    iput p6, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 646
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 656
    const-string v0, "CoverManager.DreamyNfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-get2(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-get2(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 660
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 655
    return-void

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onCoverTapLeft()V
    .locals 4

    .prologue
    .line 712
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 713
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "null listener received onCoverTapLeft!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void

    .line 718
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 717
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 719
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 720
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapLeft()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v1

    .line 723
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "Failed onCoverTapLeft callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTapMid()V
    .locals 4

    .prologue
    .line 728
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 729
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "null listener received onCoverTapMid!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return-void

    .line 734
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 733
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 735
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 736
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapMid()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v1

    .line 739
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "Failed onCoverTapMid callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTapRight()V
    .locals 4

    .prologue
    .line 744
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 745
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "null listener received onCoverTapRight!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void

    .line 750
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 749
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 751
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 752
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapRight()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 754
    :catch_0
    move-exception v1

    .line 755
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "Failed onCoverTapRight callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTouchAccept()V
    .locals 4

    .prologue
    .line 664
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 665
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "null listener received TouchAccept!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-void

    .line 670
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 669
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 671
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 672
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "Failed onCoverTouchAccept callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTouchReject()V
    .locals 4

    .prologue
    .line 680
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 681
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "null listener received TouchReject!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void

    .line 686
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 685
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 687
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 688
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 690
    :catch_0
    move-exception v1

    .line 691
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "Failed onCoverTouchReject callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 696
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 697
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "null listener received onSystemCoverEvent!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void

    .line 702
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 701
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 703
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 704
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v1

    .line 707
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "Failed onSystemCoverEvent callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
