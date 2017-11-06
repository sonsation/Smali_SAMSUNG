.class public final Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;
.super Ljava/lang/Object;
.source "MusicInfoUpdateHelper.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper$TackType;
    }
.end annotation


# static fields
.field private static final EXTRA_ARTIST:Ljava/lang/String; = "smusic_artist"

.field private static final EXTRA_ARTWORK_URI:Ljava/lang/String; = "smusic_artwork_uri"

.field private static final EXTRA_SOURCE_ID:Ljava/lang/String; = "smusic_source_id"

.field private static final EXTRA_STATION_ID:Ljava/lang/String; = "smusic_station_id"

.field private static final EXTRA_STATION_NAME:Ljava/lang/String; = "smusic_station_name"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "smusic_title"

.field private static final EXTRA_TRACK_TYPE:Ljava/lang/String; = "smusic_track_type"

.field private static final MEDIA_STORE_ALBUM_ART_URI:Landroid/net/Uri;


# instance fields
.field private mArtworkUriPair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mStationNamePair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "content://media/external/audio/albumart"

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->MEDIA_STORE_ALBUM_ART_URI:Landroid/net/Uri;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private getArtworkUri(IJ)Ljava/lang/String;
    .locals 4
    .param p1, "cpAttrs"    # I
    .param p2, "albumId"    # J

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "artworkUri":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 88
    :goto_0
    return-object v0

    .line 79
    :sswitch_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->hasCachedArtworkUri(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mArtworkUriPair:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v0    # "artworkUri":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "artworkUri":Ljava/lang/String;
    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->getArtworkUriInternal(IJ)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mArtworkUriPair:Landroid/util/Pair;

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_0
        0x80002 -> :sswitch_0
    .end sparse-switch
.end method

.method private getArtworkUriInternal(IJ)Ljava/lang/String;
    .locals 12
    .param p1, "cpAttrs"    # I
    .param p2, "albumId"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 92
    invoke-static {p1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, "uri":Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-object v5

    .line 95
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "image_url_big"

    aput-object v3, v2, v10

    const-string/jumbo v3, "thumbnail_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 98
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v10

    .line 95
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v0

    .line 102
    if-eqz v6, :cond_1

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_0

    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 95
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    :catchall_0
    move-exception v2

    move-object v5, v0

    move-object v0, v2

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 105
    .end local v6    # "c":Landroid/database/Cursor;
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "source_album_id"

    aput-object v3, v2, v10

    const-string v3, "album_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 108
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v10

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 109
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_9

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 110
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 111
    .local v8, "sourceAlbumId":J
    sget-object v0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->MEDIA_STORE_ALBUM_ART_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 114
    if-eqz v6, :cond_7

    if-eqz v5, :cond_8

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_7
    :goto_4
    move-object v5, v0

    goto/16 :goto_0

    :catch_4
    move-exception v2

    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v8    # "sourceAlbumId":J
    :cond_9
    if-eqz v6, :cond_0

    if-eqz v5, :cond_a

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 105
    :catch_6
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 114
    :catchall_1
    move-exception v2

    move-object v5, v0

    move-object v0, v2

    :goto_5
    if-eqz v6, :cond_b

    if-eqz v5, :cond_c

    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_b
    :goto_6
    throw v0

    :catch_7
    move-exception v2

    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 102
    :catchall_3
    move-exception v0

    goto :goto_2

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_1
        0x80002 -> :sswitch_0
    .end sparse-switch
.end method

.method private getChannelName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-object v5

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mStationNamePair:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mStationNamePair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mStationNamePair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mStationNamePair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v7, 0x0

    .line 134
    .local v7, "stationName":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getStationOnlyContentUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "station_station_name"

    aput-object v3, v2, v8

    const-string/jumbo v3, "station_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 142
    :cond_2
    if-eqz v6, :cond_3

    if-eqz v5, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :cond_3
    :goto_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mStationNamePair:Landroid/util/Pair;

    move-object v5, v7

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 134
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v5, :cond_6

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private hasCachedArtworkUri(J)Z
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mArtworkUriPair:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->mArtworkUriPair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fillUpIntentExtras(Landroid/content/Intent;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 6
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 58
    const-string/jumbo v4, "smusic_source_id"

    const-string v5, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual {p2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v4, "smusic_title"

    const-string v5, "android.media.metadata.TITLE"

    invoke-virtual {p2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string/jumbo v4, "smusic_artist"

    const-string v5, "android.media.metadata.ARTIST"

    invoke-virtual {p2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v5, "smusic_track_type"

    .line 62
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 61
    :goto_0
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v4, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 65
    .local v2, "cpAttrs":I
    const-string v4, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 66
    .local v0, "albumId":J
    const-string/jumbo v4, "smusic_artwork_uri"

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->getArtworkUri(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v4, "com.samsung.android.app.music.metadata.CHANNEL_NAME"

    invoke-virtual {p2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "stationId":Ljava/lang/String;
    const-string/jumbo v4, "smusic_station_id"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v4, "smusic_station_name"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->getChannelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    return-void

    .line 62
    .end local v0    # "albumId":J
    .end local v2    # "cpAttrs":I
    .end local v3    # "stationId":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
