.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;
.super Ljava/lang/Object;
.source "NextPlayingItemProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

.field private final mKeyword:Ljava/lang/String;

.field private final mListSize:I

.field private final mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

.field private final mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

.field private final mPosition:I

.field private final mSupportLocalOnlyPlayable:Z

.field private final mUri:Landroid/net/Uri;

.field private final mUriType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Landroid/net/Uri;ILjava/lang/String;IILcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playingItemFactory"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "uriType"    # I
    .param p5, "keyword"    # Ljava/lang/String;
    .param p6, "position"    # I
    .param p7, "listSize"    # I
    .param p8, "notifier"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;
    .param p9, "supportLocalOnlyPlayable"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mUri:Landroid/net/Uri;

    .line 36
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mUriType:I

    .line 37
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mKeyword:Ljava/lang/String;

    .line 38
    iput p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mPosition:I

    .line 39
    iput p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mListSize:I

    .line 40
    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    .line 41
    iput-boolean p9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mSupportLocalOnlyPlayable:Z

    .line 42
    return-void
.end method


# virtual methods
.method getItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object v0
.end method

.method getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mUri:Landroid/net/Uri;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mUriType:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mKeyword:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mPosition:I

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mListSize:I

    const/4 v7, 0x2

    .line 56
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;->getPlayingItem(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;III)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mSupportLocalOnlyPlayable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-virtual {v0, v8, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->mItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto :goto_0
.end method
