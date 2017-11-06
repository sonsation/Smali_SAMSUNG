.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;
.super Ljava/lang/Object;
.source "NotificationUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field private static final DEBUG_PERFORMANCE:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String; = "Notification: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field private final mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

.field private final mContext:Landroid/content/Context;

.field private mLastUpdatedIsPlaying:Z

.field private mLastUpdatedIsRemote:Z

.field private final mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mQueueSize:I

.field private mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

.field private final mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

.field private final mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

.field private final mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p3, "abstractionFactory"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;
    .param p4, "delegate"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;
    .param p5, "artworkConverter"    # Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mQueueSize:I

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 74
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    .line 76
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getRemoteViewAbsFactory()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;

    move-result-object v1

    const/4 v2, 0x2

    .line 77
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;->getFactory(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    .line 86
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p4, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->unregisterNotification()V

    .line 88
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isSupportCoverSView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)V

    .line 101
    .local v0, "coverStateListener":Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    .line 105
    .end local v0    # "coverStateListener":Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildLayoutForSViewCover(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildBrandName(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    return-void
.end method

.method private buildAlbumViewVisibility(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .param p2, "isCoverOpened"    # Z

    .prologue
    .line 253
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->needToShowAlbum(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 254
    .local v0, "visibility":I
    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setAlbumViewVisibility(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    .line 255
    return-void

    .line 253
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private buildArtwork(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .param p2, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;->convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 231
    return-void
.end method

.method private buildBigNotificationGravity(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .param p2, "isCoverOpened"    # Z

    .prologue
    .line 259
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->needToShowAlbum(Z)Z

    move-result v1

    .line 260
    .local v1, "needToShowAlbum":Z
    if-eqz v1, :cond_0

    const v0, 0x800013

    .line 262
    .local v0, "gravity":I
    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setControlPanelGravityForBigNotification(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    .line 263
    return-void

    .line 260
    .end local v0    # "gravity":I
    :cond_0
    const v0, 0x800015

    goto :goto_0
.end method

.method private buildBrandName(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    .prologue
    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setBrandName()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    goto :goto_0
.end method

.method private buildConnectivityStatus(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;II)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .param p2, "playerType"    # I
    .param p3, "soundPath"    # I

    .prologue
    .line 235
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRemotePlayer(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsRemote:Z

    .line 236
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsRemote:Z

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setIsRemotePlayer(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 237
    return-void
.end method

.method private buildLayoutForSViewCover(Z)V
    .locals 1
    .param p1, "isCoverOpened"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildAlbumViewVisibility(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildBigNotificationGravity(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V

    goto :goto_0
.end method

.method private buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .param p2, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    const/4 v0, 0x0

    .line 215
    if-nez p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 218
    :cond_0
    if-nez p2, :cond_1

    .line 219
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    .line 220
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setIsRemotePlayer(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 226
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setNextPrevController()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    .line 223
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRemotePlayer(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsRemote:Z

    .line 224
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsRemote:Z

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setIsRemotePlayer(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_1
.end method

.method private buildTextMarquee(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V
    .locals 0
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .param p2, "enabled"    # Z

    .prologue
    .line 240
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 241
    return-void
.end method

.method private isRemotePlayer(II)Z
    .locals 1
    .param p1, "playerType"    # I
    .param p2, "soundPath"    # I

    .prologue
    .line 275
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 277
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopHdmi()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameRemotePlayer(II)Z
    .locals 2
    .param p1, "playerType"    # I
    .param p2, "soundPath"    # I

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsRemote:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRemotePlayer(II)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToShowAlbum(Z)Z
    .locals 4
    .param p1, "isCoverOpened"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 287
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    if-eqz v3, :cond_3

    .line 288
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    .line 289
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->getCoverType()I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    .line 290
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 291
    .local v0, "isSView":Z
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    move v1, v2

    .line 293
    .end local v0    # "isSView":Z
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 290
    goto :goto_0

    :cond_3
    move v1, v2

    .line 293
    goto :goto_1
.end method


# virtual methods
.method public final onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 188
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    if-nez v3, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v3, "com.samsung.android.app.music.core.state.ARTWORK_UPDATED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    const-string v3, "artwork"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 193
    .local v0, "artwork":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildArtwork(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Landroid/graphics/Bitmap;)V

    .line 194
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto :goto_0

    .line 195
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    :cond_2
    const-string v3, "com.samsung.android.app.music.core.state.ACTION_HDMI_PLUG"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    const-string/jumbo v3, "soundPathType"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 197
    .local v2, "soundPathType":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 198
    .local v1, "s":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildConnectivityStatus(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;II)V

    .line 199
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto :goto_0

    .line 200
    .end local v1    # "s":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .end local v2    # "soundPathType":I
    :cond_3
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildTextMarquee(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V

    .line 202
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto :goto_0

    .line 203
    :cond_4
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 204
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildTextMarquee(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V

    .line 205
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto :goto_0

    .line 206
    :cond_5
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 207
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildBrandName(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    .line 208
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto :goto_0

    .line 209
    :cond_6
    const-string v3, "com.samsung.android.app.music.core.state.HIDE_NOTIFICATION"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->unregisterNotification()V

    goto/16 :goto_0
.end method

.method public final onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 9
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 109
    const-string v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, "artwork":Landroid/graphics/Bitmap;
    const-string v3, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 111
    .local v4, "soundQualityData":J
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v1

    .line 119
    .local v1, "isPrivate":Z
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;->create(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    .line 120
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-interface {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object v3

    .line 121
    invoke-interface {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setSoundQuality(J)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object v3

    .line 122
    invoke-interface {v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setIsPrivate(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 130
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v2

    .line 131
    .local v2, "s":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildArtwork(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 133
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildTextMarquee(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V

    .line 134
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildBrandName(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    .line 135
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isCoverOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildLayoutForSViewCover(Z)V

    .line 137
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iget-boolean v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->obtainNotification(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)Landroid/app/Notification;

    .line 138
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->setUpNotification(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    .line 140
    const-string v3, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v3, v6

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mQueueSize:I

    .line 141
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mQueueSize:I

    if-gtz v3, :cond_3

    .line 142
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->unregisterNotification()V

    .line 147
    :cond_1
    :goto_1
    return-void

    .line 135
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->isNotificationVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->registerNotification()V

    goto :goto_1
.end method

.method public final onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->isNotificationVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSamePlaybackState(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isSameRemotePlayer(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->obtainNotification(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)Landroid/app/Notification;

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto :goto_0

    .line 162
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mQueueSize:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    if-nez v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    .line 169
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;->create(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->obtainNotification(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)Landroid/app/Notification;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->setUpNotification(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->registerNotification()V

    goto :goto_0
.end method

.method public final onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
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
    .line 184
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method
