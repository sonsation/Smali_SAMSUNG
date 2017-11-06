.class public Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
.super Ljava/lang/Object;
.source "AlbumCoverView.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignPrevHandler;,
        Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignNextHandler;,
        Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignBackgroundHandler;,
        Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$ViewUpdateHandler;,
        Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;,
        Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FINISHED:I = 0x65

.field private static final ANIMATION_STARTED:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-UiPlayer"

.field private static final SCROLL_STATE_DRAGGING:I = 0x1

.field private static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UiPlayer"

.field private static final WAIT_META_CHANGE:I = 0x66


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

.field private final mAlbumCoverTagUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

.field private final mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

.field private mAlbumView:Landroid/view/View;

.field private mAnimationState:I

.field private final mAssignBackground:Landroid/os/Handler;

.field private mBackgroundView:Landroid/view/View;

.field private mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

.field private final mContext:Landroid/content/Context;

.field private mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mCrossFadeCallback:Landroid/os/Handler$Callback;

.field private final mCrossFadeHandler:Landroid/os/Handler;

.field private mGLGalleryVisibleRect:Landroid/graphics/Rect;

.field private mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

.field private mInCrossFade:Z

.field private mIsAlbumLoaded:Z

.field private mIsAvailableNetwork:Z

.field private mIsDsd:Z

.field private mIsGoingToNextOrPrev:Z

.field private mIsInitialMeta:Z

.field private mIsInitialPlayState:Z

.field private mIsPlaying:Z

.field private mIsPrepared:Z

.field private mIsResumed:Z

.field private final mIsSupport3DEffect:Z

.field private mLastBlurViewUpdateUri:Landroid/net/Uri;

.field private mListCount:I

.field private final mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

.field private mLyricsIconEnabled:Z

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field private mOnScrollStateChangedListener:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;

.field private mOnUpdateAlbumArtListener:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

.field private volatile mPositionHandler:Landroid/os/Handler;

.field private mPositionHandlerThread:Landroid/os/HandlerThread;

.field private mScrollState:I

.field private mSynthPositionAudio:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

.field private final mUiType:I

.field private final mView:Landroid/view/View;

.field private final mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "lyricsController"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
    .param p4, "coreMediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/16 v1, 0x65

    iput v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAnimationState:I

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGLGalleryVisibleRect:Landroid/graphics/Rect;

    .line 127
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsGoingToNextOrPrev:Z

    .line 129
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsResumed:Z

    .line 134
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsAlbumLoaded:Z

    .line 139
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsPrepared:Z

    .line 141
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsPlaying:Z

    .line 143
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsDsd:Z

    .line 145
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_COVER_FLOW_3D_AUDIO:Z

    if-eqz v1, :cond_1

    .line 146
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->isSupport3DEffect()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsSupport3DEffect:Z

    .line 152
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mLyricsIconEnabled:Z

    .line 154
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$1;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mCrossFadeCallback:Landroid/os/Handler$Callback;

    .line 174
    new-instance v1, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mCrossFadeCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mCrossFadeHandler:Landroid/os/Handler;

    .line 176
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsInitialMeta:Z

    .line 181
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsInitialPlayState:Z

    .line 185
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mInCrossFade:Z

    .line 189
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsAvailableNetwork:Z

    .line 226
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$ViewUpdateHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$ViewUpdateHandler;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mViewUpdateHandler:Landroid/os/Handler;

    .line 228
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignBackgroundHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignBackgroundHandler;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAssignBackground:Landroid/os/Handler;

    .line 230
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    .line 235
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mActivity:Landroid/app/Activity;

    .line 236
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mContext:Landroid/content/Context;

    .line 237
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mView:Landroid/view/View;

    .line 238
    iput-object p4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 239
    invoke-interface {p4, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 240
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mUiType:I

    .line 241
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->initializeView(Landroid/view/View;)V

    .line 243
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .line 244
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    const v1, 0x7f1201d2

    .line 245
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v0, p1, v1, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 247
    .local v0, "builder":Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;
    const v1, 0x7f1201d3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-array v4, v2, [I

    aput v6, v4, v3

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->addTag(Landroid/view/View;[I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    move-result-object v1

    const v4, 0x7f1201d4

    .line 248
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-array v2, v2, [I

    const/4 v5, 0x4

    aput v5, v2, v3

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->addTag(Landroid/view/View;[I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    move-result-object v1

    const v2, 0x7f1201d5

    .line 250
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->addTag(Landroid/view/View;[I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .line 252
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$2;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->setVisibilityPredicate(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .line 259
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->setTagPositionController(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .line 260
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->build()Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumCoverTagUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    .line 261
    instance-of v1, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v1, :cond_0

    .line 262
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 264
    :cond_0
    return-void

    .end local v0    # "builder":Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_1
    move v1, v3

    .line 146
    goto/16 :goto_0

    .line 250
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/Message;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->isRemoteArtwork(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->updateAnimationState(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsSupport3DEffect:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mSynthPositionAudio:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mSynthPositionAudio:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mListCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumCoverTagUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->getPlayingItemPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->hasOneMoreAdapterItems()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mPositionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mPositionHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mPositionHandlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsDsd:Z

    return v0
.end method

.method static synthetic access$2800(Landroid/os/Message;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/os/Message;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->getLoadedUri(Landroid/os/Message;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->onAlbumLoadFinished(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mInCrossFade:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mLastBlurViewUpdateUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mLastBlurViewUpdateUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;ZZ)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->decideScrollState(ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setScrollState(II)V

    return-void
.end method

.method private addOnAlbumSizeChangedListener(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->add(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;)V

    .line 656
    return-void
.end method

.method private decideScrollState(ZZ)I
    .locals 1
    .param p1, "isAnimating"    # Z
    .param p2, "isTouched"    # Z

    .prologue
    .line 291
    if-eqz p1, :cond_1

    .line 292
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    .line 292
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmap(IJ)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "cpAttrs"    # I
    .param p2, "albumId"    # J

    .prologue
    .line 428
    const v0, 0x7f0d0061

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    .line 429
    invoke-static {p1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->getArtwork()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getLoadedUri(Landroid/os/Message;)Landroid/net/Uri;
    .locals 4
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 1067
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1068
    .local v0, "p":Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 1069
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1070
    check-cast v1, Landroid/net/Uri;

    .line 1072
    :cond_0
    return-object v1
.end method

.method private getPlayingItemPosition()I
    .locals 4

    .prologue
    .line 565
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra.list_position"

    .line 566
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 567
    .local v1, "position":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    if-nez v2, :cond_1

    .line 579
    .end local v1    # "position":I
    :cond_0
    :goto_0
    return v1

    .line 571
    .restart local v1    # "position":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 572
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 573
    const-string v2, "UiPlayer"

    const-string/jumbo v3, "setShuffleQueueMode() : Cursor is closed"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_2
    instance-of v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v2, :cond_0

    .line 577
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .end local v0    # "c":Landroid/database/Cursor;
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v1

    goto :goto_0
.end method

.method private hasOneMoreAdapterItems()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 377
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initGLGallery()V
    .locals 3

    .prologue
    .line 318
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->VI_TRANSITION_PLAYER_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->asView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    .line 322
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setDefaultAlbumArt(Landroid/graphics/Bitmap;)V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$1;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setOnSelectedAlbumSizeChangedListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->asView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 326
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mUiType:I

    if-nez v0, :cond_2

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->initPhoneGLGallery()V

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->initSmartClip(Landroid/view/View;)V

    .line 332
    return-void

    .line 329
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->initTabletGLGallery()V

    goto :goto_0
.end method

.method private initPhoneGLGallery()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 335
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setSingleScroll(Z)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setAdapterWrap(Z)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$4;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 347
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSmartClip(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 370
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 371
    .local v0, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "title":Ljava/lang/String;
    const-string v3, "com.samsung.android.app.music.metadata.PLAYING_URI"

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "path":Ljava/lang/String;
    invoke-static {p1, v2, v1}, Lcom/samsung/android/app/music/support/samsung/content/SmartClipCompat;->setDataExtractionListener(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private initTabletGLGallery()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setSingleScroll(Z)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setAdapterWrap(Z)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$5;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 360
    return-void
.end method

.method private initializeView(Landroid/view/View;)V
    .locals 3
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 298
    const v0, 0x7f1201ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumView:Landroid/view/View;

    .line 299
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setBackgroundView(Landroid/view/View;)V

    .line 301
    const v0, 0x7f120100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .line 303
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBlurBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$3;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setOnCrossFadeCompletedListener(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;)V

    .line 311
    const v0, 0x7f1201a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->initGLGallery()V

    .line 315
    :cond_0
    return-void
.end method

.method private isAvailableNetwork(Lcom/samsung/android/app/music/network/NetworkInfo;)Z
    .locals 1
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;

    .prologue
    .line 215
    iget-object v0, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    return v0
.end method

.method private isGLGalleryActive()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 813
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    .line 814
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->asView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumView:Landroid/view/View;

    .line 815
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 816
    .local v0, "glGalleryVisible":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 820
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->asView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGLGalleryVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 821
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGLGalleryVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGLGalleryVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_1

    .line 823
    :goto_1
    return v1

    .end local v0    # "glGalleryVisible":Z
    :cond_0
    move v0, v2

    .line 815
    goto :goto_0

    .restart local v0    # "glGalleryVisible":Z
    :cond_1
    move v1, v2

    .line 821
    goto :goto_1

    :cond_2
    move v1, v2

    .line 823
    goto :goto_1
.end method

.method private static isRemoteArtwork(Landroid/os/Message;)Z
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 1076
    invoke-static {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->getLoadedUri(Landroid/os/Message;)Landroid/net/Uri;

    move-result-object v0

    .line 1077
    .local v0, "loadedUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->isRemoteUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isRemoteUri(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1081
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->isRemoteUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private needCoverFlowAnimation(Z)Z
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 388
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_COVER_FLOW_NEXT_PREV_VI:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->isGLGalleryActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAlbumLoadFinished(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 497
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->updateAlbumLoading(Z)V

    .line 498
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsGoingToNextOrPrev:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->needCoverFlowAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setBackground(Landroid/graphics/Bitmap;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnUpdateAlbumArtListener:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnUpdateAlbumArtListener:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;->OnUpdateAlbumArt(Landroid/graphics/Bitmap;)V

    .line 504
    :cond_1
    return-void
.end method

.method private setAlbumArt(IJ)V
    .locals 4
    .param p1, "cpAttrs"    # I
    .param p2, "albumId"    # J

    .prologue
    .line 404
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mViewUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gez v1, :cond_1

    .line 407
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->onAlbumLoadFinished(Landroid/graphics/Bitmap;)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->getBitmap(IJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 411
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 412
    const v1, 0x7f0d0061

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    .line 413
    invoke-static {p1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mViewUpdateHandler:Landroid/os/Handler;

    .line 414
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 416
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->updateAlbumLoading(Z)V

    .line 418
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsGoingToNextOrPrev:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->needCoverFlowAnimation(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 419
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setBackground(Landroid/graphics/Bitmap;)V

    .line 421
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnUpdateAlbumArtListener:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnUpdateAlbumArtListener:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;->OnUpdateAlbumArt(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setBackground(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mBackgroundView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mInCrossFade:Z

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setBackgroundView(Landroid/view/View;)V
    .locals 0
    .param p1, "backgroundView"    # Landroid/view/View;

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 384
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mBackgroundView:Landroid/view/View;

    goto :goto_0
.end method

.method private setScrollState(II)V
    .locals 1
    .param p1, "scrollState"    # I
    .param p2, "position"    # I

    .prologue
    .line 282
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mScrollState:I

    if-eq v0, p1, :cond_0

    .line 283
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mScrollState:I

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnScrollStateChangedListener:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnScrollStateChangedListener:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;->onScrollStateChanged(II)V

    .line 288
    :cond_0
    return-void
.end method

.method private setShuffleQueueMode(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 583
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    if-nez v3, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 588
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 589
    const-string v3, "UiPlayer"

    const-string/jumbo v4, "setShuffleQueueMode() : Cursor is closed"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_2
    instance-of v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 593
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 594
    .local v2, "queue":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setExtra(Landroid/os/Bundle;)V

    .line 595
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mListCount:I

    .line 596
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->clearAlbumUrisCache()V

    .line 597
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumCoverTagUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mLyricsIconEnabled:Z

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->setLyricsIconEnabled(Z)V

    .line 598
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->getPlayingItemPosition()I

    move-result v1

    .line 599
    .local v1, "position":I
    const-string v3, "SV-List"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setShuffleQueueMode position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-interface {v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    goto :goto_0
.end method

.method private showPrepareLoading(ZI)V
    .locals 3
    .param p1, "isLocalSong"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v1, 0x0

    .line 488
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsAlbumLoaded:Z

    .line 489
    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsPrepared:Z

    .line 490
    if-nez p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mView:Landroid/view/View;

    const v2, 0x7f1201d0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 489
    goto :goto_0
.end method

.method private updateAlbumArt(IJZ)V
    .locals 4
    .param p1, "cpAttrs"    # I
    .param p2, "albumId"    # J
    .param p4, "animation"    # Z

    .prologue
    .line 392
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    if-nez v1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->getPlayingItemPosition()I

    move-result v0

    .line 396
    .local v0, "position":I
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->getSelectedItemPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setAnimationIsNext(Z)V

    .line 398
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->needCoverFlowAnimation(Z)Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setSelection(IZ)V

    .line 400
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setAlbumArt(IJ)V

    goto :goto_0
.end method

.method private updateAlbumLoading(Z)V
    .locals 1
    .param p1, "albumParsed"    # Z

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsPrepared:Z

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->updatePrepareLoading(ZZ)V

    .line 462
    return-void
.end method

.method private updateAnimationState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 827
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAnimationState:I

    .line 828
    packed-switch p1, :pswitch_data_0

    .line 844
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 830
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnUpdateAlbumArtListener:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnUpdateAlbumArtListener:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;->onAlbumArtAnimation(Z)V

    goto :goto_0

    .line 835
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnUpdateAlbumArtListener:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnUpdateAlbumArtListener:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;->onAlbumArtAnimation(Z)V

    goto :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updatePrepareLoading(Z)V
    .locals 1
    .param p1, "prepared"    # Z

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsAlbumLoaded:Z

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->updatePrepareLoading(ZZ)V

    .line 454
    return-void
.end method

.method private updatePrepareLoading(ZZ)V
    .locals 3
    .param p1, "prepared"    # Z
    .param p2, "albumParsed"    # Z

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsPrepared:Z

    .line 473
    iput-boolean p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsAlbumLoaded:Z

    .line 475
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mView:Landroid/view/View;

    const v2, 0x7f1201d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 477
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 478
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 481
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method crossFadeTo(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mInCrossFade:Z

    .line 649
    const v0, 0x7f0d0061

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mCrossFadeHandler:Landroid/os/Handler;

    .line 650
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    .line 651
    return-void
.end method

.method public moveToNext()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 605
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_COVER_FLOW_NEXT_PREV_VI:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->isGLGalleryActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->getSelectedItemPosition()I

    move-result v0

    .line 609
    .local v0, "curPosition":I
    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mListCount:I

    if-le v2, v4, :cond_0

    .line 611
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mListCount:I

    rem-int v1, v2, v3

    .line 614
    .local v1, "nextPosition":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v2, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setAnimationIsNext(Z)V

    .line 615
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setSelection(IZ)V

    .line 622
    .end local v0    # "curPosition":I
    .end local v1    # "nextPosition":I
    :goto_0
    return-void

    .line 617
    .restart local v0    # "curPosition":I
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playNext()V

    goto :goto_0

    .line 620
    .end local v0    # "curPosition":I
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playNext()V

    goto :goto_0
.end method

.method moveToPrev()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 625
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_COVER_FLOW_NEXT_PREV_VI:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->isGLGalleryActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 628
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mListCount:I

    if-gtz v2, :cond_1

    .line 630
    :cond_0
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playPrev(Z)V

    .line 644
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->getSelectedItemPosition()I

    move-result v0

    .line 636
    .local v0, "curPosition":I
    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mListCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mListCount:I

    rem-int v1, v2, v3

    .line 639
    .local v1, "prevPosition":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setAnimationIsNext(Z)V

    .line 640
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setSelection(IZ)V

    goto :goto_0

    .line 642
    .end local v0    # "curPosition":I
    .end local v1    # "prevPosition":I
    :cond_2
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playPrev(Z)V

    goto :goto_0
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 743
    return-void
.end method

.method public onDestroyCalled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 788
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->invalidateCache()V

    .line 789
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    if-eqz v0, :cond_0

    .line 791
    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->onDestroy()V

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mSynthPositionAudio:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    if-eqz v0, :cond_2

    .line 797
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mSynthPositionAudio:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->release()V

    .line 798
    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mSynthPositionAudio:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    .line 800
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mPositionHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 801
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mPositionHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 803
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->clear()V

    .line 804
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 718
    const-string v2, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    const-string v2, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 720
    .local v1, "values":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 738
    .end local v1    # "values":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 723
    .restart local v1    # "values":Landroid/os/Bundle;
    :cond_1
    const-string v2, "extra.list_mode_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 724
    .local v0, "type":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 725
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setShuffleQueueMode(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 10
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 660
    iput-boolean v7, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsInitialPlayState:Z

    .line 661
    const-string v5, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v3, v8

    .line 662
    .local v3, "direction":I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    :cond_0
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsGoingToNextOrPrev:Z

    .line 665
    const-string v5, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->isDsd(J)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsDsd:Z

    .line 669
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v4

    .line 670
    .local v4, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    const-string v5, "com.samsung.android.app.music.metadata.PLAYING_URI"

    .line 671
    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLocalContents(Ljava/lang/String;)Z

    move-result v5

    .line 672
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v8

    .line 670
    invoke-direct {p0, v5, v8}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->showPrepareLoading(ZI)V

    .line 673
    const-string v5, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v2, v8

    .line 674
    .local v2, "cpAttrs":I
    const-string v5, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 676
    .local v0, "albumId":J
    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsGoingToNextOrPrev:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsInitialMeta:Z

    if-nez v5, :cond_5

    :goto_1
    invoke-direct {p0, v2, v0, v1, v7}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->updateAlbumArt(IJZ)V

    .line 677
    sget-boolean v5, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_COVER_FLOW_NEXT_PREV_VI:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsInitialMeta:Z

    if-eqz v5, :cond_2

    .line 679
    :cond_1
    const v5, 0x7f0d0061

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v5

    .line 680
    invoke-static {v2}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    sget v8, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    .line 681
    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    .line 684
    :cond_2
    iget v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAnimationState:I

    const/16 v7, 0x66

    if-ne v5, v7, :cond_3

    .line 685
    const/16 v5, 0x65

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->updateAnimationState(I)V

    .line 687
    :cond_3
    iput-boolean v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsInitialMeta:Z

    .line 688
    return-void

    .end local v0    # "albumId":J
    .end local v2    # "cpAttrs":I
    .end local v4    # "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :cond_4
    move v5, v6

    .line 662
    goto :goto_0

    .restart local v0    # "albumId":J
    .restart local v2    # "cpAttrs":I
    .restart local v4    # "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :cond_5
    move v7, v6

    .line 676
    goto :goto_1
.end method

.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 7
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->isAvailableNetwork(Lcom/samsung/android/app/music/network/NetworkInfo;)Z

    move-result v2

    .line 194
    .local v2, "isAvailable":Z
    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsAvailableNetwork:Z

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    if-nez v4, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsAvailableNetwork:Z

    .line 198
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 199
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    const-string v4, "UiPlayer"

    const-string/jumbo v5, "onNetworkStateChanged() : Cursor is closed"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_2
    instance-of v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 204
    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 205
    .local v1, "cursor":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setAvailableNetwork(Z)V

    .line 206
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->clearAlbumUrisCache()V

    .line 207
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumCoverTagUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mLyricsIconEnabled:Z

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->setLyricsIconEnabled(Z)V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->getPlayingItemPosition()I

    move-result v3

    .line 209
    .local v3, "position":I
    const-string v4, "SV-List"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onNetworkStateChanged position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-interface {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    goto :goto_0
.end method

.method public onPauseCalled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsInitialMeta:Z

    .line 767
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsResumed:Z

    .line 768
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->onPause()V

    .line 770
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mSynthPositionAudio:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->hasOneMoreAdapterItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mSynthPositionAudio:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->setEnabled(Z)V

    .line 775
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    const/4 v2, 0x0

    .line 692
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsPlaying:Z

    .line 693
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsInitialPlayState:Z

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mSynthPositionAudio:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mSynthPositionAudio:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mSynthPositionAudio:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->setEnabled(Z)V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mView:Landroid/view/View;

    const v1, 0x7f1201d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 706
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->updatePrepareLoading(Z)V

    .line 708
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsInitialPlayState:Z

    .line 709
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
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
    .line 714
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsResumed:Z

    .line 756
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->onResume()V

    .line 761
    :cond_0
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->updateAnimationState(I)V

    .line 762
    return-void
.end method

.method public onStartCalled()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumCoverTagUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->onStartCalled()V

    .line 748
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 751
    :cond_0
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumCoverTagUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->onStopCalled()V

    .line 780
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 783
    :cond_0
    return-void
.end method

.method setLyricsIconEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mLyricsIconEnabled:Z

    if-eq p1, v0, :cond_1

    .line 268
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mLyricsIconEnabled:Z

    .line 269
    const-string v0, "UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLyricsIconEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mUiType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumCoverTagUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumCoverTagUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mLyricsIconEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->setLyricsIconEnabled(Z)V

    .line 275
    :cond_1
    return-void
.end method

.method setOnScrollStateChangedListener(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnScrollStateChangedListener:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;

    .line 279
    return-void
.end method

.method final setOnUpdateAlbumArtListener(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mOnUpdateAlbumArtListener:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

    .line 434
    return-void
.end method

.method final setPlayingListAlbumData(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 511
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    if-nez v0, :cond_0

    .line 512
    const-string v0, "SMUSIC-UiPlayer"

    const-string/jumbo v1, "setPlayingListAlbumData mGlGalleryView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_0
    return-void

    .line 515
    :cond_0
    if-nez p1, :cond_1

    .line 516
    iput v10, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mListCount:I

    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    const/4 v1, -0x1

    invoke-interface {v0, v11, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->isAvailableNetwork(Lcom/samsung/android/app/music/network/NetworkInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsAvailableNetwork:Z

    move-object v0, p1

    .line 523
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mIsAvailableNetwork:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setAvailableNetwork(Z)V

    .line 525
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mListCount:I

    .line 526
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v8

    .line 527
    .local v8, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v5, v0

    .line 528
    .local v5, "cpAttrs":I
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 532
    .local v6, "albumId":J
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->hasKeyboardCover(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    const v3, 0x7f0d0117

    .line 534
    .local v3, "privateIconDx":I
    const v4, 0x7f0d0118

    .line 539
    .local v4, "privateIconDy":I
    :goto_1
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mActivity:Landroid/app/Activity;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;III)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    .line 542
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->getPlayingItemPosition()I

    move-result v9

    .line 543
    .local v9, "position":I
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mGlGalleryView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumArtAdapter:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-interface {v0, v1, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    .line 549
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_COVER_FLOW_NEXT_PREV_VI:Z

    if-eqz v0, :cond_5

    .line 551
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_4

    .line 552
    invoke-direct {p0, v11}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setBackground(Landroid/graphics/Bitmap;)V

    .line 561
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAlbumCoverTagUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->setLyricsIconEnabled(Z)V

    goto :goto_0

    .line 536
    .end local v3    # "privateIconDx":I
    .end local v4    # "privateIconDy":I
    .end local v9    # "position":I
    :cond_3
    const v3, 0x7f0d0077

    .line 537
    .restart local v3    # "privateIconDx":I
    const v4, 0x7f0d0078

    .restart local v4    # "privateIconDy":I
    goto :goto_1

    .line 554
    .restart local v9    # "position":I
    :cond_4
    const v0, 0x7f0d0061

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    .line 555
    invoke-static {v5}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->mAssignBackground:Landroid/os/Handler;

    .line 556
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    goto :goto_2

    .line 559
    :cond_5
    invoke-direct {p0, v5, v6, v7, v10}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->updateAlbumArt(IJZ)V

    goto :goto_2
.end method
