.class Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;
.super Ljava/lang/Object;
.source "StorageDownloadedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Milk"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$1;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;->findTrack(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findSameOrHigherQuality(ILandroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "currentQuality"    # I
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 187
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "local_track_ext_320k"

    .line 189
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 188
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    .line 188
    :cond_0
    const-string v0, "local_track_ext"

    .line 191
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findTrack(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamingId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->parseQuality(Ljava/lang/String;)I

    move-result v7

    .line 138
    .local v7, "currentQuality":I
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 139
    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "track_id=? AND download_state=2"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 143
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->parseSourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v0

    move-object v0, p1

    .line 138
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v7, v6}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;->findSameOrHigherQuality(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "localId":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;->getLocalPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "path":Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->access$200(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 150
    if-eqz v6, :cond_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    move-object v5, v9

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 137
    .end local v8    # "localId":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

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

.method private getLocalPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 154
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-object v5

    .line 157
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    const-string v3, "local_track_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v7

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 163
    if-eqz v6, :cond_2

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_0

    if-eqz v5, :cond_5

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 157
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v5, :cond_7

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private getProjection(I)[Ljava/lang/String;
    .locals 3
    .param p1, "currentQuality"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 168
    packed-switch p1, :pswitch_data_0

    .line 173
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CASE WHEN local_track_ext IS NULL OR local_track_ext = \'\' THEN local_track_ext_320k ELSE local_track_ext END AS local_track_ext"

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "local_track_ext_320k"

    aput-object v1, v0, v2

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
