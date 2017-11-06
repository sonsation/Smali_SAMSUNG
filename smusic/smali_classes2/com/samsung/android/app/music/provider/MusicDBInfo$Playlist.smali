.class public Lcom/samsung/android/app/music/provider/MusicDBInfo$Playlist;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Playlist"
.end annotation


# static fields
.field static final ALTER_COLUMN_20200_IS_SYNC:Ljava/lang/String; = "is_sync INTEGER DEFAULT 0"

.field static final ALTER_COLUMN_20200_SORT_BY:Ljava/lang/String; = "sort_by INTEGER DEFAULT -1"

.field static final TABLE_COLUMNS_DEFINITION_20077:Ljava/lang/String; = "_id INTEGER PRIMARY KEY,source_id INTEGER,_data TEXT UNIQUE COLLATE NOCASE,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER,synced_hashcode TEXT"

.field static final TABLE_COLUMNS_DEFINITION_20200:Ljava/lang/String; = "_id INTEGER PRIMARY KEY,source_playlist_id TEXT, _data TEXT UNIQUE COLLATE NOCASE,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER,synced_hashcode TEXT,name_pinyin TEXT,name_key TEXT"

.field private static final TABLE_COLUMNS_DEFINITION_COMMON:Ljava/lang/String; = "_data TEXT UNIQUE COLLATE NOCASE,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER,synced_hashcode TEXT"

.field public static final TABLE_NAME:Ljava/lang/String; = "audio_playlists"

.field static final TABLE_PINYIN_COLUMNS_20077:Ljava/lang/String; = "name_pinyin TEXT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
