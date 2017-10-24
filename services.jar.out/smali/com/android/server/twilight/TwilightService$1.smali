.class Lcom/android/server/twilight/TwilightService$1;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentState()Lcom/android/server/twilight/TwilightState;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;

    invoke-direct {v2, p1, p2}, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;-><init>(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->enableLocationUpdates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 236
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterListener(Lcom/android/server/twilight/TwilightListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v2, v1, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->-get0(Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;)Lcom/android/server/twilight/TwilightListener;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->disableLocationUpdates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 247
    return-void

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
