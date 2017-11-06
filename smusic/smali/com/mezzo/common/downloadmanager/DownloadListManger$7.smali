.class Lcom/mezzo/common/downloadmanager/DownloadListManger$7;
.super Landroid/os/Handler;
.source "DownloadListManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadListManger;->request(Ljava/lang/String;Lcom/mezzo/common/downloadmanager/FileData;Lcom/mezzo/common/downloadmanager/DownloadResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

.field private final synthetic val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

.field private final synthetic val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;Lcom/mezzo/common/downloadmanager/FileData;Lcom/mezzo/common/downloadmanager/DownloadResultListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    iput-object p3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    .line 300
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;)Lcom/mezzo/common/downloadmanager/DownloadListManger;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 303
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 304
    .local v1, "today":Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " today :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    invoke-virtual {v2}, Lcom/mezzo/common/downloadmanager/FileData;->getEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 306
    .local v0, "endDate":Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " endDate :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->access$8(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadThread;

    move-result-object v2

    new-instance v3, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;

    iget-object v4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    iget-object v5, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->val$fileData:Lcom/mezzo/common/downloadmanager/FileData;

    invoke-direct {v3, p0, v4, v5}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7$1;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger$7;Lcom/mezzo/common/downloadmanager/DownloadResultListener;Lcom/mezzo/common/downloadmanager/FileData;)V

    invoke-virtual {v2, v3}, Lcom/mezzo/common/downloadmanager/DownloadThread;->exists(Landroid/os/Handler;)V

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;->val$listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Lcom/mezzo/common/downloadmanager/DownloadResultListener;->downloadManager(I)V

    .line 372
    const-string v2, "   data enddate\uac00 \uc624\ub298\ubcf4\ub2e4 \uc801\uc74c"

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    goto :goto_0
.end method
