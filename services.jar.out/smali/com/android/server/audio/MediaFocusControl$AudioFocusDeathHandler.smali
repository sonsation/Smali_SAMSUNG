.class public Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 424
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    .line 429
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get1()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 430
    :try_start_0
    const-string/jumbo v1, "MediaFocusControl"

    const-string/jumbo v3, "  AudioFocus   audio focus client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get5(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->-get5(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->valueAt(I)Ljava/util/Stack;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-set0(Lcom/android/server/audio/MediaFocusControl;Ljava/util/Stack;)Ljava/util/Stack;

    .line 438
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-wrap0(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->-get5(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-set0(Lcom/android/server/audio/MediaFocusControl;Ljava/util/Stack;)Ljava/util/Stack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "i":I
    :goto_1
    monitor-exit v2

    .line 428
    return-void

    .line 442
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-wrap0(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
