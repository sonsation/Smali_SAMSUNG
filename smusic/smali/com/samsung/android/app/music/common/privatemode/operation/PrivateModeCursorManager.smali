.class public Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;
.super Ljava/lang/Object;
.source "PrivateModeCursorManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFolder:Z

.field private mMoveItemIds:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;[JZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "moveItemIds"    # [J
    .param p3, "isFolder"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mContext:Landroid/content/Context;

    .line 29
    iput-boolean p3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mIsFolder:Z

    .line 30
    iput-object p2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mMoveItemIds:[J

    .line 31
    return-void
.end method

.method private getProejection(Z)[Ljava/lang/String;
    .locals 2
    .param p1, "isFolder"    # Z

    .prologue
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "projectionBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v1, "_display_name"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-string v1, "bucket_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v1, "bucket_display_name"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public getAudioTrackData(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 86
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAudioTrackDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 90
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAudioTrackID(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 81
    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    .line 82
    :goto_0
    return-wide v0

    .line 81
    :cond_0
    const-string v0, "_id"

    .line 82
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getBucketDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 98
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const-string v0, "bucket_display_name"

    .line 99
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBucketID(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 94
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "bucket_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemsCursor()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mIsFolder:Z

    if-eqz v0, :cond_7

    .line 35
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 36
    .local v7, "bucketIdsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v9, "where":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 40
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "bucket_id"

    aput-object v5, v2, v4

    const-string v4, "_id"

    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mMoveItemIds:[J

    .line 42
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 40
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 44
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 58
    :cond_0
    if-eqz v8, :cond_1

    .line 59
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    .line 69
    .end local v7    # "bucketIdsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "where":Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    .line 47
    .restart local v7    # "bucketIdsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "where":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    const-string v0, "bucket_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v0, " IN ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "bucketId":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 55
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 56
    const/16 v0, 0x29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-eqz v8, :cond_5

    .line 59
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mIsFolder:Z

    .line 63
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->getProejection(Z)[Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " COLLATE LOCALIZED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v10

    .line 63
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 58
    .end local v6    # "bucketId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 59
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 67
    .end local v7    # "bucketIdsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "where":Ljava/lang/StringBuilder;
    :cond_7
    const-string v0, "_id"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mMoveItemIds:[J

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mIsFolder:Z

    .line 69
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->getProejection(Z)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "title_key"

    move-object v4, v10

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public removeFromCurrentPlaylist(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->getAudioTrackID(Landroid/database/Cursor;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->removeQueueAudioIds([J)I

    .line 114
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public removeNowPlayingTrack()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mMoveItemIds:[J

    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->hasNowPlayingTrack([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->mMoveItemIds:[J

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->removeQueueAudioIds([J)I

    .line 78
    :cond_0
    return-void
.end method
