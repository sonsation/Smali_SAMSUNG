.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;
.super Ljava/lang/Object;
.source "HomeScreenWidgetUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String; = "Widget: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"

.field public static final WIDGET_ONE_LINE_MAX_HEIGHT:I = 0x7e


# instance fields
.field private final mAppWidgetUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;

.field private final mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

.field private final mBackgroundArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

.field private final mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

.field private final mContext:Landroid/content/Context;

.field private final mFavoriteTrackUtil:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

.field private mIsFirstLoad:Z

.field private mLastUpdatedIsPlaying:Z

.field private mLastUpdatedQueueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

.field private mNeedToUpdateList:Z

.field private final mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mQueueExtra:Landroid/os/Bundle;

.field private final mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

.field private mSortMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateHelper"    # Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;
    .param p3, "abstractionFactory"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;
    .param p4, "artworkConverter"    # Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;
    .param p5, "backgroundArtworkConverter"    # Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;
    .param p6, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    .line 93
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->create()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mLastUpdatedQueueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    .line 99
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mIsFirstLoad:Z

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mSortMode:I

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    .line 107
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 108
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mAppWidgetUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;

    .line 109
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    .line 110
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBackgroundArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    .line 111
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getFavoriteTrack()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mFavoriteTrackUtil:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

    .line 112
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getRemoteViewAbsFactory()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;

    move-result-object v0

    .line 113
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;->getFactory(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    .line 114
    return-void
.end method

.method private allUpdateWithRecreation(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p2, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->createNewBuilder(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;Landroid/content/Context;)V

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateAllWidgetItems(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method private buildArtwork(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;->convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setArtwork(Landroid/graphics/Bitmap;)V

    .line 337
    return-void
.end method

.method private buildBackground(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "background"    # Landroid/graphics/Bitmap;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBackgroundArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;->convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setBackground(Landroid/graphics/Bitmap;)V

    .line 341
    return-void
.end method

.method private buildListViews(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 344
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mAppWidgetUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getClsWidgetListService()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 346
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mAppWidgetUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getWidgetListViewResId()I

    move-result v2

    .line 347
    .local v2, "listViewResId":I
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 348
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mAppWidgetUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;

    .line 349
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getWidgetListEmptyViewResId()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setEmptyView(II)V

    .line 354
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mAppWidgetUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;

    .line 355
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getClsWidgetProvider()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v0, "clickIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.app.music.core.action.appwidget.ACTION_MUSIC_LIST_CLICKED"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {v0, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 359
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    .line 360
    invoke-static {p1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 361
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 362
    return-void
.end method

.method private buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 12
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 247
    if-nez p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v6, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "id":Ljava/lang/String;
    const-string v6, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    .local v0, "artwork":Landroid/graphics/Bitmap;
    const-string v6, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    invoke-virtual {p1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 254
    .local v4, "soundQualityData":J
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v3

    .line 255
    .local v3, "isPrivate":Z
    const-string v6, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v1, v6

    .line 257
    .local v1, "cpAttrs":I
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-virtual {v6, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 258
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-virtual {v6, v3}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setIsPrivate(Z)V

    .line 259
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-virtual {v6, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setSoundQuality(J)V

    .line 260
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mFavoriteTrackUtil:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    .line 261
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v9, 0x1

    invoke-interface {v7, v8, v10, v11, v9}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;->isFavorite(Landroid/content/Context;JZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setIsFavorite(Z)V

    .line 264
    iget-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mIsFirstLoad:Z

    if-eqz v6, :cond_2

    .line 265
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mIsFirstLoad:Z

    .line 266
    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isOnline(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 270
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->buildArtwork(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mLastUpdatedIsPlaying:Z

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mLastUpdatedIsPlaying:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setPlayStatus(Z)V

    goto :goto_0
.end method

.method private buildQueueMode(Landroid/os/Bundle;Z)V
    .locals 6
    .param p1, "queueExtra"    # Landroid/os/Bundle;
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 282
    if-nez p1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string v5, "extra.list_mode_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 287
    .local v3, "type":I
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mLastUpdatedQueueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->create(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    move-result-object v0

    .line 289
    .local v0, "mode":Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 290
    const-string v5, "extra.union_shuffle_repeat_state"

    .line 291
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 292
    .local v4, "unionMode":I
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->setUnion(I)V

    .line 313
    .end local v4    # "unionMode":I
    :cond_2
    :goto_1
    if-nez p2, :cond_3

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mLastUpdatedQueueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    invoke-virtual {v5, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 316
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-virtual {v5, v0}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)V

    .line 317
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mLastUpdatedQueueMode:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    goto :goto_0

    .line 294
    :cond_4
    if-eqz p2, :cond_5

    .line 295
    const-string v5, "extra.repeat_state"

    .line 296
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 297
    .local v1, "repeat":I
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->setRepeat(I)V

    .line 298
    const-string v5, "extra.shuffle_state"

    .line 299
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 300
    .local v2, "shuffle":I
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->setShuffle(I)V

    goto :goto_1

    .line 302
    .end local v1    # "repeat":I
    .end local v2    # "shuffle":I
    :cond_5
    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 303
    const-string v5, "extra.repeat_state"

    .line 304
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 305
    .restart local v1    # "repeat":I
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->setRepeat(I)V

    goto :goto_1

    .line 306
    .end local v1    # "repeat":I
    :cond_6
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 307
    const-string v5, "extra.shuffle_state"

    .line 308
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 309
    .restart local v2    # "shuffle":I
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->setShuffle(I)V

    goto :goto_1
.end method

.method private hasActiveWidget()Z
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mAppWidgetUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->hasActiveWidget(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;)Z

    move-result v0

    return v0
.end method

.method private processWithoutRecreation(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 205
    const-string v8, "com.samsung.android.app.music.core.state.ARTWORK_UPDATED"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 206
    const-string v8, "artwork"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 207
    .local v0, "artwork":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->buildArtwork(Landroid/graphics/Bitmap;)V

    .line 208
    invoke-direct {p0, v10}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateWidget(Z)V

    .line 244
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v8, "com.samsung.android.app.music.core.state.BLUR_ARTWORK_UPDATED"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 211
    const-string v8, "artwork_blurred"

    .line 212
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 213
    .local v1, "background":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->buildBackground(Landroid/graphics/Bitmap;)V

    .line 214
    invoke-direct {p0, v10}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateWidget(Z)V

    goto :goto_0

    .line 215
    .end local v1    # "background":Landroid/graphics/Bitmap;
    :cond_2
    const-string v8, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 216
    if-eqz p2, :cond_0

    .line 219
    const-string v8, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 220
    .local v7, "values":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 223
    invoke-direct {p0, v7, v10}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->buildQueueMode(Landroid/os/Bundle;Z)V

    .line 224
    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateSortMode(Landroid/os/Bundle;)Z

    move-result v4

    .line 225
    .local v4, "isChanged":Z
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateWidget(Z)V

    goto :goto_0

    .line 226
    .end local v4    # "isChanged":Z
    .end local v7    # "values":Landroid/os/Bundle;
    :cond_3
    const-string v8, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 227
    const-string v8, "ids"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 228
    .local v3, "ids":[J
    if-eqz v3, :cond_0

    .line 231
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v6

    .line 232
    .local v6, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v8, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v6, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "id":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 235
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    if-ltz v8, :cond_0

    .line 236
    const-string/jumbo v8, "value_boolean"

    .line 237
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 238
    .local v5, "isFavorite":Z
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-virtual {v8, v5}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->setIsFavorite(Z)V

    .line 239
    invoke-direct {p0, v10}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateWidget(Z)V

    goto :goto_0

    .line 241
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "ids":[J
    .end local v5    # "isFavorite":Z
    .end local v6    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :cond_4
    const-string v8, "com.samsung.android.app.music.core.action.UPDATE_WIDGET_LIST"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateWidgetList()V

    goto :goto_0
.end method

.method private updateAllWidgetItems(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p2, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 183
    const-string v4, "artwork_blurred"

    .line 184
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 185
    .local v0, "background":Landroid/graphics/Bitmap;
    const-string v4, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mQueueExtra:Landroid/os/Bundle;

    .line 186
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->buildBackground(Landroid/graphics/Bitmap;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 188
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mQueueExtra:Landroid/os/Bundle;

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->buildQueueMode(Landroid/os/Bundle;Z)V

    .line 189
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mQueueExtra:Landroid/os/Bundle;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateSortMode(Landroid/os/Bundle;)Z

    .line 190
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 191
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->buildListViews(Landroid/content/Context;)V

    .line 193
    const-string v4, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 194
    .local v2, "queueSize":J
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 201
    .local v1, "needToUpdateList":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateWidget(Z)V

    .line 202
    return-void

    .line 194
    .end local v1    # "needToUpdateList":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSortMode(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 321
    const/4 v1, 0x1

    .line 322
    .local v1, "sortMode":I
    if-eqz p1, :cond_0

    .line 323
    const-string v3, "extra.sort_state"

    .line 324
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 326
    .local v0, "mode":I
    move v1, v0

    .line 328
    .end local v0    # "mode":I
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mSortMode:I

    if-ne v3, v1, :cond_1

    .line 329
    const/4 v2, 0x0

    .line 332
    :goto_0
    return v2

    .line 331
    :cond_1
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mSortMode:I

    goto :goto_0
.end method

.method private updateWidget(Z)V
    .locals 3
    .param p1, "updateList"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mAppWidgetUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->updateWidget(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;Z)V

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mNeedToUpdateList:Z

    .line 371
    return-void
.end method

.method private updateWidgetList()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mAppWidgetUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->updateWidgetList(Landroid/content/Context;)V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mNeedToUpdateList:Z

    .line 376
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->hasActiveWidget()Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string v3, "com.samsung.android.app.music.core.action.UPDATE_WIDGET"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 165
    .local v1, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v2

    .line 166
    .local v2, "s":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 167
    .local v0, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->allUpdateWithRecreation(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    goto :goto_0

    .line 169
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v2    # "s":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->processWithoutRecreation(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->hasActiveWidget()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 123
    .local v1, "s":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, "extras":Landroid/os/Bundle;
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->allUpdateWithRecreation(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->hasActiveWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mNeedToUpdateList:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateWidgetList()V

    .line 135
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mLastUpdatedIsPlaying:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSamePlaybackState(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateWidget(Z)V

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-nez p2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->hasActiveWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mBuilderManager:Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mQueueExtra:Landroid/os/Bundle;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mQueueExtra:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->buildQueueMode(Landroid/os/Bundle;Z)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mQueueExtra:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateSortMode(Landroid/os/Bundle;)Z

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateWidgetList()V

    goto :goto_0
.end method
