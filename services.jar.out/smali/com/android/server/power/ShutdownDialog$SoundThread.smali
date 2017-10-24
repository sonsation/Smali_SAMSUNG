.class Lcom/android/server/power/ShutdownDialog$SoundThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundThread"
.end annotation


# instance fields
.field private final completeSignal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$RunningCheckable;)V

    .line 651
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    .line 650
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 684
    const-string/jumbo v0, "ShutdownDialog"

    const-string/jumbo v1, "!@onCompletion(MediaPlayer arg0) called !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 683
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 656
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->-get12(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 657
    const-string/jumbo v3, "ShutdownDialog"

    const-string/jumbo v4, "MediaPlayer is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iput-boolean v7, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->running:Z

    .line 659
    return-void

    .line 661
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->-get12(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 662
    const-string/jumbo v3, "ShutdownDialog"

    const-string/jumbo v4, "Start play sound file"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->-get12(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get12(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 672
    const-string/jumbo v3, "ShutdownDialog"

    const-string/jumbo v4, "Set sound complete audioParam"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string/jumbo v3, "poweroff_sound=suspend"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 674
    const-string/jumbo v3, "ShutdownDialog"

    const-string/jumbo v4, "H/W workaround. wait a sec before power off"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 679
    :goto_1
    iput-boolean v7, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->running:Z

    .line 680
    const-string/jumbo v3, "ShutdownDialog"

    const-string/jumbo v4, "Shutdown sound done"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ShutdownDialog"

    const-string/jumbo v4, "sound thread exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 665
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 666
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "ShutdownDialog"

    const-string/jumbo v4, "sound thread IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 677
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "ShutdownDialog"

    const-string/jumbo v4, "Wait fail"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
