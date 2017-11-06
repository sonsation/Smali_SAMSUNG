.class public Lcom/mezzo/common/downloadmanager/DownloadListManger;
.super Ljava/lang/Object;
.source "DownloadListManger.java"


# static fields
.field public static final VERSION:Ljava/lang/String; = "0.1"


# instance fields
.field private context:Landroid/content/Context;

.field private createHandler:Landroid/os/Handler;

.field private downloadJson:Lcom/mezzo/common/downloadmanager/DownloadJson;

.field private downloadThread:Lcom/mezzo/common/downloadmanager/DownloadThread;

.field private downloadlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mezzo/common/downloadmanager/FileData;",
            ">;"
        }
    .end annotation
.end field

.field private resetTime:J

.field private saveLimitCount:I

.field private sharedList:Lcom/mezzo/common/downloadmanager/DownloadSharedList;

.field private syncDay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLog"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x5

    iput v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->saveLimitCount:I

    .line 17
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->resetTime:J

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->syncDay:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lcom/mezzo/common/downloadmanager/DownloadListManger$1;

    invoke-direct {v0, p0}, Lcom/mezzo/common/downloadmanager/DownloadListManger$1;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;)V

    iput-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->createHandler:Landroid/os/Handler;

    .line 28
    sput-boolean p2, Lcom/mezzo/common/MzLog;->ISLOG:Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->setContext(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mezzo/common/downloadmanager/DownloadListManger;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->endDateCheck()V

    return-void
.end method

.method static synthetic access$10(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/mezzo/common/downloadmanager/DownloadListManger;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->saveLimitCount:I

    return v0
.end method

.method static synthetic access$12(Lcom/mezzo/common/downloadmanager/DownloadListManger;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->searchDataIndex(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/mezzo/common/downloadmanager/DownloadListManger;Lcom/mezzo/common/downloadmanager/DownloadThread;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadThread:Lcom/mezzo/common/downloadmanager/DownloadThread;

    return-void
.end method

.method static synthetic access$3(Lcom/mezzo/common/downloadmanager/DownloadListManger;Lcom/mezzo/common/downloadmanager/DownloadJson;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadJson:Lcom/mezzo/common/downloadmanager/DownloadJson;

    return-void
.end method

.method static synthetic access$4(Lcom/mezzo/common/downloadmanager/DownloadListManger;Lcom/mezzo/common/downloadmanager/DownloadSharedList;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->sharedList:Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    return-void
.end method

.method static synthetic access$5(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadSharedList;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->sharedList:Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadJson;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadJson:Lcom/mezzo/common/downloadmanager/DownloadJson;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mezzo/common/downloadmanager/DownloadListManger;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$8(Lcom/mezzo/common/downloadmanager/DownloadListManger;)Lcom/mezzo/common/downloadmanager/DownloadThread;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadThread:Lcom/mezzo/common/downloadmanager/DownloadThread;

    return-object v0
.end method

.method static synthetic access$9(Lcom/mezzo/common/downloadmanager/DownloadListManger;)J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->resetTime:J

    return-wide v0
.end method

.method private downloadlistDebug()V
    .locals 4

    .prologue
    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 120
    return-void

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/downloadmanager/FileData;

    .line 118
    .local v0, "fileData":Lcom/mezzo/common/downloadmanager/FileData;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/FileData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private endDateCheck()V
    .locals 8

    .prologue
    .line 88
    iget-object v4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 90
    .local v3, "today":Ljava/lang/Long;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 104
    .end local v2    # "i":I
    .end local v3    # "today":Ljava/lang/Long;
    :cond_0
    return-void

    .line 91
    .restart local v2    # "i":I
    .restart local v3    # "today":Ljava/lang/Long;
    :cond_1
    iget-object v4, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/downloadmanager/FileData;

    .line 92
    .local v0, "data":Lcom/mezzo/common/downloadmanager/FileData;
    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/FileData;->getEndDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, ""

    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/FileData;->getEndDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 93
    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/FileData;->getEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 94
    .local v1, "endDate":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 95
    const-string/jumbo v4, "today > endDate"

    invoke-static {v4}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->fileDelete(I)V

    .line 90
    .end local v1    # "endDate":Ljava/lang/Long;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_3
    const-string v4, "data.getEndDate() == null"

    invoke-static {v4}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->fileDelete(I)V

    goto :goto_1
.end method

.method private fileDelete(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 107
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/downloadmanager/FileData;

    .line 108
    .local v0, "fileData":Lcom/mezzo/common/downloadmanager/FileData;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fileDelete : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/FileData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadThread:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/FileData;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mezzo/common/downloadmanager/DownloadThread;->removeFileFromDir(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlistDebug()V

    .line 111
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadJson:Lcom/mezzo/common/downloadmanager/DownloadJson;

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/mezzo/common/downloadmanager/DownloadJson;->make(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->sharedList:Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    invoke-virtual {v2, v1}, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->saveDownload(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private overDataRemove(Landroid/os/Handler;)V
    .locals 2
    .param p1, "removeCompleteHandler"    # Landroid/os/Handler;

    .prologue
    .line 276
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;

    invoke-direct {v1, p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$6;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 291
    return-void
.end method

.method private searchDataIndex(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 4
    .param p2, "searchFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mezzo/common/downloadmanager/FileData;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mezzo/common/downloadmanager/FileData;>;"
    const/4 v1, -0x1

    .line 154
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 161
    :goto_1
    return v1

    .line 155
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mezzo/common/downloadmanager/FileData;

    .line 156
    .local v2, "searchData":Lcom/mezzo/common/downloadmanager/FileData;
    invoke-virtual {v2}, Lcom/mezzo/common/downloadmanager/FileData;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    move v1, v0

    .line 158
    goto :goto_1

    .line 154
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/mezzo/common/downloadmanager/FileData;Lcom/mezzo/common/downloadmanager/DownloadResultListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/mezzo/common/downloadmanager/FileData;
    .param p3, "listener"    # Lcom/mezzo/common/downloadmanager/DownloadResultListener;
    .param p4, "sharedFileName"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mezzo/common/downloadmanager/DownloadListManger$2;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;Ljava/lang/String;Lcom/mezzo/common/downloadmanager/FileData;Lcom/mezzo/common/downloadmanager/DownloadResultListener;)V

    .line 65
    .local v0, "initHandler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;

    invoke-direct {v2, p0, p4, v0}, Lcom/mezzo/common/downloadmanager/DownloadListManger$3;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public downloadFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadThread:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->requestUrlForString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->context:Landroid/content/Context;

    return-object v0
.end method

.method public info()V
    .locals 4

    .prologue
    .line 40
    const-string/jumbo v0, "\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606"

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 41
    const-string v0, "   \ub2e4\uc6b4\ub85c\ub4dc \ub9e4\ub2c8\uc838 \ubc84\uc83c: 0.1"

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   \ub9ac\uc14b \uc2dc\uac04 : (mills)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->resetTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   \ud30c\uc77c \ucd5c\ub300 \uc800\uc7a5 \uac1c\uc218: (ea)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->saveLimitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v0, "\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606"

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public isEffecTimeOther()Z
    .locals 8

    .prologue
    .line 255
    iget-object v6, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->sharedList:Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    invoke-virtual {v6}, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->getDownload()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "json":Ljava/lang/String;
    iget-object v6, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadJson:Lcom/mezzo/common/downloadmanager/DownloadJson;

    invoke-virtual {v6, v2}, Lcom/mezzo/common/downloadmanager/DownloadJson;->getModifiedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "modifiedTime":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 258
    const-string v6, "\\^"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "time":[Ljava/lang/String;
    iget-object v6, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadJson:Lcom/mezzo/common/downloadmanager/DownloadJson;

    invoke-virtual {v6, v3}, Lcom/mezzo/common/downloadmanager/DownloadJson;->requestHour(Ljava/lang/String;)I

    move-result v4

    .line 260
    .local v4, "saveHour":I
    iget-object v6, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadJson:Lcom/mezzo/common/downloadmanager/DownloadJson;

    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadJson:Lcom/mezzo/common/downloadmanager/DownloadJson;

    invoke-virtual {v7}, Lcom/mezzo/common/downloadmanager/DownloadJson;->modifideTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mezzo/common/downloadmanager/DownloadJson;->requestHour(Ljava/lang/String;)I

    move-result v0

    .line 261
    .local v0, "currentHour":I
    sub-int v1, v0, v4

    .line 262
    .local v1, "gap":I
    if-eqz v1, :cond_0

    .line 263
    const/4 v6, 0x0

    .line 266
    .end local v0    # "currentHour":I
    .end local v1    # "gap":I
    .end local v4    # "saveHour":I
    .end local v5    # "time":[Ljava/lang/String;
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public isResetTime(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mezzo/common/downloadmanager/DownloadListManger$5;

    invoke-direct {v1, p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadListManger$5;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 247
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/mezzo/common/downloadmanager/FileData;Lcom/mezzo/common/downloadmanager/DownloadResultListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileData"    # Lcom/mezzo/common/downloadmanager/FileData;
    .param p3, "listener"    # Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    .prologue
    .line 294
    new-instance v0, Lcom/mezzo/common/downloadmanager/DownloadData;

    invoke-direct {v0}, Lcom/mezzo/common/downloadmanager/DownloadData;-><init>()V

    .line 295
    .local v0, "data":Lcom/mezzo/common/downloadmanager/DownloadData;
    invoke-virtual {v0, p1}, Lcom/mezzo/common/downloadmanager/DownloadData;->setUrl(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Lcom/mezzo/common/downloadmanager/FileData;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mezzo/common/downloadmanager/DownloadData;->setFileName(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mezzo/common/downloadmanager/DownloadData;->setCreateDate(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadThread:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v1, v0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->setData(Lcom/mezzo/common/downloadmanager/DownloadData;)V

    .line 300
    new-instance v1, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;

    invoke-direct {v1, p0, p2, p3}, Lcom/mezzo/common/downloadmanager/DownloadListManger$7;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;Lcom/mezzo/common/downloadmanager/FileData;Lcom/mezzo/common/downloadmanager/DownloadResultListener;)V

    invoke-direct {p0, v1}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->overDataRemove(Landroid/os/Handler;)V

    .line 377
    return-void
.end method

.method public requestCancel()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadThread:Lcom/mezzo/common/downloadmanager/DownloadThread;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadThread:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->requestCancel()V

    .line 273
    :cond_0
    return-void
.end method

.method public requsetSync()V
    .locals 11

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->syncCheckFiletoList()Z

    move-result v7

    if-nez v7, :cond_2

    .line 169
    const-string v7, "   \uc800\uc7a5 \ud30c\uc77c \ub9ac\uc2a4\ud2b8\uc640 \uc2e4\uc81c \ub9ac\uc2a4\ud2b8\uac00 \uc2f1\ud06c\uac00 \uc548\ub9de\uc544 \uc2f1\ud06c \uc791\uc5c5 \uc2dc\uc791"

    invoke-static {v7}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 170
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadThread:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v7}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getList()Ljava/util/ArrayList;

    move-result-object v4

    .line 171
    .local v4, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, " fileList : "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 173
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 174
    .local v8, "today":J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 175
    const/4 v7, 0x6

    iget v10, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->syncDay:I

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->add(II)V

    .line 176
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 177
    .local v2, "endDate":J
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "endDate : "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 178
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->sharedList:Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    if-eqz v7, :cond_0

    .line 179
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->sharedList:Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    invoke-virtual {v7}, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->removeAllDownloadList()V

    .line 181
    :cond_0
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 182
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 184
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_3

    .line 192
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadJson:Lcom/mezzo/common/downloadmanager/DownloadJson;

    iget-object v10, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Lcom/mezzo/common/downloadmanager/DownloadJson;->make(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "json":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "json : "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 194
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->sharedList:Lcom/mezzo/common/downloadmanager/DownloadSharedList;

    invoke-virtual {v7, v6}, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->saveDownload(Ljava/lang/String;)V

    .line 196
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "endDate":J
    .end local v4    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "json":Ljava/lang/String;
    .end local v8    # "today":J
    :cond_2
    return-void

    .line 185
    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v2    # "endDate":J
    .restart local v4    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v8    # "today":J
    :cond_3
    new-instance v1, Lcom/mezzo/common/downloadmanager/FileData;

    invoke-direct {v1}, Lcom/mezzo/common/downloadmanager/FileData;-><init>()V

    .line 186
    .local v1, "data":Lcom/mezzo/common/downloadmanager/FileData;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/mezzo/common/downloadmanager/FileData;->setFileName(Ljava/lang/String;)V

    .line 187
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mezzo/common/downloadmanager/FileData;->setStartDate(Ljava/lang/String;)V

    .line 188
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mezzo/common/downloadmanager/FileData;->setEndDate(Ljava/lang/String;)V

    .line 189
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "data : "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mezzo/common/downloadmanager/FileData;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/mezzo/common/downloadmanager/DownloadListManger$4;

    invoke-direct {v0, p0}, Lcom/mezzo/common/downloadmanager/DownloadListManger$4;-><init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;)V

    invoke-virtual {p0, v0}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->isResetTime(Landroid/os/Handler;)V

    .line 218
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->context:Landroid/content/Context;

    .line 389
    return-void
.end method

.method public setTime(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 34
    if-lez p1, :cond_0

    .line 35
    iput p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->saveLimitCount:I

    .line 37
    :cond_0
    return-void
.end method

.method public syncCheckFiletoList()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 128
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadThread:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v7}, Lcom/mezzo/common/downloadmanager/DownloadThread;->downloadListSize()I

    move-result v6

    .line 129
    .local v6, "len":I
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 130
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadThread:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v7}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 131
    .local v1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 132
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 140
    if-ne v0, v6, :cond_0

    const/4 v5, 0x1

    .line 141
    .local v5, "is":Z
    :cond_0
    if-eqz v5, :cond_4

    .line 142
    const-string/jumbo v7, "\u2605\ud30c\uc77c\ub9ac\uc2a4\ud2b8\uc640 \uc800\uc7a5\uc18c \ub9ac\uc2a4\ud2b8 \uac1c\uc218 \ubc0f \ud30c\uc77c \ub370\uc774\ud0c0 \ub3d9\uc77c"

    invoke-static {v7}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 146
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2605\ud30c\uc77c\ub9ac\uc2a4\ud2b8\uc640 \uc800\uc7a5\uc18c \ub9ac\uc2a4\ud2b8 \uac1c\uc218 \ud655\uc778 : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mezzo/common/MzLog;->v(Ljava/lang/String;)V

    .line 149
    .end local v0    # "count":I
    .end local v1    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v5    # "is":Z
    :cond_1
    return v5

    .line 133
    .restart local v0    # "count":I
    .restart local v1    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    .local v2, "fileName":Ljava/lang/String;
    iget-object v7, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger;->downloadlist:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v2}, Lcom/mezzo/common/downloadmanager/DownloadListManger;->searchDataIndex(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v4

    .line 135
    .local v4, "index":I
    if-ltz v4, :cond_3

    if-ge v4, v6, :cond_3

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 132
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "index":I
    .restart local v5    # "is":Z
    :cond_4
    const-string/jumbo v7, "\u2605\ud30c\uc77c\ub9ac\uc2a4\ud2b8\uc640 \uc800\uc7a5\uc18c \ub9ac\uc2a4\ud2b8 \uac1c\uc218 \ubc0f \ud30c\uc77c \ub370\uc774\ud0c0 \ucc28\uc774\uac00 \ub0a8"

    invoke-static {v7}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    goto :goto_1
.end method
