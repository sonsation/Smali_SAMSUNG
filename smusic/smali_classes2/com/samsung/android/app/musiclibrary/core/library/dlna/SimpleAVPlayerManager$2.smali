.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;
.super Ljava/lang/Object;
.source "SimpleAVPlayerManager.java"

# interfaces
.implements Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffering()V
    .locals 2

    .prologue
    .line 522
    const-string v0, "SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onBuffering"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    .line 525
    return-void
.end method

.method public onError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 3
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .prologue
    .line 530
    const-string v0, "SMUSIC-SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSECAVPlayerStateListener - onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V

    .line 535
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 507
    const-string v0, "SMUSIC-SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I

    .line 514
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;->onCompletion()V

    .line 518
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 499
    const-string v0, "SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I

    .line 501
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    .line 502
    return-void
.end method

.method public onPlay()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 484
    const-string v0, "SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onPlay"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 486
    const-string v0, "SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onPlay is called after request so Return."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I

    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    goto :goto_0
.end method

.method public onProgress(J)V
    .locals 9
    .param p1, "progress"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x1

    .line 471
    const-string v1, "SV-Dlna"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSECAVPlayerStateListener - onProgress progress: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-long v2, p1, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " msec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isPlaying: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .line 474
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v0

    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mDoNotUpdateProgress: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .line 475
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .line 477
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    mul-long v2, p1, v6

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$702(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;J)J

    .line 480
    :cond_0
    return-void

    .line 474
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 464
    const-string v0, "SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onStop"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    .line 467
    return-void
.end method
