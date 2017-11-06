.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;
.super Ljava/lang/Object;
.source "MediaContents.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$ArtistColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Artists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists$Albums;
    }
.end annotation


# static fields
.field public static final ARTIST_DELIM:Ljava/lang/String; = "::"

.field public static final BASE_ARTIST_CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String;

.field public static final MULTIPLE_ARTISTS_PREFIX:Ljava/lang/String; = "multiple_artists_"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 590
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->CONTENT_URI:Landroid/net/Uri;

    .line 599
    const-string v0, "content://com.sec.android.app.music/audio/media/base_artists"

    .line 600
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->BASE_ARTIST_CONTENT_URI:Landroid/net/Uri;

    .line 602
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "artist_pinyin"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "artist"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 587
    const-string v0, "content://com.sec.android.app.music/audio/media/music_artists_album_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMultipleArtists(Landroid/content/Context;J)[Landroid/content/ContentValues;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "artistId"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 611
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->BASE_ARTIST_CONTENT_URI:Landroid/net/Uri;

    .line 612
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v7, "source_artist_id"

    aput-object v7, v4, v2

    .line 613
    .local v4, "projection":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "artist_id="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 616
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 617
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 616
    .local v11, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 618
    if-eqz v11, :cond_0

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v2

    if-nez v2, :cond_3

    .line 619
    :cond_0
    const/4 v2, 0x0

    .line 622
    if-eqz v11, :cond_1

    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 658
    :cond_1
    :goto_0
    return-object v2

    .line 622
    :catch_0
    move-exception v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 621
    :cond_3
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v16

    .line 622
    .local v16, "sourceIds":Ljava/lang/String;
    if-eqz v11, :cond_4

    if-eqz v7, :cond_5

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 624
    :cond_4
    :goto_1
    const-string v2, "::"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 625
    .local v6, "sourceArtistIds":[Ljava/lang/String;
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    .end local v4    # "projection":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v7, "artist_id"

    aput-object v7, v4, v2

    const/4 v2, 0x1

    const-string v7, "artist"

    aput-object v7, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v7, "source_artist_id"

    aput-object v7, v4, v2

    const/4 v2, 0x3

    const-string v7, "artist_cp_attrs"

    aput-object v7, v4, v2

    .line 626
    .restart local v4    # "projection":[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "source_artist_id"

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .local v14, "sb":Ljava/lang/StringBuilder;
    const-string v2, " IN ("

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    array-length v8, v6

    .line 629
    .local v8, "artistCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v8, :cond_8

    .line 630
    const-string v2, "?,"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 622
    .end local v6    # "sourceArtistIds":[Ljava/lang/String;
    .end local v8    # "artistCount":I
    .end local v13    # "i":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    invoke-virtual {v7, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 616
    .end local v16    # "sourceIds":Ljava/lang/String;
    :catch_2
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 622
    :catchall_0
    move-exception v7

    move-object/from16 v22, v7

    move-object v7, v2

    move-object/from16 v2, v22

    :goto_3
    if-eqz v11, :cond_6

    if-eqz v7, :cond_7

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_4
    throw v2

    :catch_3
    move-exception v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 632
    .restart local v6    # "sourceArtistIds":[Ljava/lang/String;
    .restart local v8    # "artistCount":I
    .restart local v13    # "i":I
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "sourceIds":Ljava/lang/String;
    :cond_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 633
    const-string v2, ")"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 636
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v18, "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 638
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 637
    const/4 v7, 0x0

    .line 639
    if-nez v11, :cond_a

    .line 640
    const/4 v2, 0x0

    .line 656
    if-eqz v11, :cond_1

    if-eqz v7, :cond_9

    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 643
    :cond_a
    :try_start_7
    const-string v2, "artist_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 644
    .local v9, "artistIdIndex":I
    const-string v2, "artist"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 645
    .local v10, "artistIndex":I
    const-string/jumbo v2, "source_artist_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 646
    .local v15, "sourceArtistIdIndex":I
    const-string v2, "artist_cp_attrs"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 648
    .local v12, "cpAttrsIndex":I
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 649
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 650
    .local v17, "value":Landroid/content/ContentValues;
    const-string v2, "artist_id"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 651
    const-string v2, "artist"

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string/jumbo v2, "source_artist_id"

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v2, "artist_cp_attrs"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 654
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    .line 637
    .end local v9    # "artistIdIndex":I
    .end local v10    # "artistIndex":I
    .end local v12    # "cpAttrsIndex":I
    .end local v15    # "sourceArtistIdIndex":I
    .end local v17    # "value":Landroid/content/ContentValues;
    :catch_5
    move-exception v2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 656
    :catchall_1
    move-exception v7

    move-object/from16 v22, v7

    move-object v7, v2

    move-object/from16 v2, v22

    :goto_6
    if-eqz v11, :cond_b

    if-eqz v7, :cond_f

    :try_start_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_b
    :goto_7
    throw v2

    .restart local v9    # "artistIdIndex":I
    .restart local v10    # "artistIndex":I
    .restart local v12    # "cpAttrsIndex":I
    .restart local v15    # "sourceArtistIdIndex":I
    :cond_c
    if-eqz v11, :cond_d

    if-eqz v7, :cond_e

    :try_start_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    .line 658
    :cond_d
    :goto_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    goto/16 :goto_0

    .line 656
    :catch_6
    move-exception v2

    invoke-virtual {v7, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .end local v9    # "artistIdIndex":I
    .end local v10    # "artistIndex":I
    .end local v12    # "cpAttrsIndex":I
    .end local v15    # "sourceArtistIdIndex":I
    :catch_7
    move-exception v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_2
    move-exception v2

    goto :goto_6

    .line 622
    .end local v6    # "sourceArtistIds":[Ljava/lang/String;
    .end local v8    # "artistCount":I
    .end local v13    # "i":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "sourceIds":Ljava/lang/String;
    .end local v18    # "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catchall_3
    move-exception v2

    goto/16 :goto_3
.end method
