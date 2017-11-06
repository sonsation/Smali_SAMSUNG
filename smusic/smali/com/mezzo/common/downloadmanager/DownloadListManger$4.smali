.class Lcom/mezzo/common/downloadmanager/DownloadListManger$4;
.super Landroid/os/Handler;
.source "DownloadListManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadListManger;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$4;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    .line 199
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$4;)Lcom/mezzo/common/downloadmanager/DownloadListManger;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$4;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 202
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 203
    .local v0, "is":Z
    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$4;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$8(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    const-string v1, "   \ub9ac\uc14b \uc801\uc6a9!"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$4;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$8(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadThread;

    move-result-object v1

    new-instance v2, Lcom/mezzo/common/downloadmanager/DownloadListManger$4$1;

    invoke-direct {v2, p0}, Lcom/mezzo/common/downloadmanager/DownloadListManger$4$1;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger$4;)V

    invoke-virtual {v1, v2}, Lcom/mezzo/common/downloadmanager/DownloadThread;->removeFileAllFromDirInThread(Landroid/os/Handler;)V

    .line 215
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 216
    return-void
.end method
