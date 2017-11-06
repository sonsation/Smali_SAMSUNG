.class Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;
.super Ljava/lang/Object;
.source "DownloadListManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

.field private final synthetic val$fileData:Lcom/mezzo/common/downloadmanager/FileData;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;Lcom/mezzo/common/downloadmanager/FileData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 320
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v2

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    invoke-virtual {v4}, Lcom/mezzo/common/downloadmanager/FileData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$12(Lcom/mezzo/common/downloadmanager/DownloadListManger;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   \uc774\ub3d9 \ud560 \ud30c\uc77c\uba85 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    invoke-virtual {v3}, Lcom/mezzo/common/downloadmanager/FileData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   \ud30c\uc77c \uc778\ub371\uc2a4\uac00 ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 323
    if-lez v0, :cond_0

    .line 324
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 325
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   \ud30c\uc77c \uc874\uc7ac\ud558\uc9c0\ub9cc, \uc778\ub371\uc2a4\uac00 \ucc98\ub9ac\uac00 \ud544\uc694 ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->0 \uc774\ub3d9 )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$6(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadJson;

    move-result-object v2

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mezzo/common/downloadmanager/DownloadJson;->make(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$5(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->saveDownload(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$1;->this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$8(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadThread;

    move-result-object v2

    const-string v3, "   \u2606 \uc774\ub3d9 \ud6c4 \ud30c\uc77c\ub9ac\uc2a4\ud2b8 : "

    invoke-virtual {v2, v3}, Lcom/mezzo/common/downloadmanager/DownloadThread;->fileDebug(Ljava/lang/String;)V

    .line 331
    .end local v1    # "json":Ljava/lang/String;
    :cond_0
    return-void
.end method
