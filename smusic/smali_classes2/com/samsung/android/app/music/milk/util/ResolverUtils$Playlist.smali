.class public final Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;
.super Ljava/lang/Object;
.source "ResolverUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/util/ResolverUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Playlist"
.end annotation


# static fields
.field private static mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPlaylistName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultName"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 648
    const/4 v12, 0x0

    .line 649
    .local v12, "suggestedName":Ljava/lang/String;
    const/4 v9, 0x1

    .line 651
    .local v9, "number":I
    const/4 v7, 0x0

    .line 652
    .local v7, "c":Landroid/database/Cursor;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 653
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v13, "name"

    aput-object v13, v3, v1

    .line 654
    .local v3, "projection":[Ljava/lang/String;
    const-string v4, "name != \'\'"

    .line 655
    .local v4, "selection":Ljava/lang/String;
    const-string v6, "name"

    .line 656
    .local v6, "orderBy":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object v1, p0

    .line 660
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 661
    if-nez v7, :cond_1

    .line 662
    const/4 v1, 0x0

    .line 679
    if-eqz v7, :cond_0

    .line 680
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 683
    :cond_0
    :goto_0
    return-object v1

    .line 664
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v1, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v13, 0x1

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "number":I
    .local v10, "number":I
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v13

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    .line 665
    const/4 v8, 0x0

    .local v8, "done":Z
    move v9, v10

    .line 666
    .end local v10    # "number":I
    .restart local v9    # "number":I
    :goto_1
    if-nez v8, :cond_2

    .line 667
    const/4 v8, 0x1

    .line 668
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v10, v9

    .line 669
    .end local v9    # "number":I
    .restart local v10    # "number":I
    :goto_2
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    .line 670
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 671
    .local v11, "playlistname":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 672
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v1, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v13, 0x1

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "number":I
    .restart local v9    # "number":I
    :try_start_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v13

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 673
    const/4 v8, 0x0

    .line 675
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v10, v9

    .line 676
    .end local v9    # "number":I
    .restart local v10    # "number":I
    goto :goto_2

    .line 679
    .end local v10    # "number":I
    .end local v11    # "playlistname":Ljava/lang/String;
    .restart local v9    # "number":I
    :cond_2
    if-eqz v7, :cond_3

    .line 680
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v1, v12

    .line 683
    goto :goto_0

    .line 679
    .end local v8    # "done":Z
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v7, :cond_4

    .line 680
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 679
    .end local v9    # "number":I
    .restart local v10    # "number":I
    :catchall_1
    move-exception v1

    move v9, v10

    .end local v10    # "number":I
    .restart local v9    # "number":I
    goto :goto_4

    .end local v9    # "number":I
    .restart local v8    # "done":Z
    .restart local v10    # "number":I
    .restart local v11    # "playlistname":Ljava/lang/String;
    :cond_5
    move v9, v10

    .end local v10    # "number":I
    .restart local v9    # "number":I
    goto :goto_3

    .end local v9    # "number":I
    .end local v11    # "playlistname":Ljava/lang/String;
    .restart local v10    # "number":I
    :cond_6
    move v9, v10

    .end local v10    # "number":I
    .restart local v9    # "number":I
    goto :goto_1
.end method

.method public static getPlaylistCount(Landroid/content/Context;JLjava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # J
    .param p3, "playlistType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 687
    .line 688
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(playlist_id)"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 687
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 690
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 693
    if-eqz v6, :cond_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 694
    :cond_0
    :goto_0
    return v0

    .line 693
    :catch_0
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v3, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    move v0, v7

    .line 694
    goto :goto_0

    .line 693
    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 687
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 693
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v3, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public static getPlaylistId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourcePlaylistId"    # Ljava/lang/String;

    .prologue
    .line 475
    const-wide/16 v8, -0x1

    .line 476
    .local v8, "id":J
    const/4 v6, 0x0

    .line 478
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->mUri:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string/jumbo v3, "source_playlist_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 481
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 485
    :cond_0
    if-eqz v6, :cond_1

    .line 486
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_1
    return-wide v8

    .line 485
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 486
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getPlaylistMaxOrder(Landroid/content/Context;JLjava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # J
    .param p3, "playlistType"    # Ljava/lang/String;

    .prologue
    .line 615
    const/4 v7, 0x0

    .line 616
    .local v7, "playOrder":I
    const/4 v6, 0x0

    .line 619
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "max(play_order)"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 618
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 622
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 626
    :cond_0
    if-eqz v6, :cond_1

    .line 627
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_1
    return v7

    .line 626
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 627
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getPlaylistTrackSeqIds(Landroid/content/Context;J[J)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # J
    .param p3, "audioIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J[J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    const/4 v7, 0x0

    .line 548
    .local v7, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 549
    .local v3, "selection":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 550
    const-string v0, "audio_playlists_map._id"

    invoke-static {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    .line 553
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 554
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 556
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "server_track_seq_id"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const-string v5, "audio_playlists_map.play_order"

    move-object v0, p0

    .line 557
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 559
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    .end local v7    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 563
    .local v9, "seqId":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    move-object v7, v8

    .line 567
    .end local v8    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "seqId":Ljava/lang/String;
    .restart local v7    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz v6, :cond_3

    .line 568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 571
    :cond_3
    return-object v7

    .line 567
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v6, :cond_4

    .line 568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 567
    .end local v7    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 494
    const/4 v6, 0x0

    .line 496
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->mUri:Landroid/net/Uri;

    .line 497
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "source_playlist_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 500
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 504
    if-eqz v6, :cond_0

    .line 505
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 508
    :cond_0
    :goto_0
    return-object v0

    .line 504
    :cond_1
    if-eqz v6, :cond_2

    .line 505
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v7

    .line 508
    goto :goto_0

    .line 504
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 505
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSourcePlaylistIds(Landroid/content/Context;[JZ)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistIds"    # [J
    .param p2, "syncOnly"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 514
    array-length v0, p1

    if-nez v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-object v7

    .line 517
    :cond_1
    const/4 v7, 0x0

    .line 518
    .local v7, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 520
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "_id"

    .line 521
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "selection":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 523
    if-eqz v3, :cond_2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_sync=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 528
    :cond_3
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->mUri:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "source_playlist_id"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 529
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 531
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 532
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .end local v7    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    move-object v7, v8

    .line 538
    .end local v8    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    if-eqz v6, :cond_0

    .line 539
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 538
    .end local v3    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_6

    .line 539
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 538
    .end local v7    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v8    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public static hasLocalPlaylistOnly(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 599
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->mUri:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(_id)"

    aput-object v0, v2, v10

    const-string/jumbo v0, "sum(is_sync)"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 600
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 602
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 604
    .local v8, "totalCount":I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    .line 605
    .local v7, "syncCount":I
    if-eqz v8, :cond_2

    if-nez v7, :cond_2

    .line 609
    if-eqz v6, :cond_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move v0, v9

    .line 610
    .end local v7    # "syncCount":I
    .end local v8    # "totalCount":I
    :goto_1
    return v0

    .line 609
    .restart local v7    # "syncCount":I
    .restart local v8    # "totalCount":I
    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "syncCount":I
    .end local v8    # "totalCount":I
    :cond_2
    if-eqz v6, :cond_3

    if-eqz v3, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    move v0, v10

    .line 610
    goto :goto_1

    .line 609
    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 599
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 609
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v3, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public static hasPlaylistName(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newPlaylistName"    # Ljava/lang/String;
    .param p2, "baseLocalOnly"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 635
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->mUri:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name=? COLLATE NOCASE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string v0, " AND (is_sync != 1 or is_sync is null) "

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 639
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 640
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-lez v0, :cond_2

    move v0, v7

    .line 642
    :goto_1
    if-eqz v6, :cond_0

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 643
    :cond_0
    :goto_2
    return v0

    .line 635
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v0, ""

    goto :goto_0

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    move v0, v8

    .line 640
    goto :goto_1

    .line 642
    :catch_0
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    if-eqz v5, :cond_6

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_3
    move v0, v8

    .line 643
    goto :goto_2

    .line 642
    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 635
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 642
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_4
    if-eqz v6, :cond_7

    if-eqz v5, :cond_8

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public static isSyncPlaylist(Landroid/content/Context;J)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 575
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/util/ListUtils;->isDefaultPlayList(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 595
    :goto_0
    return v0

    .line 578
    :cond_0
    const/4 v6, 0x0

    .line 580
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->mUri:Landroid/net/Uri;

    .line 581
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "is_sync"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 584
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v9, :cond_2

    move v7, v9

    .line 586
    .local v7, "isSync":Z
    :goto_1
    if-eqz v7, :cond_3

    .line 591
    if-eqz v6, :cond_1

    .line 592
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    goto :goto_0

    .end local v7    # "isSync":Z
    :cond_2
    move v7, v8

    .line 585
    goto :goto_1

    .line 591
    :cond_3
    if-eqz v6, :cond_4

    .line 592
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 595
    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 592
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method
