.class public final Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;
.super Ljava/lang/Object;
.source "MusicSyncInfo.java"


# static fields
.field public static final MEDIA_COLUMNS_FOR_LOCAL_SYNC:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "genre_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "year_name"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "sampling_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "bit_depth"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "is_secretbox"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "is_drm"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "recently_played"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "recently_added_remove_flag"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "most_played"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->MEDIA_COLUMNS_FOR_LOCAL_SYNC:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static makeContentValue(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "cpAttrs"    # I
    .param p2, "albumArtLocation"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 48
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v2, "value":Landroid/content/ContentValues;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "columnNames":[Ljava/lang/String;
    array-length v6, v1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 51
    .local v0, "columnName":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 64
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 51
    :sswitch_0
    const-string v7, "_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_1
    const-string v7, "album_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "artist_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    .line 53
    :pswitch_0
    const-string/jumbo v3, "source_id"

    const-string v7, "_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 56
    :pswitch_1
    const-string/jumbo v3, "source_album_id"

    const-string v7, "album_id"

    .line 57
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 56
    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 60
    :pswitch_2
    const-string/jumbo v3, "source_artist_id"

    const-string v7, "artist_id"

    .line 61
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 60
    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 67
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_1
    const-string v3, "cp_attrs"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v3, "album_art_location"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object v2

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x171ba -> :sswitch_0
        0x223e7913 -> :sswitch_2
        0x5b51a8eb -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
