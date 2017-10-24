.class Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverPlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 96
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get5(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Landroid/media/session/MediaSessionManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->onActiveSessionsChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onLocaleChanged()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get3(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Landroid/media/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get4(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get4(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v2}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get3(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Landroid/media/session/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMusicPakcageChanged(Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 2
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 88
    invoke-static {}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get2()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->stop()V

    .line 90
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 86
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
