.class public Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistMap;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistMap"
.end annotation


# static fields
.field static final ALTER_COLUMN_20078_AUDIO_DATA:Ljava/lang/String; = "audio_data TEXT"

.field static final ALTER_COLUMN_20200_AUDIO_CP_ATTRS:Ljava/lang/String; = "audio_cp_attrs INTEGER"

.field static final ALTER_COLUMN_20200_SERVER_TRACK_SEQ_ID:Ljava/lang/String; = "server_track_seq_id TEXT"

.field static final CLEANUP_TRIGGER_NAME:Ljava/lang/String; = "audio_playlists_cleanup"

.field static final CLEANUP_TRIGGER_SCHEMA:Ljava/lang/String; = "DELETE ON audio_playlists   BEGIN     DELETE FROM audio_playlists_map WHERE playlist_id = old._id;  END;"

.field static final INDEX_AUDIO_DATA_NAME:Ljava/lang/String; = "audio_playlists_map_data_index"

.field static final INDEX_AUDIO_DATA_SCHEMA:Ljava/lang/String; = "audio_playlists_map(audio_data)"

.field static final TABLE_COLUMNS_DEFINITION_20077:Ljava/lang/String; = "_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,audio_source_id INTEGER DEFAULT 0"

.field static final TABLE_COLUMNS_DEFINITION_20100:Ljava/lang/String; = "_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,audio_source_id TEXT,audio_data TEXT"

.field private static final TABLE_COLUMNS_DEFINITION_COMMON:Ljava/lang/String; = "_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,"

.field public static final TABLE_NAME:Ljava/lang/String; = "audio_playlists_map"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
