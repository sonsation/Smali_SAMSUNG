.class Lcom/samsung/android/app/music/provider/MusicDBInfo$NowPlayingQueue;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NowPlayingQueue"
.end annotation


# static fields
.field static final TABLE_COLUMNS_DEFINITION:Ljava/lang/String; = "_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,play_order INTEGER NOT NULL"

.field static final TABLE_NAME:Ljava/lang/String; = "now_playing_queue_map"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
