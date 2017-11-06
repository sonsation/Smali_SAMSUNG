.class Lcom/mezzo/common/downloadmanager/DownloadListManger$3;
.super Ljava/lang/Object;
.source "DownloadListManger.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$initHandler:Landroid/os/Handler;

.field private final synthetic val$sharedFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->val$sharedFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->val$initHandler:Landroid/os/Handler;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 69
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-virtual {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->info()V

    .line 70
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    new-instance v2, Lcom/mezzo/common/downloadmanager/DownloadJson;

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mezzo/common/downloadmanager/DownloadJson;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$3(Lcom/mezzo/common/downloadmanager/DownloadListManger;Lcom/mezzo/common/downloadmanager/DownloadJson;)V

    .line 71
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    new-instance v2, Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->val$sharedFileName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mezzo/common/downloadmanager/DownloadSharedList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$4(Lcom/mezzo/common/downloadmanager/DownloadListManger;Lcom/mezzo/common/downloadmanager/DownloadSharedList;)V

    .line 72
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$5(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->getDownload()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "json":Ljava/lang/String;
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$6(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadJson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mezzo/common/downloadmanager/DownloadJson;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$7(Lcom/mezzo/common/downloadmanager/DownloadListManger;Ljava/util/ArrayList;)V

    .line 74
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;->val$initHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 75
    return-void
.end method
