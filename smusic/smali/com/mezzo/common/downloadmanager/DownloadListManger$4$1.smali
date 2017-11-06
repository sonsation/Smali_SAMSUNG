.class Lcom/mezzo/common/downloadmanager/DownloadListManger$4$1;
.super Landroid/os/Handler;
.source "DownloadListManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadListManger$4;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$4;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$4$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$4;

    .line 206
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 209
    const-string v0, "   \ub9ac\uc14b \uc644\ub8cc"

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$4$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$4;

    invoke-static {v0}, Lcom/mezzo/common/downloadmanager/DownloadListManger$4;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$4;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$5(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->removeAllDownloadList()V

    .line 211
    return-void
.end method
