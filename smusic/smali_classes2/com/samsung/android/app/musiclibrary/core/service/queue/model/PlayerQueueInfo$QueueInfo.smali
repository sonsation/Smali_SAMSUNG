.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;
.super Ljava/lang/Object;
.source "PlayerQueueInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueueInfo"
.end annotation


# instance fields
.field public final baseUri:Landroid/net/Uri;

.field public final keyWord:Ljava/lang/String;

.field public final playList:[J

.field public final playListLength:I

.field public final playPos:I

.field public final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private recentlyPlayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final uriType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->uriType:I

    .line 64
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->keyWord:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->baseUri:Landroid/net/Uri;

    .line 66
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playList:[J

    .line 67
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playListLength:I

    .line 68
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playPos:I

    .line 69
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->queue:Ljava/util/List;

    .line 70
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;->EMPTY_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->recentlyPlayList:Ljava/util/List;

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/net/Uri;[JIILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "uriType"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "baseUri"    # Landroid/net/Uri;
    .param p4, "playList"    # [J
    .param p5, "playListLength"    # I
    .param p6, "playPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "[JII",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    .local p8, "recentlyPlayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->uriType:I

    .line 53
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->keyWord:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->baseUri:Landroid/net/Uri;

    .line 55
    if-nez p4, :cond_0

    sget-object p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    .end local p4    # "playList":[J
    :cond_0
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playList:[J

    .line 56
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playListLength:I

    .line 57
    iput p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playPos:I

    .line 58
    iput-object p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->queue:Ljava/util/List;

    .line 59
    if-nez p8, :cond_1

    sget-object p8, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;->EMPTY_LIST:Ljava/util/ArrayList;

    .end local p8    # "recentlyPlayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->recentlyPlayList:Ljava/util/List;

    .line 60
    return-void
.end method


# virtual methods
.method public getRecentlyPlayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->recentlyPlayList:Ljava/util/List;

    return-object v0
.end method

.method public setRecentlyPlayList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "recentlyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 79
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;->EMPTY_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->recentlyPlayList:Ljava/util/List;

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->recentlyPlayList:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playList:[J

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-wide v2, v4, v1

    .line 90
    .local v2, "id":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    const-string v6, " ,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "id":J
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uriType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->uriType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " baseUri = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->baseUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " playList = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " playListLength = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playListLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " playPos = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->playPos:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " queue = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->queue:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " recentlyPlayList = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->recentlyPlayList:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
