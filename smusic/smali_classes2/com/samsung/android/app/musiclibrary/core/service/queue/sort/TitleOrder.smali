.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;
.super Ljava/lang/Object;
.source "TitleOrder.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    .line 40
    return-void
.end method

.method private notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;J)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .locals 2
    .param p1, "result"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .param p2, "base"    # J

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)V

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " execute() end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->printLog(Ljava/lang/String;)V

    .line 111
    return-object p1
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "SMUSIC-SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->NAME:Ljava/lang/String;

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

    .line 120
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, "SMUSIC-SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->NAME:Ljava/lang/String;

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

    .line 116
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    .line 45
    return-void
.end method

.method public setOnResultListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;

    .line 50
    return-void
.end method

.method public syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
    .locals 14

    .prologue
    .line 54
    const-string v10, "execute() start"

    invoke-direct {p0, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->printLog(Ljava/lang/String;)V

    .line 55
    const-wide/16 v2, 0x0

    .line 59
    .local v2, "base":J
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    iget-object v8, v10, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playList:[J

    .line 60
    .local v8, "queueList":[J
    if-eqz v8, :cond_0

    array-length v10, v8

    if-nez v10, :cond_1

    .line 61
    :cond_0
    new-instance v10, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    sget-object v11, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v10, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;J)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object v10

    .line 100
    :goto_0
    return-object v10

    .line 65
    :cond_1
    const-string v10, "_id"

    invoke-static {v10, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, "selection":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;

    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    iget-object v10, v10, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->baseUri:Landroid/net/Uri;

    invoke-direct {v0, v10, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 67
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueItemUtils;->getSortList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Ljava/util/List;

    move-result-object v6

    .line 74
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v7, "posList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 83
    .local v4, "id":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v10, v8

    if-ge v1, v10, :cond_2

    .line 84
    aget-wide v12, v8, v1

    cmp-long v10, v12, v4

    if-nez v10, :cond_3

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    .end local v1    # "i":I
    .end local v4    # "id":J
    :cond_4
    new-instance v10, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    invoke-direct {v10, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v10, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;->notifyResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;J)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    move-result-object v10

    goto :goto_0
.end method
