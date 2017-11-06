.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;
.super Ljava/lang/Object;
.source "StorageOrder.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

.field private mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

.field private final mStorageLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;
    .param p3, "StorageLocation"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    .line 43
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mStorageLocation:I

    .line 44
    return-void
.end method

.method private notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;J)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .locals 1
    .param p1, "result"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .param p2, "base"    # J

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)V

    .line 117
    :cond_0
    const-string v0, "execute() end"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->printLog(Ljava/lang/String;)V

    .line 118
    return-object p1
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "SMUSIC-SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "SMUSIC-SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->NAME:Ljava/lang/String;

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

    .line 123
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    .line 49
    return-void
.end method

.method public setOnResultListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    .line 54
    return-void
.end method

.method public syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .locals 13

    .prologue
    .line 58
    const-string v11, "execute() start"

    invoke-direct {p0, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->printLog(Ljava/lang/String;)V

    .line 59
    const-wide/16 v2, 0x0

    .line 63
    .local v2, "base":J
    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    iget-object v9, v11, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playList:[J

    .line 64
    .local v9, "queueList":[J
    if-eqz v9, :cond_0

    array-length v11, v9

    if-nez v11, :cond_1

    .line 65
    :cond_0
    new-instance v11, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    sget-object v12, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v11, v12}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v11, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;J)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object v11

    .line 107
    :goto_0
    return-object v11

    .line 69
    :cond_1
    const-string v11, "_id"

    invoke-static {v11, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v10

    .line 70
    .local v10, "selection":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    iget-object v11, v11, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->baseUri:Landroid/net/Uri;

    iget v12, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mStorageLocation:I

    invoke-direct {v0, v11, v10, v12}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 71
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->mContext:Landroid/content/Context;

    invoke-static {v11, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueItemUtils;->getSortList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Ljava/util/List;

    move-result-object v6

    .line 78
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v8, "posList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v7, "nonList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v11, v9

    if-ge v1, v11, :cond_3

    .line 87
    aget-wide v4, v9, v1

    .line 88
    .local v4, "id":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    .end local v4    # "id":J
    :cond_3
    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance v11, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    invoke-direct {v11, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v11, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;->notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;J)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object v11

    goto :goto_0
.end method
