.class Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2$1;
.super Ljava/lang/Object;
.source "DownloadListManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;->downloadState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;

.field private final synthetic val$fileData:Lcom/mezzo/common/downloadmanager/FileData;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;Lcom/mezzo/common/downloadmanager/FileData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2$1;->this$3:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2$1;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 349
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2$1;->this$3:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2$1;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 350
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2$1;->this$3:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$6(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadJson;

    move-result-object v1

    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2$1;->this$3:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mezzo/common/downloadmanager/DownloadJson;->make(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "json":Ljava/lang/String;
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2$1;->this$3:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$5(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->saveDownload(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2$1;->this$3:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$8(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadThread;

    move-result-object v1

    const-string v2, "   \u2606 \ucd94\uac00 \ud6c4 \ud30c\uc77c\ub9ac\uc2a4\ud2b8 : "

    invoke-virtual {v1, v2}, Lcom/mezzo/common/downloadmanager/DownloadThread;->fileDebug(Ljava/lang/String;)V

    .line 353
    return-void
.end method
