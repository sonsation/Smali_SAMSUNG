.class final Lcom/samsung/android/app/music/provider/MusicDBInfo$StreamingCaches;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreamingCaches"
.end annotation


# static fields
.field static final SCHEMA_COLUMNS_DEFINITION:Ljava/lang/String; = "_id INTEGER PRIMARY KEY, streaming_id TEXT NOT NULL, path TEXT NOT NULL, quality INTEGER, bitrate TEXT, type TEXT, server_time_stamp TEXT, duration INTEGER, content_length INTEGER, downloaded_length INTEGER DEFAULT 0, is_full_stream INTEGER DEFAULT 0, encrypt_type INTEGER DEFAULT -1, date_modified INTEGER DEFAULT (strftime(\'%s\',\'now\')), last_access_time INTEGER DEFAULT (strftime(\'%s\',\'now\')), CONSTRAINT unique_name UNIQUE (path) ON CONFLICT REPLACE"

.field static final TABLE_NAME:Ljava/lang/String; = "streaming_cache_table"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
