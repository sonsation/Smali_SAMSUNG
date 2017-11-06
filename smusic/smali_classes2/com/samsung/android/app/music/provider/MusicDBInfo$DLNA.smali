.class final Lcom/samsung/android/app/music/provider/MusicDBInfo$DLNA;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DLNA"
.end annotation


# static fields
.field static final DLNA_ALBUM_ART:Ljava/lang/String; = "dlna_album_art"

.field static final DLNA_AVPLAYER_TABLE_COLUMNS_DEFINITION:Ljava/lang/String; = "_id INTEGER PRIMARY KEY, avplayer_id TEXT, avplayer_name TEXT, album_art TEXT, nic_id TEXT, is_seekable_on_paused INTEGER, ip_address TEXT"

.field static final DLNA_AVPLAYER_TABLE_NAME:Ljava/lang/String; = "dlna_dmr_table"

.field static final DLNA_OPEN_INTENT_CONTENTS_TABLE_NAME:Ljava/lang/String; = "dlna_open_intent_table"

.field static final DLNA_PROVIDER_TABLE_COLUMNS_DEFINITION:Ljava/lang/String; = "_id INTEGER PRIMARY KEY, provider_id TEXT, provider_name TEXT, album_art TEXT, nic_id TEXT"

.field static final DLNA_PROVIDER_TABLE_NAME:Ljava/lang/String; = "dlna_dms_table"

.field static final DLNA_TABLE_COLUMNS_DEFINITION:Ljava/lang/String; = "_id INTEGER PRIMARY KEY, provider_id TEXT, provider_name TEXT, artist TEXT, album TEXT, album_id INTEGER, title TEXT, _data TEXT, mime_type TEXT, duration INTEGER, _size LONG, extension TEXT, seed TEXT, genre_name TEXT"

.field static final DLNA_TABLE_NAME:Ljava/lang/String; = "dlna_dms_contents_table"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
