.class public Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;
.super Ljava/lang/Object;
.source "MediaMetaWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;,
        Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;
    }
.end annotation


# static fields
.field private static final ACTION_MTP_OBJECT_PROP_CHANGED:Ljava/lang/String; = "com.android.MTP.OBJECT_PROP_CHANGED"

.field private static final EXTERNAL_VOLUME_NAME:Ljava/lang/String; = "external"

.field private static final EXTRA_KEY_FILE_PATH:Ljava/lang/String; = "Path"

.field private static final GENRE_PROJECTION:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-MediaMetaWriter"

.field private static final MTP_CONNECTED:I = 0x1

.field private static final MTP_DISCONNECTED:I = 0x0

.field private static final PACKAGE_MTP_APPLICATION:Ljava/lang/String; = "com.samsung.android.MtpApplication"

.field private static final SETTING_KEY_MTP_STATUS:Ljava/lang/String; = "mtp_running_status"

.field private static final TAG:Ljava/lang/String; = "MediaMetaWriter"


# instance fields
.field private final mAudioId:J

.field private final mContext:Landroid/content/Context;

.field private final mFilePath:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field private mOnCompletedEditingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;

.field private final mOnScanCompletedListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->GENRE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "audioId"    # J

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mFilePath:Ljava/lang/String;

    .line 96
    iput-wide p3, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mAudioId:J

    .line 97
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$1;-><init>(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mOnScanCompletedListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->updateMusicProvider(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->broadcastMtpObjectChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mOnCompletedEditingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mAudioId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;Landroid/content/Context;J)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->deleteGenreInfoFromMediaDb(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;Landroid/content/Context;J)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->deleteYearInfoFromMediaDb(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Landroid/media/MediaScannerConnection$OnScanCompletedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mOnScanCompletedListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    return-object v0
.end method

.method private broadcastMtpObjectChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mtp_running_status"

    const/4 v4, 0x0

    sget v5, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->USER_CURRENT:I

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 259
    .local v1, "mtpRunningState":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 260
    const-string v2, "MediaMetaWriter"

    const-string v3, "MTP Connected. send broadcast to update MTP properties."

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.MtpApplication"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v2, "Path"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private deleteGenreInfoFromMediaDb(Landroid/content/Context;J)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioId"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 221
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "_id=?"

    .line 223
    .local v5, "where":Ljava/lang/String;
    const-string v6, "genre_name"

    const-string v7, "<unknown>"

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v7, v10, [Ljava/lang/String;

    .line 226
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 225
    invoke-static {p1, v6, v4, v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->getGenreIdList(J)Ljava/util/List;

    move-result-object v2

    .line 230
    .local v2, "genreIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    .line 231
    const-string v5, "audio_id=?"

    .line 232
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 233
    .local v0, "genreId":J
    const-string v6, "external"

    .line 234
    invoke-static {v6, v0, v1}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 235
    .local v3, "uri":Landroid/net/Uri;
    new-array v6, v10, [Ljava/lang/String;

    .line 236
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {p1, v3, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 239
    .end local v0    # "genreId":J
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v6, "MediaMetaWriter"

    const-string v7, "genre map and genre_name will be updated as <unknown>"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private deleteYearInfoFromMediaDb(Landroid/content/Context;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioId"    # J

    .prologue
    .line 243
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_id=?"

    .line 247
    .local v1, "where":Ljava/lang/String;
    const-string/jumbo v3, "year"

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const-string/jumbo v2, "year_name"

    const-string v3, "<unknown>"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 251
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 250
    invoke-static {p1, v2, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 252
    const-string v2, "MediaMetaWriter"

    const-string/jumbo v3, "year and year_name will be updated as null, <unknown>"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private getGenreIdList(J)Ljava/util/List;
    .locals 9
    .param p1, "audioId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 204
    const-string v0, "external"

    long-to-int v2, p1

    .line 205
    invoke-static {v0, v2}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 206
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->GENRE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 207
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 208
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 209
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v7, "genreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 206
    .end local v7    # "genreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    :goto_1
    if-eqz v6, :cond_0

    if-eqz v3, :cond_7

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_2
    throw v0

    .restart local v7    # "genreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 216
    .end local v7    # "genreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :goto_3
    return-object v7

    .line 215
    .restart local v7    # "genreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v7    # "genreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    if-eqz v6, :cond_5

    if-eqz v3, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_4
    move-object v7, v3

    .line 216
    goto :goto_3

    .line 215
    :catch_2
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catch_3
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private notifyMusicProviderChanges(Landroid/content/Context;J)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idOnMediaProvider"    # J
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 303
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "source_id=? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 307
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    .line 308
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move-object v0, p1

    .line 304
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 309
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 310
    :cond_0
    const-string v0, "SMUSIC-MediaMetaWriter"

    const-string v1, "Cannot query given uri on music provider."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 319
    if-eqz v6, :cond_1

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 313
    :cond_3
    :try_start_2
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 314
    .local v8, "idOnMusicProvider":J
    const-string v0, "MediaMetaWriter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID on MusicProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    .line 317
    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    if-eqz v6, :cond_1

    if-eqz v5, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 303
    .end local v8    # "idOnMusicProvider":J
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 319
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_5

    if-eqz v5, :cond_6

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private updateMusicProvider(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaProviderUri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 270
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->MEDIA_COLUMNS_FOR_LOCAL_SYNC:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    .line 271
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 275
    :cond_0
    const-string v0, "SMUSIC-MediaMetaWriter"

    const-string v1, "Cannot query given uri on media provider."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    if-eqz v6, :cond_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 278
    :cond_3
    const v0, 0x10001

    :try_start_2
    const-string v1, "mediaStore"

    invoke-static {v6, v0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->makeContentValue(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v11

    .line 280
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 281
    .local v8, "idOnMediaProvider":J
    const-string v0, "MediaMetaWriter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID on MediaProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    .line 285
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 286
    .local v10, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "source_id=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 288
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 289
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 286
    invoke-static {p1, v10, v11, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 290
    .local v7, "updatedCount":I
    if-eq v7, v12, :cond_5

    .line 291
    const-string v0, "MediaMetaWriter"

    const-string v1, "Update track failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 298
    if-eqz v6, :cond_1

    if-eqz v3, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 297
    :cond_5
    :try_start_4
    invoke-direct {p0, p1, v8, v9}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->notifyMusicProviderChanges(Landroid/content/Context;J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 298
    if-eqz v6, :cond_1

    if-eqz v3, :cond_6

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 270
    .end local v7    # "updatedCount":I
    .end local v8    # "idOnMediaProvider":J
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_3
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 298
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_7

    if-eqz v3, :cond_8

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_2
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method setGenre(Ljava/lang/String;)V
    .locals 0
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mGenre:Ljava/lang/String;

    .line 124
    return-void
.end method

.method setOnCompletedEditingListener(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->mOnCompletedEditingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    .line 116
    return-void
.end method

.method write(Ljava/lang/String;ILandroid/util/SparseArray;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p3, "editArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;-><init>(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method
