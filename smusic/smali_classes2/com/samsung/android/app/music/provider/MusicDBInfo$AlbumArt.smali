.class Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArt;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumArt"
.end annotation


# static fields
.field static final TABLE_COLUMNS_DEFINITION_20077:Ljava/lang/String; = "source_album_id        INTEGER,album_id               INTEGER UNIQUE,album_art_location     TEXT,_data                  TEXT,CONSTRAINT unique_album_art UNIQUE(source_album_id, album_art_location) ON CONFLICT REPLACE"

.field static final TABLE_COLUMNS_DEFINITION_20200:Ljava/lang/String; = "source_album_id        TEXT,album_id               INTEGER UNIQUE,album_art_location     TEXT,_data                  TEXT,CONSTRAINT unique_album_art UNIQUE(source_album_id, album_art_location) ON CONFLICT REPLACE"

.field private static final TABLE_COLUMNS_DEFINITION_COMMON:Ljava/lang/String; = "album_id               INTEGER UNIQUE,album_art_location     TEXT,_data                  TEXT,CONSTRAINT unique_album_art UNIQUE(source_album_id, album_art_location) ON CONFLICT REPLACE"

.field static final TABLE_NAME:Ljava/lang/String; = "album_art"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
