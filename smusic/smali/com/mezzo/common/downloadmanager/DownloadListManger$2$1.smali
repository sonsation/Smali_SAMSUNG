.class Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;
.super Ljava/lang/Object;
.source "DownloadListManger.java"

# interfaces
.implements Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$2;

.field private final synthetic val$data:Lcom/mezzo/common/downloadmanager/FileData;

.field private final synthetic val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger$2;Ljava/lang/String;Lcom/mezzo/common/downloadmanager/FileData;Lcom/mezzo/common/downloadmanager/DownloadResultListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$2;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;->val$data:Lcom/mezzo/common/downloadmanager/FileData;

    iput-object p4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;->val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReady()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$2;

    invoke-static {v0}, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$2;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$1(Lcom/mezzo/common/downloadmanager/DownloadListManger;)V

    .line 56
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$2;

    invoke-static {v0}, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$2;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->requsetSync()V

    .line 57
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$2;

    invoke-static {v0}, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$2;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->reset()V

    .line 58
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadListManger$2;

    invoke-static {v0}, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$2;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v0

    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;->val$data:Lcom/mezzo/common/downloadmanager/FileData;

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2$1;->val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->request(Ljava/lang/String;Lcom/mezzo/common/downloadmanager/FileData;Lcom/mezzo/common/downloadmanager/DownloadResultListener;)V

    .line 59
    return-void
.end method
