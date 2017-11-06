.class final Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "MiniPlayerAlbumArt.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/IAlbumArt;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    }
.end annotation


# instance fields
.field private final mAlbumArtClicker:Landroid/view/View;

.field private final mAlbumArtSwitcher:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentImageSwitchInfo:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

.field private mIsExtraViewsHidden:Z

.field private mLastImageSwitchInfo:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

.field private mLoading:Landroid/widget/ProgressBar;

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mPrivate:Landroid/widget/ImageView;

.field private final mUpdateView:Ljava/lang/Runnable;

.field private final mView:Landroid/view/View;

.field private final mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "coreMediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    .line 59
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mIsExtraViewsHidden:Z

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$1;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mUpdateView:Ljava/lang/Runnable;

    .line 232
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$3;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mViewUpdateHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mView:Landroid/view/View;

    .line 89
    const v0, 0x7f1201a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtSwitcher:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtSwitcher:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->setAnimateFirstView(Z)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtSwitcher:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    new-instance v1, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$2;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 102
    const v0, 0x7f1204a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtClicker:Landroid/view/View;

    .line 103
    invoke-interface {p3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 104
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLastImageSwitchInfo:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mCurrentImageSwitchInfo:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->getAlbumArt(ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mCurrentImageSwitchInfo:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtSwitcher:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->updateAlbumArt(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mIsExtraViewsHidden:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->updatePrivateView(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAlbumArt(ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "queueType"    # I
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_0

    .line 210
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    .line 207
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->getCircleArtworkEffectDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getCircleArtworkEffectDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0328

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d06d7

    .line 219
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;II)V

    return-object v0
.end method

.method private updateAlbumArt(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->access$700(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mContext:Landroid/content/Context;

    const v1, 0x7f02018b

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtClicker:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    const v0, 0x7f0d00c4

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    .line 147
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->access$800(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->access$700(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mViewUpdateHandler:Landroid/os/Handler;

    .line 148
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;Landroid/os/Parcelable;)V

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtClicker:Landroid/view/View;

    .line 151
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->access$900(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getDefaultAlbumArt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtSwitcher:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->reset()V

    goto :goto_0
.end method

.method private updateLoadingInternal(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtSwitcher:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtSwitcher:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    .line 177
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getAlpha()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLastImageSwitchInfo:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    if-nez v5, :cond_2

    .line 181
    new-instance v5, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLastImageSwitchInfo:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 183
    :cond_2
    const/4 v5, 0x6

    if-ne p1, v5, :cond_5

    move v0, v3

    .line 184
    .local v0, "isBuffering":Z
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLastImageSwitchInfo:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->access$900(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I

    move-result v5

    if-eq v5, v3, :cond_3

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLastImageSwitchInfo:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 185
    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->access$800(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isOnline(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    move v1, v3

    .line 186
    .local v1, "isLoadingShowable":Z
    :goto_2
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 187
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mView:Landroid/view/View;

    const v5, 0x7f1204aa

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 188
    .local v2, "loadingStub":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewStub;

    if-eqz v3, :cond_4

    .line 189
    check-cast v2, Landroid/view/ViewStub;

    .end local v2    # "loadingStub":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 190
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mView:Landroid/view/View;

    const v5, 0x7f1204b1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLoading:Landroid/widget/ProgressBar;

    .line 192
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "isBuffering":Z
    .end local v1    # "isLoadingShowable":Z
    :cond_5
    move v0, v4

    .line 183
    goto :goto_1

    .restart local v0    # "isBuffering":Z
    :cond_6
    move v1, v4

    .line 185
    goto :goto_2

    .line 195
    .restart local v1    # "isLoadingShowable":Z
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLoading:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLoading:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePrivateView(Z)V
    .locals 3
    .param p1, "isPrivateContent"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mView:Landroid/view/View;

    const v2, 0x7f1204ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "privateStub":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "privateStub":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 165
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mView:Landroid/view/View;

    const v2, 0x7f1201ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mPrivate:Landroid/widget/ImageView;

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mPrivate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mPrivate:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mPrivate:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 301
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 303
    return-void
.end method

.method getAlbumArtClicker()Landroid/view/View;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtClicker:Landroid/view/View;

    return-object v0
.end method

.method public getAlbumView()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtSwitcher:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    return-object v0
.end method

.method getLoadingView()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLoading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method getPrivateView()Landroid/view/View;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mPrivate:Landroid/widget/ImageView;

    return-object v0
.end method

.method hideExtraViews()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mPrivate:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mPrivate:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLoading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 229
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mIsExtraViewsHidden:Z

    .line 230
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 297
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 277
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mLastImageSwitchInfo:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mViewUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mUpdateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mIsExtraViewsHidden:Z

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->updateLoadingInternal(I)V

    goto :goto_0
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
    .line 293
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 2

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mIsExtraViewsHidden:Z

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mIsExtraViewsHidden:Z

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mViewUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mUpdateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->updateLoading()V

    .line 273
    :cond_0
    return-void
.end method

.method public setAlbumArtConverter(Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;)V
    .locals 0
    .param p1, "converter"    # Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;

    .prologue
    .line 115
    return-void
.end method

.method public setAlbumClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mAlbumArtClicker:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method public setDefaultAlbumResource(I)V
    .locals 0
    .param p1, "albumResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 120
    return-void
.end method

.method updateLoading()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->updateLoadingInternal(I)V

    .line 202
    return-void
.end method
