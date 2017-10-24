.class Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;
.super Ljava/lang/Object;
.source "AgentSvcClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    invoke-static {v1}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->-get1(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->-set0(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;Z)Z

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    invoke-static {v1}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->-get0(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 36
    iget-object v1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    invoke-static {v1}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->-get0(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/mateservice/IAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IAgentService;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    const-string/jumbo v1, "AgentSvcClient"

    const-string/jumbo v2, "agent svc is connected"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    invoke-static {p2}, Lcom/samsung/android/mateservice/IAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IAgentService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->-set1(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;Lcom/samsung/android/mateservice/IAgentService;)Lcom/samsung/android/mateservice/IAgentService;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 51
    const-string/jumbo v0, "AgentSvcClient"

    const-string/jumbo v1, "agent svc is disconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    return-void
.end method
