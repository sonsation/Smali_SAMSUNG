.class Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;
.super Landroid/os/Handler;
.source "DownloadListManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

.field private final synthetic val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

.field private final synthetic val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;Lcom/mezzo/common/downloadmanager/DownloadResultListener;Lcom/mezzo/common/downloadmanager/FileData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    iput-object p3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    .line 308
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 311
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 312
    .local v0, "is":Z
    if-eqz v0, :cond_0

    .line 313
    const-string v1, "   \ub2e4\uc6b4\ub85c\ub4dc \ud30c\uc77c \uc788\uc74c / \ub2e4\uc6b4\ub85c\ub4dc \ud544\uc694\uc5c6\uc74c"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/mezzo/common/downloadmanager/DownloadResultListener;->downloadManager(I)V

    .line 316
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    invoke-direct {v2, p0, v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;Lcom/mezzo/common/downloadmanager/FileData;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 332
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 367
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 368
    return-void

    .line 335
    :cond_0
    const-string v1, "   \ub2e4\uc6b4\ub85c\ub4dc \ud30c\uc77c \uc5c6\uc74c/ \ub2e4\uc6b4\ub85c\ub4dc \uc2dc\uc791"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/mezzo/common/downloadmanager/DownloadResultListener;->downloadManager(I)V

    .line 337
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$8(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadThread;

    move-result-object v1

    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    new-instance v3, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;

    iget-object v4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    invoke-direct {v3, p0, v4}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;Lcom/mezzo/common/downloadmanager/FileData;)V

    invoke-virtual {v1, v2, v3}, Lcom/mezzo/common/downloadmanager/DownloadThread;->setListener(Lcom/mezzo/common/downloadmanager/DownloadResultListener;Lcom/mezzo/common/downloadmanager/DownloadStateListener;)V

    .line 365
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$8(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/downloadmanager/DownloadThread;->start()V

    goto :goto_0
.end method
