.class final Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;
.super Ljava/lang/Object;
.source "LyricsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LyricsData"
.end annotation


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public audioId:J

.field public cpAttrs:I

.field public filePath:Ljava/lang/String;

.field public listPosition:I

.field public lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field public title:Ljava/lang/String;

.field public user:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;-><init>()V

    return-void
.end method
