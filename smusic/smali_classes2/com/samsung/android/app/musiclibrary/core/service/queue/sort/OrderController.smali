.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;
.super Ljava/lang/Object;
.source "OrderController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

.field private final mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

.field private final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private final mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingManager"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .param p3, "listener"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 45
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    .line 46
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    .line 47
    return-void
.end method

.method private buildUpSortList(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;IZ)V
    .locals 4
    .param p1, "info"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;
    .param p2, "sort"    # I
    .param p3, "sync"    # Z

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;->setOnResultListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V

    .line 144
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 160
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    if-nez v1, :cond_1

    .line 174
    :goto_1
    return-void

    .line 146
    :pswitch_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    goto :goto_0

    .line 149
    :pswitch_1
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;I)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    goto :goto_0

    .line 152
    :pswitch_2
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    goto :goto_0

    .line 155
    :pswitch_3
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/RecentlyAddedOrder;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    goto :goto_0

    .line 166
    :cond_1
    if-eqz p3, :cond_2

    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;->syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object v0

    .line 168
    .local v0, "result":Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;->positionList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->setList(Ljava/util/List;)V

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " execute() end size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;->positionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->printInfoLog(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    .end local v0    # "result":Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;->setOnResultListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V

    .line 173
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mOrder:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private cleanPositions(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .local v3, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 126
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 128
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "index":I
    :cond_1
    return-object v3
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v0, "SMUSIC-SV-List"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->setSortMode(IZ)Z

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->setList(Ljava/util/List;)V

    .line 60
    return-void
.end method

.method public createSortList(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;Z)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;
    .param p2, "sync"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->getSortMode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->buildUpSortList(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;IZ)V

    .line 55
    return-void
.end method

.method public getSortInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->getSortMode()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->getOrderedList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->getSortInfo(ILjava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    move-result-object v0

    return-object v0
.end method

.method public onResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;->positionList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->setList(Ljava/util/List;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " execute() end size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;->positionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->printInfoLog(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)V

    .line 183
    :cond_0
    return-void
.end method

.method public removePositions([II)I
    .locals 12
    .param p1, "positions"    # [I
    .param p2, "playPos"    # I

    .prologue
    const/4 v8, 0x0

    .line 78
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->getOrderedList()Ljava/util/ArrayList;

    move-result-object v6

    .line 79
    .local v6, "sortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 80
    .local v5, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v4, "removePositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v9, p1

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_1

    aget v3, p1, v7

    .line 83
    .local v3, "pos":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 84
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 85
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " pos : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sortList.size : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->printInfoLog(Ljava/lang/String;)V

    .line 82
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    .end local v2    # "index":I
    .end local v3    # "pos":I
    :cond_1
    const/4 v7, -0x1

    if-eq p2, v7, :cond_3

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 99
    .local v0, "currentPlayPos":I
    :goto_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 100
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_4

    .line 101
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 102
    .restart local v3    # "pos":I
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    if-ge v3, v0, :cond_2

    .line 104
    add-int/lit8 v0, v0, -0x1

    .line 100
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 96
    .end local v0    # "currentPlayPos":I
    .end local v1    # "i":I
    .end local v3    # "pos":I
    :cond_3
    move v0, p2

    .restart local v0    # "currentPlayPos":I
    goto :goto_2

    .line 107
    .restart local v1    # "i":I
    :cond_4
    invoke-direct {p0, v6, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->cleanPositions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v6

    .line 108
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    invoke-virtual {v7, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->setList(Ljava/util/List;)V

    .line 113
    if-ltz v0, :cond_7

    .line 114
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v0, v7, :cond_5

    .line 115
    const/4 v0, 0x0

    .line 117
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 119
    :goto_4
    return v7

    :cond_6
    move v7, v8

    .line 117
    goto :goto_4

    :cond_7
    move v7, v0

    .line 119
    goto :goto_4
.end method

.method public setSortMode(IZ)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "doSave"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->getSortMode()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSortInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->setSortMode(I)V

    .line 67
    if-eqz p2, :cond_1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setSortMode(I)V

    .line 70
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
