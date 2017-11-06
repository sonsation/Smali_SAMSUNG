.class Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "LyricsViewBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricsHeaderUpdater"
.end annotation


# instance fields
.field private final mArtistView:Landroid/widget/TextView;

.field private final mGenreView:Landroid/widget/TextView;

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "artist"    # Landroid/widget/TextView;
    .param p3, "genre"    # Landroid/widget/TextView;
    .param p4, "o"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mTitleView:Landroid/widget/TextView;

    .line 237
    iput-object p2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mArtistView:Landroid/widget/TextView;

    .line 238
    iput-object p3, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mGenreView:Landroid/widget/TextView;

    .line 239
    iput-object p4, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 241
    return-void
.end method


# virtual methods
.method changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "o"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-ne v0, p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 288
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mTitleView:Landroid/widget/TextView;

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mArtistView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mArtistView:Landroid/widget/TextView;

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mGenreView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    const-string v1, "com.samsung.android.app.music.metadata.CHANNEL_NAME"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "stationId":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mGenreView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->updateStationName(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 263
    .end local v0    # "stationId":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mGenreView:Landroid/widget/TextView;

    const-string v2, "android.media.metadata.GENRE"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method release()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$LyricsHeaderUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 245
    return-void
.end method

.method updateStationName(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 9
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "stationId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 266
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 267
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "where":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getStationOnlyContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "station_station_name"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 269
    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 273
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v7, :cond_2

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 279
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 276
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v1

    goto :goto_0

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 269
    :catch_2
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    :catchall_0
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v2, :cond_4

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_2
    :try_start_6
    throw v1

    :catch_3
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v7

    goto :goto_1
.end method
