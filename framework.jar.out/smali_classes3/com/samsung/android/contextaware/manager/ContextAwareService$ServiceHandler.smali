.class public final Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;
.super Landroid/os/Handler;
.source "ContextAwareService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 940
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    .line 941
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 940
    return-void
.end method

.method private callback(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 975
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 976
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 975
    if-eqz v3, :cond_1

    .line 977
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 978
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    if-eqz v1, :cond_0

    .line 982
    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 983
    invoke-static {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-wrap0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 988
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getWatcherList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 989
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 988
    if-eqz v3, :cond_3

    .line 990
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    .line 991
    .local v2, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    if-eqz v2, :cond_2

    .line 995
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-get0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 996
    invoke-static {v2, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-wrap0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 973
    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    :cond_3
    return-void
.end method

.method private notifyOperationCheckResult(ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1014
    sget-object v4, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 1015
    return v6

    .line 1018
    :cond_0
    if-nez p2, :cond_1

    .line 1019
    sget-object v4, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1021
    return v6

    .line 1024
    :cond_1
    const-string/jumbo v4, "Listener"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1025
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 1026
    sget-object v4, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1028
    return v5

    .line 1031
    :cond_2
    const-string/jumbo v4, "Binder"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1032
    .local v0, "binder":Landroid/os/IBinder;
    const-string/jumbo v4, "Service"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1034
    .local v3, "service":I
    if-nez v0, :cond_3

    .line 1035
    sget-object v4, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1037
    return v5

    .line 1040
    :cond_3
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListener(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    move-result-object v2

    .line 1043
    .local v2, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    if-nez v2, :cond_5

    .line 1044
    sget-object v4, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1046
    const-string/jumbo v4, "CheckResult"

    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 1047
    const-string/jumbo v4, "This cmd proccess was stopped and that\'s because the fault detection result is not success"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 1048
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->-set1(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z

    .line 1058
    :cond_4
    :goto_0
    return v5

    .line 1050
    :cond_5
    const-string/jumbo v4, "Service"

    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 1051
    const-string/jumbo v4, "Listener"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1052
    invoke-static {v2, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-wrap0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1054
    :cond_6
    sget-object v4, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 951
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 952
    .local v2, "type":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 954
    .local v0, "context":Landroid/os/Bundle;
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->notifyOperationCheckResult(ILandroid/os/Bundle;)Z

    move-result v1

    .line 956
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 957
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->callback(ILandroid/os/Bundle;)V

    .line 962
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 950
    return-void

    .line 959
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->-set0(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "context":Landroid/os/Bundle;
    .end local v1    # "result":Z
    .end local v2    # "type":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
