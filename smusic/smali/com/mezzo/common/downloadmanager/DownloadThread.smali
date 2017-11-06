.class public Lcom/mezzo/common/downloadmanager/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mezzo/common/downloadmanager/DownloadThread$DOWNLOAD;,
        Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;,
        Lcom/mezzo/common/downloadmanager/DownloadThread$RESULT;
    }
.end annotation


# static fields
.field private static final CONNECTIONTIMEOUT:I = 0x1388


# instance fields
.field private context:Landroid/content/Context;

.field private data:Lcom/mezzo/common/downloadmanager/DownloadData;

.field private folderName:Ljava/lang/String;

.field private folderPath:Ljava/lang/String;

.field private isCancel:Z

.field private listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

.field private mainHandler:Landroid/os/Handler;

.field private movielistfolder:Ljava/io/File;

.field private stateListener:Lcom/mezzo/common/downloadmanager/DownloadStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onReadyCompleteListener"    # Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->isCancel:Z

    .line 40
    iput-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->mainHandler:Landroid/os/Handler;

    .line 41
    iput-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    .line 42
    iput-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->stateListener:Lcom/mezzo/common/downloadmanager/DownloadStateListener;

    .line 44
    const-string v0, "adDownloadlist"

    iput-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->folderName:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mezzo/common/downloadmanager/DownloadThread;->common(Landroid/content/Context;Landroid/os/Handler;Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mezzo/common/downloadmanager/DownloadData;Landroid/os/Handler;Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/mezzo/common/downloadmanager/DownloadData;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onReadyCompleteListener"    # Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->isCancel:Z

    .line 40
    iput-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->mainHandler:Landroid/os/Handler;

    .line 41
    iput-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    .line 42
    iput-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->stateListener:Lcom/mezzo/common/downloadmanager/DownloadStateListener;

    .line 44
    const-string v0, "adDownloadlist"

    iput-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->folderName:Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1, p3, p4}, Lcom/mezzo/common/downloadmanager/DownloadThread;->common(Landroid/content/Context;Landroid/os/Handler;Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/mezzo/common/downloadmanager/DownloadThread;->setData(Lcom/mezzo/common/downloadmanager/DownloadData;)V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/mezzo/common/downloadmanager/DownloadThread;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mezzo/common/downloadmanager/DownloadThread;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->folderPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/mezzo/common/downloadmanager/DownloadThread;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->folderPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mezzo/common/downloadmanager/DownloadThread;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->movielistfolder:Ljava/io/File;

    return-void
.end method

.method static synthetic access$4(Lcom/mezzo/common/downloadmanager/DownloadThread;)Ljava/io/File;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->movielistfolder:Ljava/io/File;

    return-object v0
.end method

.method private common(Landroid/content/Context;Landroid/os/Handler;Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onReadyCompleteListener"    # Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadThread;->setContext(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/mezzo/common/downloadmanager/DownloadThread;->setMainHandler(Landroid/os/Handler;)V

    .line 64
    invoke-direct {p0, p3}, Lcom/mezzo/common/downloadmanager/DownloadThread;->makeFodeler(Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->isCancel:Z

    .line 67
    return-void
.end method

.method private makeFodeler(Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V
    .locals 2
    .param p1, "onReadyCompleteListener"    # Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mezzo/common/downloadmanager/DownloadThread$1;

    invoke-direct {v1, p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadThread$1;-><init>(Lcom/mezzo/common/downloadmanager/DownloadThread;Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method private resultListener(I)V
    .locals 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getListener()Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mezzo/common/downloadmanager/DownloadThread$4;

    invoke-direct {v1, p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadThread$4;-><init>(Lcom/mezzo/common/downloadmanager/DownloadThread;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "do connect MainHandler!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "do connect DownloadResultListener!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 238
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadThread;->resultListener(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendstate(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 246
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadThread;->stateListener(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stateListener(I)V
    .locals 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getListener()Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mezzo/common/downloadmanager/DownloadThread$5;

    invoke-direct {v1, p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadThread$5;-><init>(Lcom/mezzo/common/downloadmanager/DownloadThread;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "do connect MainHandler!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "do connect DownloadResultListener!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public downloadListSize()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->movielistfolder:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->movielistfolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 143
    :goto_0
    return v0

    .line 141
    :cond_0
    const-string v0, "   \u2605\u2605\u2605\u2605\u2605  movielistfolder null"

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mezzo/common/downloadmanager/DownloadThread$2;

    invoke-direct {v1, p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadThread$2;-><init>(Lcom/mezzo/common/downloadmanager/DownloadThread;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    return-void
.end method

.method public fileDebug(Ljava/lang/String;)V
    .locals 7
    .param p1, "fuc"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-boolean v2, Lcom/mezzo/common/MzLog;->ISLOG:Z

    if-eqz v2, :cond_0

    .line 148
    invoke-static {p1}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "count":I
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->movielistfolder:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->movielistfolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 159
    .end local v0    # "count":I
    :cond_0
    :goto_1
    return-void

    .line 151
    .restart local v0    # "count":I
    :cond_1
    aget-object v1, v3, v2

    .line 152
    .local v1, "strFile":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "   \u2605 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "strFile":Ljava/lang/String;
    :cond_2
    const-string v2, "   \u2605\u2605\u2605\u2605\u2605  movielistfolder null"

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getData()Lcom/mezzo/common/downloadmanager/DownloadData;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->data:Lcom/mezzo/common/downloadmanager/DownloadData;

    return-object v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->movielistfolder:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->movielistfolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 171
    :goto_1
    return-object v0

    .line 164
    :cond_0
    aget-object v1, v3, v2

    .line 165
    .local v1, "strFile":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "   \u2605\u2605\u2605\u2605\u2605  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "strFile":Ljava/lang/String;
    :cond_1
    const-string v2, "   \u2605\u2605\u2605\u2605\u2605  movielistfolder null"

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getListener()Lcom/mezzo/common/downloadmanager/DownloadResultListener;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getStateListener()Lcom/mezzo/common/downloadmanager/DownloadStateListener;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->stateListener:Lcom/mezzo/common/downloadmanager/DownloadStateListener;

    return-object v0
.end method

.method public makeUrlForFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->movielistfolder:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method public makeUrlForString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->movielistfolder:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeFileAllFromDirInThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 175
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mezzo/common/downloadmanager/DownloadThread$3;

    invoke-direct {v1, p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadThread$3;-><init>(Lcom/mezzo/common/downloadmanager/DownloadThread;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 191
    return-void
.end method

.method public removeFileFromDir(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string/jumbo v1, "\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 129
    const-string v1, "   \u2606 remove before : "

    invoke-virtual {p0, v1}, Lcom/mezzo/common/downloadmanager/DownloadThread;->fileDebug(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadThread;->makeUrlForFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 131
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   removeFile--> : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 133
    const-string v1, "   \u2606 remove after : "

    invoke-virtual {p0, v1}, Lcom/mezzo/common/downloadmanager/DownloadThread;->fileDebug(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606\u2605\u2606"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public requestCancel()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->isCancel:Z

    .line 93
    return-void
.end method

.method public requestUrlForFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->folderPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getData()Lcom/mezzo/common/downloadmanager/DownloadData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/downloadmanager/DownloadData;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method public requestUrlForString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->movielistfolder:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getData()Lcom/mezzo/common/downloadmanager/DownloadData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/downloadmanager/DownloadData;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 195
    iget-object v11, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/mezzo/common/MZUtils;->networkCheck(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getData()Lcom/mezzo/common/downloadmanager/DownloadData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mezzo/common/downloadmanager/DownloadData;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 202
    const/16 v11, 0x1388

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 203
    const/16 v11, 0x1388

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 204
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    .line 205
    .local v7, "len":I
    new-array v10, v7, [B

    .line 206
    .local v10, "tmpByte":[B
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 207
    .local v6, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->requestUrlForFile()Ljava/io/File;

    move-result-object v4

    .line 208
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 209
    .local v5, "fos":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v6, v10}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_0

    iget-boolean v11, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->isCancel:Z

    if-nez v11, :cond_1

    .line 212
    :cond_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 213
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 214
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 215
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mezzo/common/downloadmanager/DownloadThread;->sendResult(I)V

    .line 216
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mezzo/common/downloadmanager/DownloadThread;->sendstate(I)V

    .line 217
    const-string v11, "SUCCESS"

    invoke-static {v11}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "downloadUrl":Ljava/net/URL;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "len":I
    .end local v8    # "read":I
    .end local v10    # "tmpByte":[B
    :goto_1
    return-void

    .line 210
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "downloadUrl":Ljava/net/URL;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "len":I
    .restart local v8    # "read":I
    .restart local v10    # "tmpByte":[B
    :cond_1
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v5, v10, v11, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    .end local v2    # "downloadUrl":Ljava/net/URL;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "len":I
    .end local v8    # "read":I
    .end local v10    # "tmpByte":[B
    :catch_0
    move-exception v9

    .line 219
    .local v9, "timeout":Ljava/net/SocketTimeoutException;
    :try_start_2
    const-string v11, "TIMEOUT"

    invoke-static {v11}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 220
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/mezzo/common/downloadmanager/DownloadThread;->sendResult(I)V

    .line 221
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/mezzo/common/downloadmanager/DownloadThread;->sendstate(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 222
    .end local v9    # "timeout":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v11, "OTHEREXCEPTION"

    invoke-static {v11}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 224
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/mezzo/common/downloadmanager/DownloadThread;->sendResult(I)V

    .line 225
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/mezzo/common/downloadmanager/DownloadThread;->sendstate(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 226
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 227
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 228
    throw v11

    .line 230
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    :cond_2
    const-string/jumbo v11, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec"

    invoke-static {v11}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, v12}, Lcom/mezzo/common/downloadmanager/DownloadThread;->sendResult(I)V

    .line 232
    invoke-direct {p0, v12}, Lcom/mezzo/common/downloadmanager/DownloadThread;->sendstate(I)V

    goto :goto_1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->context:Landroid/content/Context;

    .line 308
    return-void
.end method

.method public setData(Lcom/mezzo/common/downloadmanager/DownloadData;)V
    .locals 0
    .param p1, "data"    # Lcom/mezzo/common/downloadmanager/DownloadData;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->data:Lcom/mezzo/common/downloadmanager/DownloadData;

    .line 300
    return-void
.end method

.method public setListener(Lcom/mezzo/common/downloadmanager/DownloadResultListener;Lcom/mezzo/common/downloadmanager/DownloadStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mezzo/common/downloadmanager/DownloadResultListener;
    .param p2, "stateListener"    # Lcom/mezzo/common/downloadmanager/DownloadStateListener;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->listener:Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    .line 320
    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->stateListener:Lcom/mezzo/common/downloadmanager/DownloadStateListener;

    .line 321
    return-void
.end method

.method public setMainHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mainHandler"    # Landroid/os/Handler;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread;->mainHandler:Landroid/os/Handler;

    .line 292
    return-void
.end method
