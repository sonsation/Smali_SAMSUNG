.class Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;
.super Ljava/lang/Object;
.source "SyncAudioMetaImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;,
        Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;,
        Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;
    }
.end annotation


# static fields
.field private static final BULK_UPDATE_URI:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field private static final LIMIT_COUNT:Ljava/lang/String; = "10"

.field private static final MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

.field private static final PER_NOTIFY_COUNT:I = 0xc8

.field private static final PER_UPDATE_MAX_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddDeleteOnly:Z

.field private final mContext:Landroid/content/Context;

.field private mIsSynced:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "content://com.sec.android.app.music/sync/local/update"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->BULK_UPDATE_URI:Landroid/net/Uri;

    .line 35
    const-string v0, "content://com.sec.android.app.music/"

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;-><init>(Landroid/content/Context;Z)V

    .line 52
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "addDeleteOnly"    # Z

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->mIsSynced:Z

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->mAddDeleteOnly:Z

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->mContext:Landroid/content/Context;

    .line 56
    iput-boolean p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->mAddDeleteOnly:Z

    .line 57
    return-void
.end method

.method private addDeleteTracks(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "targetUri"    # Landroid/net/Uri;
    .param p4, "sourceInfo"    # Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;
    .param p5, "targetInfo"    # Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    iget-object v4, p4, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;->mCombinedIds:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v4}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "deletedCount":I
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "syncLocalContents - deleted [%d]"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v4, p5, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;->mCombinedIds:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->insertTracks(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 144
    .local v1, "insertedCount":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 155
    :goto_0
    return v2

    .line 154
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "syncLocalContents - inserted [%d]"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 155
    goto :goto_0
.end method

.method private checkLocale(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkLocale()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v6, 0x0

    .line 328
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 330
    .local v7, "currentLocale":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "sync_locale"

    aput-object v3, v2, v0

    const-string/jumbo v3, "sync_content_type=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "MediaProvider"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 334
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 338
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLocale() -  Locale.getDefault(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentLocale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x1

    .line 343
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, "selection":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .local v10, "value":Landroid/content/ContentValues;
    const-string v0, "date_modified"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 347
    invoke-static {p1, v0, v10, v9, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 350
    new-instance v10, Landroid/content/ContentValues;

    .end local v10    # "value":Landroid/content/ContentValues;
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .restart local v10    # "value":Landroid/content/ContentValues;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd hh:mm:ss.SSS"

    .line 352
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 353
    .local v8, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v0, "sync_content_type"

    const-string v1, "MediaProvider"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v0, "sync_date_integer"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 356
    const-string/jumbo v0, "sync_date_format"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v0, "sync_full_update"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string/jumbo v1, "sync_msg"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v0, "sync_locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0, v10}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .end local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v9    # "selection":Ljava/lang/String;
    .end local v10    # "value":Landroid/content/ContentValues;
    :cond_1
    if-eqz v6, :cond_2

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_2
    return-void

    .line 363
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private deleteTracks(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "combinedIds"    # Ljava/lang/String;

    .prologue
    .line 220
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    const-string v2, "deleteTracks : start"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz p3, :cond_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "source_id NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND cp_attrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x10001

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "where":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->appendExtraConditionForDeleteMdrmContentsWhileSyncLocalContents(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 226
    .end local v0    # "where":Ljava/lang/String;
    :cond_0
    const-string v0, "cp_attrs=65537"

    .restart local v0    # "where":Ljava/lang/String;
    goto :goto_0
.end method

.method private getCombinedIdsString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "audioId"    # Ljava/lang/String;
    .param p4, "albumId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 371
    const/4 v6, 0x0

    .line 373
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_concat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \',\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "group_concat(CASE WHEN date_modified IS NULL THEN 0 ELSE date_modified END, \',\')"

    aput-object v0, v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_concat(CASE WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL THEN 0 ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END, \',\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    .line 377
    .local v2, "projection":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "title"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!=\'\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v0, "is_music"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v0, "cp_attrs"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const v0, 0x10001

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v0, "_data"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT LIKE  \'%.dcf\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_0
    new-instance v7, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;

    invoke-direct {v7, v3}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$1;)V

    .line 390
    .local v7, "info":Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 391
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;->mCount:I

    .line 393
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;->mCombinedIds:Ljava/lang/String;

    .line 394
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;->mCombinedDates:Ljava/lang/String;

    .line 395
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;->mCombinedAlbumIds:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_1
    if-eqz v6, :cond_2

    .line 399
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_2
    return-object v7

    .line 398
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 399
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private insertTracks(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "targetUri"    # Landroid/net/Uri;
    .param p4, "sourceIds"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    const-string v3, "insertTracks() : start"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-wide/16 v14, 0x0

    .line 161
    .local v14, "lastId":J
    const-wide/16 v10, 0x0

    .line 162
    .local v10, "completedLastId":J
    const/4 v9, 0x0

    .line 166
    .local v9, "count":I
    :cond_0
    :goto_0
    :try_start_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v18, "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v17, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;

    const-string v2, "10"

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v15, v2}, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;-><init>(JLjava/lang/String;)V

    .line 169
    .local v17, "syncArgs":Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;
    const-string v2, "10"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLimitAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->sourceUri:Landroid/net/Uri;

    .line 170
    if-eqz p4, :cond_1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND _id NOT IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selection:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_1
    :try_start_1
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->sourceUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->sourceColumns:[Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selection:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->orderBy:Ljava/lang/String;

    move-object/from16 v2, p1

    .line 175
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 174
    .local v8, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 177
    if-eqz v8, :cond_2

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 178
    .local v16, "srcCount":I
    :goto_1
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertTracks() : srcCount - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-lez v16, :cond_3

    .line 180
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_a

    .line 181
    invoke-interface {v8, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 182
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 184
    const v2, 0x10001

    const-string v4, "mediaStore"

    invoke-static {v8, v2, v4}, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->makeContentValue(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 180
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 177
    .end local v13    # "i":I
    .end local v16    # "srcCount":I
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 199
    .restart local v16    # "srcCount":I
    :cond_3
    if-eqz v8, :cond_4

    if-eqz v3, :cond_7

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    :cond_4
    :goto_3
    rem-int/lit16 v2, v9, 0xc8

    if-eqz v2, :cond_5

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 207
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 210
    :cond_5
    if-lez v9, :cond_6

    .line 211
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->syncAlbumArtTables(Landroid/content/Context;)V

    .line 212
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->updateAudioPlaylistsMap(Landroid/content/Context;)V

    .line 216
    :cond_6
    return v9

    .line 199
    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .end local v8    # "c":Landroid/database/Cursor;
    .end local v16    # "srcCount":I
    :catch_1
    move-exception v12

    .line 200
    .local v12, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertTracks exception. skip and query next "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 201
    move-wide v14, v10

    goto/16 :goto_0

    .line 199
    .end local v12    # "e":Ljava/lang/IllegalStateException;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v16    # "srcCount":I
    :cond_7
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 205
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v16    # "srcCount":I
    .end local v17    # "syncArgs":Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;
    .end local v18    # "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catchall_0
    move-exception v2

    rem-int/lit16 v3, v9, 0xc8

    if-eqz v3, :cond_8

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    .line 207
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 210
    :cond_8
    if-lez v9, :cond_9

    .line 211
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->syncAlbumArtTables(Landroid/content/Context;)V

    .line 212
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->updateAudioPlaylistsMap(Landroid/content/Context;)V

    :cond_9
    throw v2

    .line 191
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v13    # "i":I
    .restart local v16    # "srcCount":I
    .restart local v17    # "syncArgs":Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;
    .restart local v18    # "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_a
    :try_start_7
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 192
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 191
    move-object/from16 v0, p1

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    add-int/2addr v9, v2

    .line 193
    move-wide v10, v14

    .line 194
    rem-int/lit16 v2, v9, 0xc8

    if-nez v2, :cond_b

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    .line 196
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 199
    :cond_b
    if-eqz v8, :cond_0

    if-eqz v3, :cond_c

    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_9
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 174
    .end local v13    # "i":I
    .end local v16    # "srcCount":I
    :catch_3
    move-exception v2

    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 199
    :catchall_1
    move-exception v3

    move-object/from16 v19, v3

    move-object v3, v2

    move-object/from16 v2, v19

    :goto_4
    if-eqz v8, :cond_d

    if-eqz v3, :cond_e

    :try_start_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_d
    :goto_5
    :try_start_c
    throw v2

    :catch_4
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :catchall_2
    move-exception v2

    goto :goto_4
.end method

.method private sync(Landroid/content/Context;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 74
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncLocalContents - start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->checkLocale(Landroid/content/Context;)V

    .line 83
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 84
    .local v2, "sourceUri":Landroid/net/Uri;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    .line 86
    .local v3, "targetUri":Landroid/net/Uri;
    const-string v0, "_id"

    const-string v1, "album_id"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->getCombinedIdsString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;

    move-result-object v4

    .line 87
    .local v4, "sourceInfo":Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;
    const-string/jumbo v0, "source_id"

    const-string/jumbo v1, "source_album_id"

    .line 88
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->getCombinedIdsString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;

    move-result-object v5

    .local v5, "targetInfo":Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;
    move-object v0, p0

    move-object v1, p1

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->addDeleteTracks(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;)Z

    move-result v6

    .line 91
    .local v6, "success":Z
    if-nez v6, :cond_0

    move v0, v8

    .line 104
    :goto_0
    return v0

    .line 96
    :cond_0
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->updateTracks(Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;)I

    move-result v7

    .line 103
    .local v7, "updatedCount":I
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncLocalContents - updated [%d]"

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 104
    goto :goto_0
.end method

.method private syncAddDeleteOnly(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncLocalContents - start (AddDeleteOnly)"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->checkLocale(Landroid/content/Context;)V

    .line 110
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 111
    .local v2, "sourceUri":Landroid/net/Uri;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    .line 115
    .local v3, "targetUri":Landroid/net/Uri;
    const-string v0, "_id"

    const-string v1, "album_id"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->getCombinedIdsString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;

    move-result-object v4

    .line 116
    .local v4, "sourceInfo":Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;
    const-string/jumbo v0, "source_id"

    const-string/jumbo v1, "source_album_id"

    .line 117
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->getCombinedIdsString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;

    move-result-object v5

    .local v5, "targetInfo":Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;
    move-object v0, p0

    move-object v1, p1

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->addDeleteTracks(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;)Z

    move-result v0

    return v0
.end method

.method private syncAlbumArtTables(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    .line 418
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "group_concat(source_album_id, \',\')"

    aput-object v4, v2, v0

    .line 420
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "_data IS NULL"

    .line 422
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 423
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 422
    .local v7, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 424
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 425
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "syncAlbumArtTables : get (source_album_id,\',\') is failed."

    invoke-static {v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 429
    if-eqz v7, :cond_1

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 428
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v10

    .line 429
    .local v10, "sourceAlbumIds":Ljava/lang/String;
    if-eqz v7, :cond_4

    if-eqz v4, :cond_5

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 431
    :cond_4
    :goto_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 432
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .end local v2    # "projection":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "album_art"

    aput-object v4, v2, v0

    .line 433
    .restart local v2    # "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 435
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 434
    const/4 v4, 0x0

    .line 436
    if-nez v7, :cond_9

    .line 457
    if-eqz v7, :cond_1

    if-eqz v4, :cond_8

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 429
    :catch_2
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 422
    .end local v10    # "sourceAlbumIds":Ljava/lang/String;
    :catch_3
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 429
    :catchall_0
    move-exception v4

    move-object v13, v4

    move-object v4, v0

    move-object v0, v13

    :goto_2
    if-eqz v7, :cond_6

    if-eqz v4, :cond_7

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_3
    throw v0

    :catch_4
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 457
    .restart local v10    # "sourceAlbumIds":Ljava/lang/String;
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 439
    :cond_9
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v8

    .line 440
    .local v8, "count":I
    if-nez v8, :cond_b

    .line 457
    if-eqz v7, :cond_1

    if-eqz v4, :cond_a

    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 443
    :cond_b
    :try_start_9
    new-array v11, v8, [Landroid/content/ContentValues;

    .line 444
    .local v11, "values":[Landroid/content/ContentValues;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v8, :cond_c

    .line 445
    invoke-interface {v7, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 446
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    aput-object v0, v11, v9

    .line 447
    aget-object v0, v11, v9

    const-string/jumbo v5, "source_album_id"

    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    aget-object v0, v11, v9

    const-string v5, "_data"

    const/4 v12, 0x1

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    aget-object v0, v11, v9

    const-string v5, "album_art_location"

    const-string v12, "mediaStore"

    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 454
    :cond_c
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->BULK_UPDATE_URI:Landroid/net/Uri;

    .line 455
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "match"

    const-string v12, "albumArt"

    invoke-virtual {v0, v5, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 456
    .local v6, "bulkUpdateUri":Landroid/net/Uri;
    invoke-static {p1, v6, v11}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 457
    if-eqz v7, :cond_1

    if-eqz v4, :cond_d

    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 434
    .end local v6    # "bulkUpdateUri":Landroid/net/Uri;
    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v11    # "values":[Landroid/content/ContentValues;
    :catch_7
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 457
    :catchall_1
    move-exception v4

    move-object v13, v4

    move-object v4, v0

    move-object v0, v13

    :goto_5
    if-eqz v7, :cond_e

    if-eqz v4, :cond_f

    :try_start_c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    :cond_e
    :goto_6
    throw v0

    :catch_8
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 429
    .end local v10    # "sourceAlbumIds":Ljava/lang/String;
    :catchall_3
    move-exception v0

    goto/16 :goto_2
.end method

.method private updateAudioPlaylistsMap(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

    const-string/jumbo v2, "update_audio_playlists_map"

    .line 407
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 409
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

    const-string v2, "milk_update_audio_playlists_map"

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 413
    :cond_0
    return-void
.end method

.method private updateTracks(Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;)I
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "sourceCombinedInfo"    # Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;
    .param p4, "targetCombinedInfo"    # Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;

    .prologue
    .line 238
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;->mCombinedIds:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;->mCombinedIds:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 239
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateTracks : no updated tracks"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/16 v18, 0x0

    .line 322
    :goto_0
    return v18

    .line 244
    :cond_1
    new-instance v14, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;)V

    .line 245
    .local v14, "sourceTokenizerInfo":Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;
    new-instance v16, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;)V

    .line 254
    .local v16, "targetTokenizerInfo":Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Target info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v11, "ids":Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->getNextItemInfo()Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;

    move-result-object v13

    .line 261
    .local v13, "sourceItemInfo":Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->getNextItemInfo()Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;

    move-result-object v15

    .line 262
    .local v15, "targetItemInfo":Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;
    if-eqz v13, :cond_2

    if-nez v15, :cond_3

    .line 263
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 268
    :cond_3
    invoke-virtual {v13, v15}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->compareTo(Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;)I

    move-result v10

    .line 269
    .local v10, "compare":I
    if-lez v10, :cond_5

    .line 270
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->getNextItemInfo()Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;

    move-result-object v15

    .line 280
    :goto_1
    if-eqz v13, :cond_4

    if-nez v15, :cond_3

    .line 282
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_8

    .line 283
    const/16 v18, 0x0

    goto :goto_0

    .line 271
    :cond_5
    if-gez v10, :cond_6

    .line 272
    invoke-virtual {v14}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->getNextItemInfo()Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;

    move-result-object v13

    goto :goto_1

    .line 274
    :cond_6
    invoke-virtual {v13, v15}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->isEqualTo(Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 275
    invoke-virtual {v13}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_7
    invoke-virtual {v14}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->getNextItemInfo()Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;

    move-result-object v13

    .line 278
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->getNextItemInfo()Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;

    move-result-object v15

    goto :goto_1

    .line 285
    :cond_8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 288
    .local v17, "updateIds":Ljava/lang/String;
    new-instance v8, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v8, v2, v3, v4}, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;-><init>(JLjava/lang/String;)V

    .line 289
    .local v8, "args":Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selection:Ljava/lang/String;

    .line 291
    const/16 v18, 0x0

    .line 292
    .local v18, "updatedCount":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v20, "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_0
    iget-object v4, v8, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->sourceColumns:[Ljava/lang/String;

    iget-object v5, v8, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selection:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 294
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 293
    .local v9, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 296
    if-eqz v9, :cond_c

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 297
    const/4 v12, 0x0

    .line 299
    .local v12, "index":I
    :cond_9
    const v2, 0x10001

    const-string v4, "mediaStore"

    invoke-static {v9, v2, v4}, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->makeContentValue(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v19

    .line 301
    .local v19, "values":Landroid/content/ContentValues;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    rem-int/lit8 v2, v12, 0xa

    if-nez v2, :cond_a

    .line 303
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->BULK_UPDATE_URI:Landroid/net/Uri;

    .line 304
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 305
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 303
    move-object/from16 v0, p1

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    add-int v18, v18, v2

    .line 306
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 308
    :cond_a
    rem-int/lit16 v2, v12, 0xc8

    if-nez v2, :cond_b

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    .line 310
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 312
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 313
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v2

    if-nez v2, :cond_9

    .line 315
    .end local v12    # "index":I
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_c
    if-eqz v9, :cond_d

    if-eqz v3, :cond_10

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    :cond_d
    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_e

    .line 317
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->BULK_UPDATE_URI:Landroid/net/Uri;

    .line 318
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 317
    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    add-int v18, v18, v2

    .line 321
    :cond_e
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTracks : updatedCount - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 316
    .end local v9    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    move-object v3, v2

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_f

    .line 317
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->BULK_UPDATE_URI:Landroid/net/Uri;

    .line 318
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 317
    move-object/from16 v0, p1

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    add-int v18, v18, v2

    :cond_f
    throw v3

    .line 315
    .restart local v9    # "c":Landroid/database/Cursor;
    :cond_10
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 293
    :catch_1
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 315
    :catchall_1
    move-exception v3

    move-object/from16 v21, v3

    move-object v3, v2

    move-object/from16 v2, v21

    :goto_3
    if-eqz v9, :cond_11

    if-eqz v3, :cond_12

    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_11
    :goto_4
    :try_start_7
    throw v2

    :catch_2
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_12
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public doSync()V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->mAddDeleteOnly:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->syncAddDeleteOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->mIsSynced:Z

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->sync(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->mIsSynced:Z

    goto :goto_0
.end method

.method isSynced()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;->mIsSynced:Z

    return v0
.end method
