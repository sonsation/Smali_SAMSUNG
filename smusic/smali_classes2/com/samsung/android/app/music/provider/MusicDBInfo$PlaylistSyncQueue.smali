.class public Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistSyncQueue;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistSyncQueue"
.end annotation


# static fields
.field public static final ACTION_PLAYLIST_MEMBERS:Ljava/lang/String; = "2_playlist_members"

.field public static final PLAYLIST_ID:Ljava/lang/String; = "playlist_id"

.field public static final PLAYLIST_NAME:Ljava/lang/String; = "playlist_name"

.field public static final REQUEST_DATE:Ljava/lang/String; = "request_date"

.field public static final SYNC_DOWN_ACTION:Ljava/lang/String; = "sync_down_action"

.field static final TABLE_COLUMNS_DEFINITION:Ljava/lang/String; = "_id INTEGER PRIMARY KEY, playlist_id INTEGER NOT NULL, playlist_name TEXT, sync_down_action TEXT, request_date INTEGER NOT NULL, CONSTRAINT unique_sync_list UNIQUE(playlist_id,sync_down_action) ON CONFLICT REPLACE"

.field public static final TABLE_NAME:Ljava/lang/String; = "sync_playlist_list"

.field static final UPDATE_TRIGGER_NAME:Ljava/lang/String; = "sync_playlist_list_update_trigger"

.field static final UPDATE_TRIGGER_SCHEMA:Ljava/lang/String; = "AFTER INSERT ON sync_playlist_list  BEGIN    UPDATE sync_playlist_list SET playlist_name=(SELECT name FROM audio_playlists WHERE audio_playlists._id=new.playlist_id); END"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
