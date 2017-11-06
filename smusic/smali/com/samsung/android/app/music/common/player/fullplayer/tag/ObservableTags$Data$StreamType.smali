.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;
.super Ljava/lang/Object;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamType"
.end annotation


# instance fields
.field cpName:I

.field cpQuality:J

.field isDrm:Z

.field localQuality:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static from(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;
    .locals 8
    .param p0, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "connectivityKey"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;

    invoke-direct {v4}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;-><init>()V

    .line 85
    .local v4, "s":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;
    const-string v5, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v5}, Lcom/samsung/android/app/music/provider/CpAttrs;->getCpName(I)I

    move-result v5

    iput v5, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->cpName:I

    .line 86
    const-string v5, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->localQuality:J

    .line 88
    const-string v5, "com.samsung.android.app.music.metadata.PLAYING_URI"

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->isDrm:Z

    .line 91
    if-nez p1, :cond_0

    .line 92
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 94
    :cond_0
    const-string/jumbo v5, "player_extra_content"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, "content":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getPlayingItemExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 97
    if-eqz p1, :cond_1

    .line 98
    const-string/jumbo v5, "player_extra_content"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    :cond_1
    if-eqz v0, :cond_2

    .line 102
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent;->obtain(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerContent;

    move-result-object v2

    .line 103
    .local v2, "playerContent":Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerContent;
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerContent;->getQuality()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->cpQuality:J

    .line 110
    .end local v2    # "playerContent":Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerContent;
    :goto_0
    return-object v4

    .line 105
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v5

    const/4 v6, 0x0

    .line 106
    invoke-virtual {v5, p2, v6}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 108
    .local v3, "qualitySetting":I
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->convertQuality(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->cpQuality:J

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    instance-of v3, p1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 116
    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;

    .line 117
    .local v0, "s":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;
    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->cpName:I

    iget v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->cpName:I

    if-eq v3, v4, :cond_1

    .line 128
    .end local v0    # "s":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;
    :cond_0
    :goto_0
    return v2

    .line 119
    .restart local v0    # "s":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;
    :cond_1
    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->cpName:I

    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_2

    iget-boolean v3, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->isDrm:Z

    if-eqz v3, :cond_5

    .line 120
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->isDrm:Z

    if-eqz v3, :cond_3

    .line 121
    iget-boolean v2, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->isDrm:Z

    goto :goto_0

    .line 123
    :cond_3
    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->localQuality:J

    iget-wide v6, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->localQuality:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 125
    :cond_5
    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->cpQuality:J

    iget-wide v6, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->cpQuality:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_2
.end method
