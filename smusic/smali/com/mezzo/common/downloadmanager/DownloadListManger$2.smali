.class Lcom/mezzo/common/downloadmanager/DownloadListManger$2;
.super Landroid/os/Handler;
.source "DownloadListManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadListManger;->create(Ljava/lang/String;Lcom/mezzo/common/downloadmanager/FileData;Lcom/mezzo/common/downloadmanager/DownloadResultListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

.field private final synthetic val$data:Lcom/mezzo/common/downloadmanager/FileData;

.field private final synthetic val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;Ljava/lang/String;Lcom/mezzo/common/downloadmanager/FileData;Lcom/mezzo/common/downloadmanager/DownloadResultListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->val$data:Lcom/mezzo/common/downloadmanager/FileData;

    iput-object p4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$2;)Lcom/mezzo/common/downloadmanager/DownloadListManger;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    new-instance v1, Lcom/mezzo/common/downloadmanager/DownloadThread;

    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;

    iget-object v5, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->val$data:Lcom/mezzo/common/downloadmanager/FileData;

    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger$2;Ljava/lang/String;Lcom/mezzo/common/downloadmanager/FileData;Lcom/mezzo/common/downloadmanager/DownloadResultListener;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/mezzo/common/downloadmanager/DownloadThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V

    invoke-static {v0, v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$2(Lcom/mezzo/common/downloadmanager/DownloadListManger;Lcom/mezzo/common/downloadmanager/DownloadThread;)V

    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 62
    return-void
.end method
