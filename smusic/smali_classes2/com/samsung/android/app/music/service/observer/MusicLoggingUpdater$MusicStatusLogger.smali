.class Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;
.super Ljava/lang/Object;
.source "MusicLoggingUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicStatusLogger"
.end annotation


# static fields
.field private static final INTERVAL_1_WEEK:J = 0x240c8400L


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->mContext:Landroid/content/Context;

    .line 265
    return-void
.end method

.method private static getLockScreenSetting(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    invoke-static {p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getLockScreen()Z

    move-result v1

    .line 341
    .local v1, "isOn":Z
    if-eqz v1, :cond_0

    .line 342
    const-string v0, "1000"

    .line 346
    .local v0, "extra":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 344
    .end local v0    # "extra":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0
.end method

.method private getMusicExtraLoggingValues(Landroid/content/Context;)[Landroid/content/ContentValues;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getMusicCount(Landroid/content/Context;)I

    move-result v1

    .line 281
    .local v1, "musicCount":I
    const/4 v7, 0x1

    if-le v1, v7, :cond_0

    .line 282
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 283
    .local v5, "valueTrack":Landroid/content/ContentValues;
    const-string v7, "feature"

    const-string v8, "CTTR"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v7, "extra"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v5    # "valueTrack":Landroid/content/ContentValues;
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v4, "valuePlaylist":Landroid/content/ContentValues;
    const-string v7, "feature"

    const-string v8, "CTPL"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v7, "extra"

    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getPlaylistCount(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string/jumbo v7, "value"

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->getTotalPlaylistMemberCount(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 297
    .local v0, "controlViaLockScreen":Landroid/content/ContentValues;
    const-string v7, "feature"

    const-string v8, "SCLS"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v7, "value"

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->getLockScreenSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    sget-boolean v7, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SCREEN_OFF_MUSIC_ENABLED:Z

    if-eqz v7, :cond_1

    .line 302
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 303
    .local v2, "screenOffMusic":Landroid/content/ContentValues;
    const-string v7, "feature"

    const-string v8, "SSOM"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v7, "value"

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->getScreenOffMusicSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v2    # "screenOffMusic":Landroid/content/ContentValues;
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .local v3, "skipSilencesValues":Landroid/content/ContentValues;
    const-string v7, "feature"

    const-string v8, "SKSL"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v7, "value"

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->getSkipSilenceSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/ContentValues;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/ContentValues;

    return-object v7
.end method

.method private static getScreenOffMusicSetting(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    invoke-static {p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getScreenOffMusic()Z

    move-result v1

    .line 352
    .local v1, "isOn":Z
    if-eqz v1, :cond_0

    .line 353
    const-string v0, "1000"

    .line 357
    .local v0, "extra":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 355
    .end local v0    # "extra":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getSkipSilenceSetting(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    invoke-static {p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getSkipSilence()Z

    move-result v1

    .line 363
    .local v1, "isOn":Z
    if-eqz v1, :cond_0

    .line 364
    const-string v0, "1000"

    .line 368
    .local v0, "extra":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 366
    .end local v0    # "extra":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getTotalPlaylistMemberCount(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 317
    const/4 v8, 0x0

    .line 318
    .local v8, "totalCount":I
    const-string v7, "SELECT count(*) FROM audio_playlists_map WHERE playlist_id IN (SELECT _id FROM audio_playlists WHERE name NOT IN (?, ?));"

    .line 321
    .local v7, "rawQuery":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "FavoriteList#328795!432@1341"

    aput-object v0, v4, v2

    const/4 v0, 0x1

    const-string v2, "now playing list 0123456789"

    aput-object v2, v4, v0

    .line 323
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 325
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getRawQueryAppendedUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 326
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 327
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 331
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_1
    return v8

    .line 331
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private loggingMusicStatus(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->getMusicExtraLoggingValues(Landroid/content/Context;)[Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->loggingMusicStatus(Landroid/content/Context;[Landroid/content/ContentValues;)V

    .line 274
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->loggingMusicStatus(Landroid/content/Context;)V

    .line 270
    return-void
.end method
