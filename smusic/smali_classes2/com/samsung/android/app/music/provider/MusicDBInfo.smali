.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$StreamingCaches;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$DLNA;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Hearts;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$MostPlayedRank;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Composer;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Genre;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArt;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistSyncQueue;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$NowPlayingQueueUnique;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$NowPlayingQueue;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistMap;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Playlist;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;
    }
.end annotation


# static fields
.field static final PRIMARY_DATABASE_NAME:Ljava/lang/String; = "smusic.db"

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/app/music/provider/MusicDBInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
