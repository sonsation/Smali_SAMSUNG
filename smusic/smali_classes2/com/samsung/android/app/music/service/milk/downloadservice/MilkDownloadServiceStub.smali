.class public Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;
.super Ljava/lang/Object;
.source "MilkDownloadServiceStub.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final LOG_TAG:Ljava/lang/String; = "MilkDownloadServiceStub"


# instance fields
.field private isSequential:Z

.field private mBinder:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;

.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;

.field private mNotiAgent:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

.field private mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->isSequential:Z

    .line 83
    new-instance v0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;-><init>(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mBinder:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mMainHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;
    .param p1, "x1"    # Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->isSequential:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->isSequential:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->startNextTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mNotiAgent:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->isWorkingItem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->startTask(Ljava/lang/String;I)V

    return-void
.end method

.method private clearAllTempFiles()V
    .locals 8

    .prologue
    .line 247
    const-string v3, "MilkDownloadServiceStub"

    const-string v4, "clearAllTempFiles is called"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 249
    .local v2, "cacheFolder":Ljava/io/File;
    if-nez v2, :cond_1

    .line 250
    const-string v3, "MilkDownloadServiceStub"

    const-string v4, "cleanTemporaryFiles Unable to access to cache folder"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void

    .line 254
    :cond_1
    new-instance v3, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$3;-><init>(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 261
    .local v1, "cacheFiles":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 262
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 263
    .local v0, "cacheFile":Ljava/io/File;
    const-string v5, "MilkDownloadServiceStub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanTemporaryFiles delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 265
    const-string v5, "MilkDownloadServiceStub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanTemporaryFiles Unable to delete cache file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isWorkingItem(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackType"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->getItem()Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    .line 76
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->getItem()Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackType()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 79
    :cond_0
    const-string v1, "MilkDownloadServiceStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWorkingItem trackId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is working : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return v0
.end method

.method private startNextTask()Z
    .locals 3

    .prologue
    .line 57
    const-string v1, "MilkDownloadServiceStub"

    const-string/jumbo v2, "startNextTask"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->getNextDownloadTrack(Landroid/content/Context;)Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    move-result-object v0

    .line 59
    .local v0, "item":Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    new-instance v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mNotiAgent:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->getDownloadTask(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getIsDownloading()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->start()V

    .line 64
    const/4 v1, 0x1

    .line 70
    :goto_0
    return v1

    .line 67
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    .line 68
    const-string v1, "MilkDownloadServiceStub"

    const-string/jumbo v2, "startNextTask fail to query"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startTask(Ljava/lang/String;I)V
    .locals 4
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackType"    # I

    .prologue
    .line 45
    const-string v1, "MilkDownloadServiceStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTask trackId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->getDownloadTrack(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    move-result-object v0

    .line 47
    .local v0, "item":Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    new-instance v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mNotiAgent:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    .line 48
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->getDownloadTask(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    .line 50
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->start()V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v1, "MilkDownloadServiceStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTask trackId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " downloadItem is not existed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mBinder:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;

    return-object v0
.end method

.method public onFailed(Ljava/lang/String;I)V
    .locals 4
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 211
    const-string v1, "MilkDownloadServiceStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFailed trackId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->isSequential:Z

    .line 213
    const/16 v1, 0x6c

    if-ne p2, v1, :cond_0

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.store.download.device_overflow"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 233
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mNotiAgent:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->error()V

    .line 234
    return-void

    .line 217
    :cond_0
    const/16 v1, 0x66

    if-eq p2, v1, :cond_1

    const/16 v1, 0x6b

    if-ne p2, v1, :cond_2

    .line 219
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.store.download.failed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "ErrorCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 223
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$2;-><init>(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onProgressUpdated(Ljava/lang/String;JJII)V
    .locals 4
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "downloaded"    # J
    .param p4, "fileSize"    # J
    .param p6, "trackType"    # I
    .param p7, "percent"    # I

    .prologue
    .line 239
    const-string v0, "MilkDownloadServiceStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressUpdated trackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " downloaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p6}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->updateDownloadedTrackSize(Landroid/content/Context;Ljava/lang/String;JI)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mNotiAgent:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    invoke-virtual {v0, p7}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->progress(I)V

    .line 244
    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v0, "MilkDownloadServiceStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStarted trackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mNotiAgent:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->start(Z)V

    .line 177
    return-void
.end method

.method public onStopped(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "downloaded"    # J
    .param p4, "fileSize"    # J

    .prologue
    .line 181
    const-string v0, "MilkDownloadServiceStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopped trackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " downloaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mNotiAgent:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    long-to-double v2, p2

    long-to-double v4, p4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->waiting(I)V

    .line 184
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v0, "MilkDownloadServiceStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess trackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSequential : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->isSequential:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mNotiAgent:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->success()V

    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->isSequential:Z

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->startNextTask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->isSequential:Z

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->getDownloadQueueCount(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.store.download.completed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->clearAllTempFiles()V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02c4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    :cond_0
    return-void

    .line 195
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->mWorkingItem:Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    goto :goto_0
.end method
