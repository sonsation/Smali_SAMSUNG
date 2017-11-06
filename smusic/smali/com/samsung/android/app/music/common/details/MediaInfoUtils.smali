.class public Lcom/samsung/android/app/music/common/details/MediaInfoUtils;
.super Ljava/lang/Object;
.source "MediaInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    }
.end annotation


# static fields
.field private static final ALBUM_ARTIST:Ljava/lang/String; = "album_artist"

.field private static final BIT_DEPTH:Ljava/lang/String; = "bit_depth"

.field private static final GENRE_NAME:Ljava/lang/String; = "genre_name"

.field private static final GOOGLE_SEARCH_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final MEDIA_META_DATA_COLS:[Ljava/lang/String;

.field private static final SAMPLING_RATE:Ljava/lang/String; = "sampling_rate"

.field private static final TAG:Ljava/lang/String;

.field private static final YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static sMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->TAG:Ljava/lang/String;

    .line 49
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "genre_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bit_depth"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "sampling_rate"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileSize(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # J

    .prologue
    .line 228
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "0.##"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "df":Ljava/text/DecimalFormat;
    long-to-double v4, p1

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double v2, v4, v6

    .local v2, "result":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_0

    .line 232
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "formattedResult":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v6, 0x7f0a01b4

    .line 234
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a01ff

    .line 235
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 244
    .end local v1    # "formattedResult":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 236
    :cond_0
    long-to-double v4, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v2, v4, v6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    .line 237
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 238
    .restart local v1    # "formattedResult":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v6, 0x7f0a01b3

    .line 239
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a01fe

    .line 240
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_0

    .line 242
    .end local v1    # "formattedResult":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v6, 0x7f0a01b2

    .line 243
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a01fd

    .line 244
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_0
.end method

.method public static getMetaData()Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->sMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    return-object v0
.end method

.method public static getMetaData(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 101
    const/4 v7, 0x0

    .line 102
    .local v7, "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    const/4 v6, 0x0

    .line 104
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 105
    if-eqz v6, :cond_0

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    invoke-direct {v8}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v7    # "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    .local v8, "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->audioId:J

    .line 109
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->title:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artist:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->album:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 113
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumArtist:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->genre:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->duration:J

    .line 116
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 117
    .local v9, "track":I
    const-string v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    rem-int/lit16 v3, v9, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->track:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->year:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->mimeType:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->bitDepth:I

    .line 121
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->samplingRate:I

    .line 122
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->size:J

    .line 123
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->data:Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumId:J

    .line 125
    sget-object v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->MEDIA_META_DATA_COLS:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artistId:J

    .line 126
    const/16 v0, 0x3e8

    if-ge v9, v0, :cond_2

    const-string v0, ""

    :goto_0
    iput-object v0, v8, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->discNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v8

    .line 130
    .end local v8    # "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    .end local v9    # "track":I
    .restart local v7    # "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    :cond_0
    if-eqz v6, :cond_1

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_1
    sput-object v7, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->sMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    .line 135
    return-object v7

    .line 126
    .end local v7    # "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    .restart local v8    # "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    .restart local v9    # "track":I
    :cond_2
    :try_start_2
    div-int/lit16 v0, v9, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 130
    .end local v8    # "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    .end local v9    # "track":I
    .restart local v7    # "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_3

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 130
    .end local v7    # "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    .restart local v8    # "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    .restart local v7    # "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    goto :goto_1
.end method

.method public static getTrackLength(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # J

    .prologue
    .line 220
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWebSearchIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->DISABLE_GOOGLE:Z

    if-nez v1, :cond_0

    .line 214
    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    :cond_0
    return-object v0
.end method

.method private static getYouTubeIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    return-object v0
.end method

.method public static isOnlineSearchEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 182
    const/4 v5, 0x2

    new-array v1, v5, [Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getYouTubeIntent()Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getWebSearchIntent()Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v1, v3

    .line 184
    .local v1, "intents":[Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 185
    .local v2, "pm":Landroid/content/pm/PackageManager;
    array-length v6, v1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 186
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 191
    .end local v0    # "i":Landroid/content/Intent;
    :goto_1
    return v3

    .line 185
    .restart local v0    # "i":Landroid/content/Intent;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    sget-object v3, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->TAG:Ljava/lang/String;

    const-string v5, "There are no available packages that launch online search."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 191
    goto :goto_1
.end method

.method public static isWebSearchEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 201
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getWebSearchIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isYouTubeEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 196
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getYouTubeIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static searchMediaInfo(Landroid/app/Activity;Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;)V
    .locals 8
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "metaData"    # Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 149
    .local v2, "title":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 150
    iget-object v5, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artist:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artist:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a0219

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getYouTubeIntent()Landroid/content/Intent;

    move-result-object v4

    .line 164
    .local v4, "youtubeIntent":Landroid/content/Intent;
    const-string/jumbo v5, "query"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-static {}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getWebSearchIntent()Landroid/content/Intent;

    move-result-object v3

    .line 167
    .local v3, "webSearchIntent":Landroid/content/Intent;
    const-string/jumbo v5, "query"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.CHOOSER"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "chooserIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.TITLE"

    const v6, 0x7f0a017f

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const/high16 v5, 0x20000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_1
    return-void

    .line 153
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    .end local v3    # "webSearchIntent":Landroid/content/Intent;
    .end local v4    # "youtubeIntent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->title:Ljava/lang/String;

    goto :goto_0

    .line 176
    .restart local v0    # "chooserIntent":Landroid/content/Intent;
    .restart local v3    # "webSearchIntent":Landroid/content/Intent;
    .restart local v4    # "youtubeIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "searchMediaInfo() - Activity Not found!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
