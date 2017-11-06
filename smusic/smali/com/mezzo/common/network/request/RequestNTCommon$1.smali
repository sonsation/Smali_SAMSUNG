.class Lcom/mezzo/common/network/request/RequestNTCommon$1;
.super Ljava/lang/Object;
.source "RequestNTCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/network/request/RequestNTCommon;->proessWork(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$isError:Z

.field private final synthetic val$isParser:Z


# direct methods
.method constructor <init>(Lcom/mezzo/common/network/request/RequestNTCommon;ZLandroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    iput-boolean p2, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->val$isParser:Z

    iput-object p3, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->val$isError:Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getConnectionListener()Lcom/mezzo/common/network/request/OnConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-boolean v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->val$isParser:Z

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "NETWORK_SUCCESS"

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getConnectionListener()Lcom/mezzo/common/network/request/OnConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->val$context:Landroid/content/Context;

    sget-object v2, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    iget-object v3, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    iget-object v4, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v4}, Lcom/mezzo/common/network/request/RequestNTCommon;->getMsg()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mezzo/common/network/request/OnConnectionListener;->onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v0, "NETWORK_SUCCESS but data is null"

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->val$isError:Z

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    const-string v1, "Parser Error"

    invoke-static {v0, v1}, Lcom/mezzo/common/network/request/RequestNTCommon;->access$0(Lcom/mezzo/common/network/request/RequestNTCommon;Ljava/lang/String;)V

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getConnectionListener()Lcom/mezzo/common/network/request/OnConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->val$context:Landroid/content/Context;

    sget-object v2, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_DATA_NULL:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    iget-object v3, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    iget-object v4, p0, Lcom/mezzo/common/network/request/RequestNTCommon$1;->this$0:Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {v4}, Lcom/mezzo/common/network/request/RequestNTCommon;->getMsg()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mezzo/common/network/request/OnConnectionListener;->onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    goto :goto_0
.end method
