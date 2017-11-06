.class Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$1;
.super Landroid/os/Handler;
.source "PlayerAutoResumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$OnPlayerErrorHandleListener;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$OnPlayerErrorHandleListener;->onPlayerErrorHandled(II)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->clear()V

    .line 154
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
