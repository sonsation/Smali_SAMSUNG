.class Lcom/mezzo/common/downloadmanager/DownloadListManger$5;
.super Ljava/lang/Object;
.source "DownloadListManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadListManger;->isResetTime(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$5;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$5;->val$handler:Landroid/os/Handler;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "is":Z
    iget-object v6, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$5;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v6}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$5(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->getDownload()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "json":Ljava/lang/String;
    iget-object v6, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$5;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v6}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$6(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadJson;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mezzo/common/downloadmanager/DownloadJson;->getModifiedDateMills(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "modifiedMills":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 235
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 236
    .local v3, "mills":Ljava/lang/Long;
    iget-object v6, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$5;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v6}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$6(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadJson;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mezzo/common/downloadmanager/DownloadJson;->modifideMillis()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 237
    .local v0, "gap":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$5;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v8}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$9(Lcom/mezzo/common/downloadmanager/DownloadListManger;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 238
    const/4 v1, 0x1

    .line 241
    .end local v0    # "gap":Ljava/lang/Long;
    .end local v3    # "mills":Ljava/lang/Long;
    :cond_0
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 242
    .local v5, "msg":Landroid/os/Message;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    iget-object v6, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$5;->val$handler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method
