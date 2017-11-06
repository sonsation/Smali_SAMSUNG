.class Lcom/mezzo/common/downloadmanager/DownloadThread$3;
.super Ljava/lang/Object;
.source "DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadThread;->removeFileAllFromDirInThread(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadThread;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$3;->val$handler:Landroid/os/Handler;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadThread;->access$4(Lcom/mezzo/common/downloadmanager/DownloadThread;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadThread;->access$4(Lcom/mezzo/common/downloadmanager/DownloadThread;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_0

    .line 187
    :goto_1
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    const-string v3, "   \u2606  removeFileAllFromDirInThread : "

    invoke-virtual {v2, v3}, Lcom/mezzo/common/downloadmanager/DownloadThread;->fileDebug(Ljava/lang/String;)V

    .line 189
    return-void

    .line 180
    :cond_0
    aget-object v1, v4, v2

    .line 181
    .local v1, "fileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$3;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v6, v1}, Lcom/mezzo/common/downloadmanager/DownloadThread;->makeUrlForFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 182
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    const-string v2, "   \u2605\u2605\u2605\u2605\u2605  movielistfolder null"

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    goto :goto_1
.end method
