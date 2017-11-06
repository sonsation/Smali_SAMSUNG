.class Lcom/mezzo/common/downloadmanager/DownloadListManger$6;
.super Ljava/lang/Object;
.source "DownloadListManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadListManger;->overDataRemove(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

.field private final synthetic val$removeCompleteHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;->val$removeCompleteHandler:Landroid/os/Handler;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 279
    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v4}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$11(Lcom/mezzo/common/downloadmanager/DownloadListManger;)I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 280
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 288
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;->val$removeCompleteHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 289
    return-void

    .line 281
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v4}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$11(Lcom/mezzo/common/downloadmanager/DownloadListManger;)I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 282
    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v4}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/downloadmanager/FileData;

    .line 283
    .local v0, "data":Lcom/mezzo/common/downloadmanager/FileData;
    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/FileData;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$8(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadThread;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mezzo/common/downloadmanager/DownloadThread;->removeFileFromDir(Ljava/lang/String;)V

    .line 280
    .end local v0    # "data":Lcom/mezzo/common/downloadmanager/FileData;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
