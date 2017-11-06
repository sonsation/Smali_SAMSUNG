.class final Lcom/samsung/android/app/music/provider/MusicDBInfo$MostPlayedRank;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MostPlayedRank"
.end annotation


# static fields
.field static final DEFAULT_ARGS_LENGTH:I = 0x2

.field static final RAW_QUERY:Ljava/lang/String; = "SELECT _id, title, album_id, cp_attrs, list_type, max(sum_of_most_played) AS count_of_most_played, dummy FROM ( SELECT audio.artist_id AS _id, artist AS title, sum(most_played) AS sum_of_most_played, album_id, cp_attrs, 65539 AS list_type, min(album COLLATE LOCALIZED) AS dummy FROM audio WHERE cp_attrs & ? GROUP BY artist_id) UNION ALL SELECT _id, title, album_id, cp_attrs, list_type, max(sum_of_most_played) AS count_of_most_played, dummy FROM ( SELECT audio.album_id AS _id, album AS title, sum(most_played) AS sum_of_most_played, album_id, cp_attrs, 65538 AS list_type, NULL AS dummy FROM audio WHERE cp_attrs & ? GROUP BY album_id)"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
