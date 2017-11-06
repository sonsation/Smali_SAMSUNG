.class final Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;
.super Ljava/lang/Object;
.source "LockPlayerAlbumArt.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/IAlbumArt;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-LockPlayer"

.field private static final TAG:Ljava/lang/String; = "LockPlayer"


# instance fields
.field private final mAlbumArt:Landroid/widget/ImageView;

.field private mAlbumArtConverter:Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;

.field private final mAlbumCoverTagsUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

.field private mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

.field private final mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAlbumUri:Landroid/net/Uri;

.field private mDefaultAlbumResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mRadioLyricTagView:Landroid/view/View;

.field private final mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    const/4 v8, 0x3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mCurrentAlbumUri:Landroid/net/Uri;

    .line 70
    new-instance v5, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    invoke-direct {v5}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    .line 73
    sget v5, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    iput v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mDefaultAlbumResId:I

    .line 170
    new-instance v5, Landroid/os/Handler;

    new-instance v6, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)V

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mViewUpdateHandler:Landroid/os/Handler;

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mContext:Landroid/content/Context;

    .line 78
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 79
    const v5, 0x7f1201a9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumArt:Landroid/widget/ImageView;

    .line 80
    const v5, 0x7f120100

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .line 81
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .line 82
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBlurBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    const v5, 0x7f12025a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mRadioLyricTagView:Landroid/view/View;

    .line 85
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    const v5, 0x7f1201d2

    .line 86
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v1, p1, v5, v6}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 89
    .local v1, "coverTagBuilder":Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;
    const v5, 0x7f1204ab

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "privateStub":Landroid/view/View;
    instance-of v5, v3, Landroid/view/ViewStub;

    if-eqz v5, :cond_0

    .line 91
    check-cast v3, Landroid/view/ViewStub;

    .end local v3    # "privateStub":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 93
    :cond_0
    const v5, 0x7f1201d3

    .line 94
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v8, v6, v7

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->addTag(Landroid/view/View;[I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .line 96
    const v5, 0x7f1201d5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->addTag(Landroid/view/View;[I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .line 99
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v5, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 100
    const v5, 0x7f120256

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "albumRoot":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 103
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/UiUtils;->hasKeyboardCover(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d031d

    .line 105
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 106
    .local v4, "size":I
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .end local v4    # "size":I
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->setTagPositionController(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .line 111
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->build()Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumCoverTagsUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    .line 112
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->initGestureInternal(Landroid/app/Activity;)V

    .line 113
    return-void

    .line 96
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mCurrentAlbumUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->covertAlbumArt(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mDefaultAlbumResId:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->updateAlbumArt(IJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mRadioLyricTagView:Landroid/view/View;

    return-object v0
.end method

.method private covertAlbumArt(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumArtConverter:Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumArtConverter:Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;->convertAlbumArt(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private initGestureInternal(Landroid/app/Activity;)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 153
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$1;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;Landroid/app/Activity;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 162
    .local v0, "detector":Landroid/view/GestureDetector;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumArt:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$2;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    return-void
.end method

.method private updateAlbumArt(IJ)V
    .locals 4
    .param p1, "cpAttrs"    # I
    .param p2, "albumId"    # J

    .prologue
    .line 219
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 220
    const v0, 0x7f0d0061

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    .line 221
    invoke-static {p1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mViewUpdateHandler:Landroid/os/Handler;

    .line 222
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v0, "SMUSIC-LockPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAlbumArt albumId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumArt:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mDefaultAlbumResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mBlurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "o"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 129
    return-void
.end method

.method public getAlbumView()Landroid/view/View;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 301
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 8
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 259
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v1, v4

    .line 260
    .local v1, "cpAttrs":I
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 261
    .local v6, "albumId":J
    invoke-static {v1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mCurrentAlbumUri:Landroid/net/Uri;

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mViewUpdateHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$4;

    invoke-direct {v4, p0, v1, v6, v7}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$4;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;IJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    .line 271
    .local v2, "mediaId":J
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mRadioLyricTagView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$5;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)V

    .line 286
    invoke-static {p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsExtra;->convertToExtra(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;

    move-result-object v5

    .line 273
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getLyrics(IJLcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 288
    .end local v2    # "mediaId":J
    :cond_0
    return-void
.end method

.method public onPauseCalled()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 292
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
    .line 297
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onStartCalled()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumCoverTagsUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->onStartCalled()V

    .line 237
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumCoverTagsUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->onStopCalled()V

    .line 250
    return-void
.end method

.method public setAlbumArtConverter(Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;)V
    .locals 0
    .param p1, "converter"    # Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumArtConverter:Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;

    .line 144
    return-void
.end method

.method public setAlbumClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mRadioLyricTagView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method

.method setAlbumTagEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumCoverTagsUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->attach()V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mRadioLyricTagView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mAlbumCoverTagsUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->detach()V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mRadioLyricTagView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDefaultAlbumResource(I)V
    .locals 0
    .param p1, "albumResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 138
    iput p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->mDefaultAlbumResId:I

    .line 139
    return-void
.end method
