.class Lcom/android/server/SatsService$1;
.super Landroid/os/UEventObserver;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SatsService;


# direct methods
.method constructor <init>(Lcom/android/server/SatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/SatsService;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 107
    invoke-static {}, Lcom/android/server/SatsService;->-get1()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 109
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SWITCH_NAME"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 111
    :try_start_1
    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "switchName":Ljava/lang/String;
    const-string v4, "uart3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "switchState":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 117
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 130
    const-string v4, "SatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown state["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "state":I
    .end local v2    # "switchName":Ljava/lang/String;
    .end local v3    # "switchState":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v5

    .line 106
    return-void

    .line 119
    .restart local v1    # "state":I
    .restart local v2    # "switchName":Ljava/lang/String;
    .restart local v3    # "switchState":Ljava/lang/String;
    :pswitch_0
    :try_start_2
    const-string v4, "SatsService"

    const-string v6, "SATServiceAt will wait."

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/server/SatsService;->-set0(Lcom/android/server/SatsService;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 135
    .end local v1    # "state":I
    .end local v2    # "switchName":Ljava/lang/String;
    .end local v3    # "switchState":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 123
    .restart local v1    # "state":I
    .restart local v2    # "switchName":Ljava/lang/String;
    .restart local v3    # "switchState":Ljava/lang/String;
    :pswitch_1
    :try_start_4
    const-string v4, "SatsService"

    const-string v6, "SATServiceAt will wake up."

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/SatsService;->-set0(Lcom/android/server/SatsService;Z)Z

    .line 125
    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-static {v4}, Lcom/android/server/SatsService;->-get2(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v6

    monitor-enter v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    :try_start_5
    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-static {v4}, Lcom/android/server/SatsService;->-get2(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v6

    goto :goto_0

    .line 125
    :catchall_1
    move-exception v4

    monitor-exit v6

    throw v4

    nop
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
