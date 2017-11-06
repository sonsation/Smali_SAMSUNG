.class interface abstract Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$OnMediaEventListener;
.super Ljava/lang/Object;
.source "AlbumCoverTagsUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;
.implements Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnMediaEventListener"
.end annotation


# virtual methods
.method public abstract onBeginCollected()V
.end method

.method public abstract onEndCollected(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;)V
.end method
