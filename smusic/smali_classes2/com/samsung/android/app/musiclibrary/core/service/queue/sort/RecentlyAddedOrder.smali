.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;
.super Ljava/lang/Object;
.source "RecentlyAddedOrder.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

.field private mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    .line 30
    return-void
.end method

.method private notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .locals 1
    .param p1, "result"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)V

    .line 58
    :cond_0
    return-object p1
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "SMUSIC-SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    .line 35
    return-void
.end method

.method public setOnResultListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    .line 40
    return-void
.end method

.method public syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .locals 4

    .prologue
    .line 44
    const-string v2, "execute() start"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->printLog(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    iget-object v1, v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playList:[J

    .line 46
    .local v1, "queueList":[J
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 47
    :cond_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object v2

    .line 51
    :goto_0
    return-object v2

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->getRecentlyPlayList()Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;->notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object v2

    goto :goto_0
.end method
