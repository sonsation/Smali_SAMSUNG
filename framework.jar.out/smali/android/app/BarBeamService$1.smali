.class Landroid/app/BarBeamService$1;
.super Landroid/os/Handler;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BarBeamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/BarBeamService;


# direct methods
.method constructor <init>(Landroid/app/BarBeamService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/BarBeamService;

    .prologue
    .line 240
    iput-object p1, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 242
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_2

    .line 243
    const-string/jumbo v3, "BarBeamService"

    const-string/jumbo v4, "Led in handler : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v3, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    invoke-static {v3}, Landroid/app/BarBeamService;->-get0(Landroid/app/BarBeamService;)Ljava/util/Timer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    invoke-static {v3}, Landroid/app/BarBeamService;->-get0(Landroid/app/BarBeamService;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 246
    iget-object v3, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    invoke-static {v3, v5}, Landroid/app/BarBeamService;->-set1(Landroid/app/BarBeamService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 248
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    invoke-static {v3}, Landroid/app/BarBeamService;->-wrap2(Landroid/app/BarBeamService;)V

    .line 254
    iget-object v3, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    iget-object v4, v3, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 255
    :try_start_1
    iget-object v3, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    iget-object v3, v3, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BarBeamService$Listener;

    .line 256
    .local v1, "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v1}, Landroid/app/BarBeamService$Listener;->onBeamingStoppped()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 254
    .end local v1    # "l":Landroid/app/BarBeamService$Listener;
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 249
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    iget-object v3, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    iget-object v3, v3, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 261
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x28

    if-ne v3, v4, :cond_3

    .line 262
    const-string/jumbo v3, "BarBeamService"

    const-string/jumbo v4, "Led in handler : true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v3, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    invoke-static {v3}, Landroid/app/BarBeamService;->-wrap1(Landroid/app/BarBeamService;)V

    .line 265
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x32

    if-ne v3, v4, :cond_4

    .line 266
    const-string/jumbo v3, "BarBeamService"

    const-string/jumbo v4, "StopBeaming by no binder"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v3, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    invoke-virtual {v3}, Landroid/app/BarBeamService;->stopBeaming()V

    .line 241
    :cond_4
    return-void
.end method
