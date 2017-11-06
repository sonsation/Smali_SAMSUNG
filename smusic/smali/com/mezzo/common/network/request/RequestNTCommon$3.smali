.class Lcom/mezzo/common/network/request/RequestNTCommon$3;
.super Ljava/lang/Object;
.source "RequestNTCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/network/request/RequestNTCommon;->networkFail(Landroid/os/Handler;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

.field private final synthetic val$errorLog:Ljava/lang/String;

.field private final synthetic val$isError:Z


# direct methods
.method constructor <init>(Lcom/mezzo/common/network/request/RequestNTCommon;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    iput-object p2, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->val$errorLog:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->val$isError:Z

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->val$errorLog:Ljava/lang/String;

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->val$isError:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    iget-object v1, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->val$errorLog:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mezzo/common/network/request/RequestNTCommon;->access$0(Lcom/mezzo/common/network/request/RequestNTCommon;Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getConnectionListener()Lcom/mezzo/common/network/request/OnConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "NETWORK_FAIL"

    iget-object v1, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->val$errorLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getConnectionListener()Lcom/mezzo/common/network/request/OnConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v1}, Lcom/mezzo/common/network/request/RequestNTCommon;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_FAIL:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    iget-object v3, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    iget-object v4, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v4}, Lcom/mezzo/common/network/request/RequestNTCommon;->getMsg()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mezzo/common/network/request/OnConnectionListener;->onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getConnectionListener()Lcom/mezzo/common/network/request/OnConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v1}, Lcom/mezzo/common/network/request/RequestNTCommon;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->SERVER_FAIL:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    iget-object v3, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    iget-object v4, p0, Lcom/mezzo/common/network/request/RequestNTCommon$3;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v4}, Lcom/mezzo/common/network/request/RequestNTCommon;->getMsg()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mezzo/common/network/request/OnConnectionListener;->onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    goto :goto_0
.end method
