.class public Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;
.super Ljava/lang/Object;
.source "MusicEdgePanelViewHolder.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;,
        Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_PERMISSION:[Ljava/lang/String;

.field private static final EMPTY_METADATA:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private static final LOG_TAG:Ljava/lang/String; = "EdgePanel"

.field private static final MILK_PERMISSION:[Ljava/lang/String;

.field private static final SUPPORT_SET_ON_STATECHANGE_LISTENER:Z

.field private static final THREAD_POOL_SIZE:I = 0x1

.field private static final sInstance:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArt:Landroid/graphics/Bitmap;

.field private final mAlbumUpdaterCallback:Landroid/os/Handler$Callback;

.field private final mAlbumUpdaterHandler:Landroid/os/Handler;

.field private mCocktailBarListenerRegistered:Z

.field private final mCocktailBarStateChangedListener:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

.field private mCocktailbarVisibility:I

.field private mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

.field private mIsCardViewDeployed:Z

.field private mIsLocalMediaTrack:Z

.field private mIsPlaying:Z

.field private mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private mPrePermission:Z

.field private mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

.field private mRequestedUri:Landroid/net/Uri;

.field private mUpdateCardViewsTask:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v3, 0x316a2

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->SUPPORT_SET_ON_STATECHANGE_LISTENER:Z

    .line 98
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->EMPTY_METADATA:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v2

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "android.permission.GET_ACCOUNTS"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->MILK_PERMISSION:[Ljava/lang/String;

    .line 104
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->DEFAULT_PERMISSION:[Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->sInstance:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    return-void

    :cond_0
    move v0, v2

    .line 95
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$1;-><init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;)V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumUpdaterCallback:Landroid/os/Handler$Callback;

    .line 153
    new-instance v0, Landroid/os/Handler;

    .line 154
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumUpdaterCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumUpdaterHandler:Landroid/os/Handler;

    .line 156
    sget-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->EMPTY_METADATA:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 158
    iput-boolean v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    .line 160
    iput-boolean v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mPrePermission:Z

    .line 162
    iput-boolean v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsLocalMediaTrack:Z

    .line 168
    iput-boolean v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsCardViewDeployed:Z

    .line 170
    iput-boolean v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailBarListenerRegistered:Z

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailbarVisibility:I

    .line 248
    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$2;-><init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;)V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailBarStateChangedListener:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailbarVisibility:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailbarVisibility:I

    return p1
.end method

.method static synthetic access$300(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/widget/RemoteViews;
    .param p2, "x2"    # Landroid/widget/RemoteViews;

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateMusicEdgeCocktail(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private buildHelperRemoteView(Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 13
    .param p1, "builder"    # Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 349
    :cond_0
    sget-object v10, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->EMPTY_METADATA:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v10, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 350
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->setPlayerQueueType(I)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 351
    const-wide/16 v10, -0x1

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->updateHelpViewContainer(J)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v9

    .line 355
    .local v9, "type":I
    invoke-virtual {p1, v9}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->setPlayerQueueType(I)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 357
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 358
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getStationName()Ljava/lang/String;

    move-result-object v8

    .line 359
    .local v8, "stationName":Ljava/lang/String;
    const-string v10, "EdgePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "buildHelperRemoteView - stationName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-wide/16 v10, -0x1

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->updateHelpViewContainer(J)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 361
    if-nez v8, :cond_2

    const-string v8, "Launch Radio"

    .end local v8    # "stationName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v8}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->setStation(Ljava/lang/String;)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    goto :goto_0

    .line 363
    :cond_3
    const-string v10, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p2, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v3, v10

    .line 364
    .local v3, "cpAttrs":I
    const-string v10, "android.media.metadata.MEDIA_ID"

    .line 365
    invoke-virtual {p2, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v6

    .line 366
    .local v6, "audioId":J
    const-string v10, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p2, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 367
    .local v0, "albumId":J
    const-string v10, "com.samsung.android.app.music.metadata.ARTIST_ID"

    invoke-virtual {p2, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 368
    .local v4, "artistId":J
    const-string v10, "android.media.metadata.ARTIST"

    invoke-virtual {p2, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "artist":Ljava/lang/String;
    invoke-virtual {p1, v6, v7}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->updateHelpViewContainer(J)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 371
    iget-object v10, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbum:Ljava/lang/String;

    invoke-virtual {p1, v3, v0, v1, v10}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->setAlbum(IJLjava/lang/String;)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4, v5, v2}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->setArtist(IJLjava/lang/String;)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    goto :goto_0
.end method

.method private buildPanelRemoteView(Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 10
    .param p1, "builder"    # Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v8, -0x10

    .line 303
    if-nez p1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 307
    :cond_0
    const-string v7, "android.media.metadata.TITLE"

    invoke-virtual {p2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "title":Ljava/lang/String;
    const-string v7, "android.media.metadata.ARTIST"

    invoke-virtual {p2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "artist":Ljava/lang/String;
    const-string v7, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 310
    .local v0, "albumId":J
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v3

    .line 311
    .local v3, "isPrivate":Z
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v6

    .line 312
    .local v6, "type":I
    invoke-virtual {p1, v6}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setPlayerQueueType(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 313
    invoke-virtual {p1, p2}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 314
    invoke-virtual {p1, v3}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setIsPrivate(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 315
    iget-boolean v7, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    invoke-virtual {p1, v7}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setNextPrevController()Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 317
    iget-object v4, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 318
    .local v4, "originAlbumArt":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumArt:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 321
    :cond_1
    if-nez v4, :cond_3

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v7

    if-nez v7, :cond_3

    .line 322
    invoke-direct {p0, v8, v9, v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->imageLoader(JJ)V

    .line 331
    :cond_2
    :goto_1
    const-string v7, "EdgePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildPanelRemoteView title : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", artist : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isPlaying : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumArt:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getImageViewId(J)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setAlbumArt(Landroid/graphics/Bitmap;I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 325
    iget-boolean v7, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsLocalMediaTrack:Z

    if-nez v7, :cond_2

    goto :goto_1
.end method

.method private executeUpdateCardViewsTask()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->hasActiveEdgePanel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailbarVisibility:I

    if-eq v1, v5, :cond_1

    .line 548
    :cond_0
    const-string v1, "EdgePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " executeUpdateCardViewsTask() return. mCocktailbarVisibility:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailbarVisibility:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRemoteViewBuilder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :goto_0
    return-void

    .line 553
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;-><init>()V

    .line 554
    .local v0, "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mUpdateCardViewsTask:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;

    if-eqz v1, :cond_2

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mUpdateCardViewsTask:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;

    invoke-virtual {v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->cancelRunning()V

    .line 557
    :cond_2
    new-instance v1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-object v4, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;-><init>(Landroid/content/Context;Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    iput-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mUpdateCardViewsTask:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_3

    .line 561
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 563
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mUpdateCardViewsTask:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 564
    iput-boolean v5, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsCardViewDeployed:Z

    goto :goto_0
.end method

.method private getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 336
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 337
    .local v1, "size":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 338
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getSquareArtwork(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private getImageViewId(J)I
    .locals 3
    .param p1, "listItemId"    # J

    .prologue
    .line 854
    const-wide/16 v0, -0x10

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 855
    const v0, 0x7f1201a9

    .line 858
    :goto_0
    return v0

    .line 857
    :cond_0
    const-string v0, "EdgePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getImageViewId() please check para1 id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->sInstance:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    return-object v0
.end method

.method private getMediaContentCount()I
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getMusicCount(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private getPermissionLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 423
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 424
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_0

    .line 433
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 427
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/16 v5, 0x1000

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 428
    .local v2, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v5, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/16 v6, 0x1000

    .line 429
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    .line 430
    .local v1, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v5, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 431
    .end local v1    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .end local v2    # "pi":Landroid/content/pm/PermissionInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getStationName()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 376
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v1

    .line 378
    .local v1, "facade":Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    if-eqz v1, :cond_0

    .line 379
    const/16 v5, 0x10

    invoke-interface {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "stationId":Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_1

    move-object v5, v6

    .line 402
    :goto_1
    return-object v5

    .line 381
    .end local v4    # "stationId":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 382
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v5, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    .line 383
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/app/music/service/metadata/LocalPlayingItemFactory;

    invoke-direct {v8}, Lcom/samsung/android/app/music/service/metadata/LocalPlayingItemFactory;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    .line 385
    invoke-static {v9}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v9

    .line 383
    invoke-static {v5, v7, v8, v9, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->createPlayerQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v2

    .line 386
    .local v2, "playerQueue":Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    invoke-interface {v2, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 387
    invoke-interface {v2, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    .line 389
    const/4 v5, 0x4

    .line 390
    invoke-interface {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string/jumbo v7, "station_id"

    .line 391
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 392
    .restart local v4    # "stationId":Ljava/lang/String;
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    goto :goto_0

    .line 398
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .end local v2    # "playerQueue":Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v3

    .line 399
    .local v3, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-nez v3, :cond_2

    move-object v5, v6

    .line 400
    goto :goto_1

    .line 402
    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private getWidgetLayout()I
    .locals 1

    .prologue
    .line 502
    const v0, 0x7f04005f

    return v0
.end method

.method private hasActiveEdgePanel(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 750
    const/4 v2, 0x0

    .line 751
    .local v2, "hasActiveEdgePanel":Z
    invoke-static {p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v0

    .line 752
    .local v0, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    if-nez v0, :cond_0

    .line 753
    const-string v3, "EdgePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hasActiveEdgePanel(), cocktailManager is null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v3, 0x0

    .line 762
    :goto_0
    return v3

    .line 757
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->isEnabledCocktail(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 762
    goto :goto_0

    .line 759
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v3, "EdgePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasActiveEdgePanel() NoSuchMethodError:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized imageLoader(JJ)V
    .locals 5
    .param p1, "listItemId"    # J
    .param p3, "albumId"    # J

    .prologue
    .line 794
    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 795
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v1

    .line 796
    .local v1, "musicContents":Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const-string v3, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 797
    .local v0, "cpAttrs":I
    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedArtworkUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 798
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 797
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRequestedUri:Landroid/net/Uri;

    .line 800
    const v2, 0x7f0d0063

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRequestedUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumUpdaterHandler:Landroid/os/Handler;

    .line 801
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    .end local v0    # "cpAttrs":I
    .end local v1    # "musicContents":Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    :cond_0
    monitor-exit p0

    return-void

    .line 794
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private reloadQueueFromPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 766
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 767
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    .line 768
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/service/metadata/LocalPlayingItemFactory;

    invoke-direct {v5}, Lcom/samsung/android/app/music/service/metadata/LocalPlayingItemFactory;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    .line 769
    invoke-static {v6}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v6

    .line 768
    invoke-static {v3, v4, v5, v6, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->createPlayerQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v2

    .line 771
    .local v2, "playerQueue":Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    invoke-interface {v2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 772
    invoke-interface {v2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    .line 774
    const/4 v3, 0x3

    .line 775
    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v1

    .line 776
    .local v1, "metadata":Ljava/lang/Object;
    instance-of v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz v3, :cond_0

    .line 777
    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .end local v1    # "metadata":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->setMusicMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 781
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    .line 783
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    .line 784
    return-void

    .line 779
    .restart local v1    # "metadata":Ljava/lang/Object;
    :cond_0
    const-string v3, "EdgePanel"

    const-string/jumbo v4, "reloadQueueFromPreferences() Please check type of metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reloadQueueFromService(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 2
    .param p1, "facade"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .prologue
    .line 787
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->setMusicMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 789
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 790
    .local v0, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    .line 791
    return-void
.end method

.method private resizeAlbumArt(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "album"    # Landroid/graphics/Bitmap;

    .prologue
    .line 491
    if-eqz p1, :cond_0

    .line 492
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 493
    .local v1, "size":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 494
    .local v0, "bitmapSize":I
    if-le v0, v1, :cond_0

    .line 495
    const/4 v2, 0x1

    invoke-static {p1, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 498
    .end local v0    # "bitmapSize":I
    .end local v1    # "size":I
    :cond_0
    return-object p1
.end method

.method private setMusicMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 198
    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 199
    .local v1, "cpAttrs":I
    const-string v2, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    .local v0, "artwork":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsLocalMediaTrack:Z

    .line 202
    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->resizeAlbumArt(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 203
    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbum:Ljava/lang/String;

    .line 204
    return-void
.end method

.method private unregisterOnStateChangeListener(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    sget-boolean v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->SUPPORT_SET_ON_STATECHANGE_LISTENER:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailBarListenerRegistered:Z

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailBarStateChangedListener:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

    .line 245
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->unregisterStateListener(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)V

    goto :goto_0
.end method

.method private static updateMusicEdgeCocktail(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edgeRemoteview"    # Landroid/widget/RemoteViews;
    .param p2, "helpRemoteview"    # Landroid/widget/RemoteViews;

    .prologue
    .line 815
    invoke-static {p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v3

    .line 816
    .local v3, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 817
    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 818
    .local v2, "cocktailIds":[I
    if-eqz v2, :cond_2

    .line 819
    const-string v5, "EdgePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateMusicEdgeCocktail() cocktail ids length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v5, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v5, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/widget/RemoteViews;)V

    const/16 v6, 0x9f

    .line 822
    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setDisplayPolicy(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 823
    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v0

    .line 825
    .local v0, "builder":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;
    if-eqz p2, :cond_0

    .line 826
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    .line 830
    :cond_0
    :try_start_0
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget v1, v2, v5

    .line 831
    .local v1, "cocktailId":I
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 833
    .end local v1    # "cocktailId":I
    :catch_0
    move-exception v4

    .line 834
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v5, "EdgePanel"

    const-string v6, " updateCocktail() throws NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    .end local v0    # "builder":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    :goto_1
    return-void

    .line 837
    :cond_2
    const-string v5, "EdgePanel"

    const-string v6, " updateMusicEdgeCocktail() empty coctailIds"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateMusicEdgeCocktail(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "edgeRemoteview"    # Landroid/widget/RemoteViews;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mUpdateCardViewsTask:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mUpdateCardViewsTask:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;

    invoke-virtual {v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->cancelRunning()V

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 810
    invoke-virtual {v0}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 809
    :goto_0
    invoke-static {v1, p1, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateMusicEdgeCocktail(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 811
    return-void

    .line 810
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNoItemVisibility(Z)V
    .locals 5
    .param p1, "isVisibility"    # Z

    .prologue
    const v4, 0x7f120197

    const v3, 0x7f120196

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 506
    if-eqz p1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v4, v2}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 513
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    goto :goto_0
.end method

.method private updateNoPermissionVisibility(Z)V
    .locals 7
    .param p1, "isVisibility"    # Z

    .prologue
    const v6, 0x7f12019b

    const v5, 0x7f120195

    const v4, 0x7f120194

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 516
    if-eqz p1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    const v1, 0x7f1201a5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->setViewVisibility(II)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    invoke-virtual {v0, v6, v3}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->setViewVisibility(II)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v4, v2}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 527
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    const v1, 0x7f1201a5

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->setViewVisibility(II)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    invoke-virtual {v0, v6, v2}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->setViewVisibility(II)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v5, v2}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    goto :goto_0
.end method

.method private updatePermissionViewLayout()V
    .locals 6

    .prologue
    .line 413
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/AppNameUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "permissionAppName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00b5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 415
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "requestPermissionText":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    const v3, 0x7f1201a6

    const v4, 0x7f0d00f8

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->setText(Ljava/lang/String;II)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 419
    return-void
.end method

.method private updateProgress(ZZ)V
    .locals 0
    .param p1, "value"    # Z
    .param p2, "isPreparing"    # Z

    .prologue
    .line 477
    return-void
.end method

.method private updateQueue()V
    .locals 4

    .prologue
    .line 530
    const-string v1, "EdgePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updateQueue() start mIsPlaying - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    sget-object v1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->EMPTY_METADATA:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    .line 533
    .local v0, "facade":Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    if-nez v0, :cond_1

    .line 534
    const-string v1, "EdgePanel"

    const-string v2, " updateQueue() but Service is null. Reload list info from pref"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->reloadQueueFromPreferences()V

    .line 540
    .end local v0    # "facade":Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->buildPanelRemoteView(Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 541
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->buildHelperRemoteView(Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 542
    const-string v1, "EdgePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updateQueue() end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void

    .line 537
    .restart local v0    # "facade":Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->reloadQueueFromService(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    goto :goto_0
.end method

.method private updateRemoteAlbumArt(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "album"    # Landroid/graphics/Bitmap;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->hasActiveEdgePanel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 484
    :cond_0
    const-string v0, "EdgePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateRemoteAlbumArt() bitmap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateEdgePanel(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->MILK_PERMISSION:[Ljava/lang/String;

    .line 454
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->DEFAULT_PERMISSION:[Ljava/lang/String;

    goto :goto_0
.end method

.method getPrePermission()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mPrePermission:Z

    return v0
.end method

.method public isLegalInformationGranted()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isLegalAgreed()Z

    move-result v0

    return v0
.end method

.method public isPermissionGranted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getPermissions()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 439
    .local v0, "permission":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 443
    .end local v0    # "permission":Ljava/lang/String;
    :goto_1
    return v1

    .line 438
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 218
    const-string v1, "EdgePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onExtraChanged() action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->executeUpdateCardViewsTask()V

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    const-string v1, "com.samsung.android.app.music.core.state.ARTWORK_UPDATED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    const-string v1, "artwork"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 224
    .local v0, "artwork":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->hasActiveEdgePanel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    if-eqz v1, :cond_1

    .line 225
    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->resizeAlbumArt(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mAlbumArt:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateRemoteAlbumArt(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 191
    const-string v0, "EdgePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onMetadataChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->setMusicMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateEdgePanel(Z)V

    .line 194
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    .line 208
    .local v0, "isPlaying":Z
    iget-boolean v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    if-eq v0, v1, :cond_0

    .line 209
    iput-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    .line 211
    const-string v1, "EdgePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onPlaybackStateChanged() mIsPlaying:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-boolean v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updatePlayStatus(Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsCardViewDeployed:Z

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->unregisterOnStateChangeListener(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    .line 267
    return-void
.end method

.method setPrePermission(Z)V
    .locals 0
    .param p1, "presentPermission"    # Z

    .prologue
    .line 866
    iput-boolean p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mPrePermission:Z

    .line 867
    return-void
.end method

.method public tryRegisterOnStateChangeListener(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    sget-boolean v1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->SUPPORT_SET_ON_STATECHANGE_LISTENER:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailBarListenerRegistered:Z

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    move-result-object v0

    .line 236
    .local v0, "cocktailBarManager":Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailBarStateChangedListener:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

    .line 237
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->registerStateListener(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailBarListenerRegistered:Z

    goto :goto_0
.end method

.method public updateEdgePanel(Z)V
    .locals 5
    .param p1, "isUpdateCard"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->hasActiveEdgePanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mCocktailbarVisibility:I

    if-eq v0, v4, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    new-instance v0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getWidgetLayout()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    .line 275
    new-instance v0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f040060

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 278
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getMediaContentCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->isLegalInformationGranted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    invoke-direct {p0, v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateNoPermissionVisibility(Z)V

    .line 280
    invoke-direct {p0, v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateNoItemVisibility(Z)V

    .line 281
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateQueue()V

    .line 283
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsCardViewDeployed:Z

    if-nez v0, :cond_3

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->executeUpdateCardViewsTask()V

    goto :goto_0

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateMusicEdgeCocktail(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 289
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->isLegalInformationGranted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 290
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updatePermissionViewLayout()V

    .line 291
    invoke-direct {p0, v4}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateNoPermissionVisibility(Z)V

    .line 296
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mHelpRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    sget-object v1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->EMPTY_METADATA:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->buildHelperRemoteView(Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateMusicEdgeCocktail(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 293
    :cond_6
    invoke-direct {p0, v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateNoPermissionVisibility(Z)V

    .line 294
    invoke-direct {p0, v4}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateNoItemVisibility(Z)V

    goto :goto_1
.end method

.method public updatePlayStatus(Z)V
    .locals 1
    .param p1, "isPlaying"    # Z

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->hasActiveEdgePanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mRemoteViewBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    if-eq p1, v0, :cond_2

    .line 462
    iput-boolean p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->mIsPlaying:Z

    .line 464
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateEdgePanel(Z)V

    goto :goto_0
.end method
