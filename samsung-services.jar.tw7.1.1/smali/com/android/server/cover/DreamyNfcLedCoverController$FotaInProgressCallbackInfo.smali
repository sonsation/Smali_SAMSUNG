.class Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
.super Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/DreamyNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FotaInProgressCallbackInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;


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
    .line 788
    iput-object p1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    .line 789
    invoke-direct/range {p0 .. p6}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 788
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 794
    const-string v0, "CoverManager.DreamyNfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-get1(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-get1(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 798
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 793
    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
