.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;
.super Ljava/lang/Object;
.source "AlbumCoverTagsUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectedEventsArgs"
.end annotation


# instance fields
.field albumHeight:I

.field albumWidth:I

.field data:Landroid/os/Bundle;

.field lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field m:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field s:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
