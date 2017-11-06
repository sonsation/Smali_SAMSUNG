.class Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;
.super Ljava/lang/Object;
.source "DownloadListManger.java"

# interfaces
.implements Lcom/mezzo/common/downloadmanager/DownloadStateListener;


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
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;->this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;)Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;->this$2:Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    return-object v0
.end method


# virtual methods
.method public downloadState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 341
    packed-switch p1, :pswitch_data_0

    .line 363
    :goto_0
    return-void

    .line 343
    :pswitch_0
    const-string v0, "   \ub2e4\uc6b4\ub85c\ub4dc \ud30c\uc77c \uc5c6\uc74c \ub2e4\uc6b4\ub85c\ub4dc \uc644\ub8cc"

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   addFile--> : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    invoke-virtual {v1}, Lcom/mezzo/common/downloadmanager/FileData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2$1;

    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    invoke-direct {v1, p0, v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2$1;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1$2;Lcom/mezzo/common/downloadmanager/FileData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 354
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 359
    :pswitch_1
    const-string v0, "   \ub2e4\uc6b4\ub85c\ub4dc \ud30c\uc77c \uc5c6\uc74c \ub2e4\uc6b4\ub85c\ub4dc \uc2e4\ud328"

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
