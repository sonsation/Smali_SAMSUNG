.class public final Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;
.super Ljava/lang/Object;
.source "RadioQueueModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel$Position;
    }
.end annotation


# instance fields
.field private mPlayingItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;->mPlayingItemList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 36
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;->mPlayingItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 39
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    goto :goto_0
.end method

.method getQueueItem(I)Landroid/media/session/MediaSession$QueueItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;->mQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    return-object v0
.end method

.method setPlayingItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "playingItemList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;->mPlayingItemList:Ljava/util/List;

    .line 47
    return-void
.end method
