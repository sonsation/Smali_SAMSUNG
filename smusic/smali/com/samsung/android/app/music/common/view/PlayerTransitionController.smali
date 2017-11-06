.class public Lcom/samsung/android/app/music/common/view/PlayerTransitionController;
.super Ljava/lang/Object;
.source "PlayerTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/view/PlayerTransitionController$HideAlbumViewHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HIDE_ALBUM_VIEW_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String;

.field private static sIsTransitioning:Z

.field private static sPendingFakeViewArtwork:Landroid/graphics/Bitmap;


# instance fields
.field private final mAlbumView:Landroid/view/View;

.field private mEnterTransition:Landroid/transition/Transition;

.field private final mEnterTransitionListener:Landroid/transition/Transition$TransitionListener;

.field private final mFakeAlbumView:Landroid/widget/ImageView;

.field private mFirstFakeViewUpdate:Z

.field private final mHideAlbumViewHandler:Lcom/samsung/android/app/music/common/view/PlayerTransitionController$HideAlbumViewHandler;

.field private final mViews:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->sIsTransitioning:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7
    .param p1, "playerRootView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v6, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFirstFakeViewUpdate:Z

    .line 251
    new-instance v3, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$1;-><init>(Lcom/samsung/android/app/music/common/view/PlayerTransitionController;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mEnterTransitionListener:Landroid/transition/Transition$TransitionListener;

    .line 61
    const v3, 0x7f1201a9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->asView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mAlbumView:Landroid/view/View;

    .line 62
    const v3, 0x7f1201cf

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFakeAlbumView:Landroid/widget/ImageView;

    .line 64
    const v3, 0x7f120044

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, "prevView":Landroid/view/View;
    const v3, 0x7f120042

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "playView":Landroid/view/View;
    const v3, 0x7f12003d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "nextView":Landroid/view/View;
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFakeAlbumView:Landroid/widget/ImageView;

    aput-object v5, v3, v4

    aput-object v2, v3, v6

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    iput-object v3, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mViews:[Landroid/view/View;

    .line 69
    const-string/jumbo v3, "transition_name_player"

    iget-object v4, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mViews:[Landroid/view/View;

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->setTransitionView(Ljava/lang/String;[Landroid/view/View;)V

    .line 71
    new-instance v3, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$HideAlbumViewHandler;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mAlbumView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$HideAlbumViewHandler;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/common/view/PlayerTransitionController$1;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mHideAlbumViewHandler:Lcom/samsung/android/app/music/common/view/PlayerTransitionController$HideAlbumViewHandler;

    .line 72
    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->sIsTransitioning:Z

    return p0
.end method

.method static synthetic access$200()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->sPendingFakeViewArtwork:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    sput-object p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->sPendingFakeViewArtwork:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/view/PlayerTransitionController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mAlbumView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/view/PlayerTransitionController;)Landroid/transition/Transition;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method private addPlayerTransitionListener(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mEnterTransition:Landroid/transition/Transition;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mEnterTransition:Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mEnterTransitionListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 149
    :cond_0
    return-void
.end method

.method public static isTransitioning()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->sIsTransitioning:Z

    return v0
.end method

.method private setScaledAlbumArt(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFakeAlbumView:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFakeAlbumView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static setTransitioning(Z)V
    .locals 0
    .param p0, "isTransitioning"    # Z

    .prologue
    .line 216
    sput-boolean p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->sIsTransitioning:Z

    .line 217
    return-void
.end method


# virtual methods
.method public setEnterTransitionView(Landroid/view/Window;Z)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "isTransitionEnabled"    # Z

    .prologue
    .line 86
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFakeAlbumView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mAlbumView:Landroid/view/View;

    if-eqz p2, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    if-eqz p2, :cond_0

    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->sIsTransitioning:Z

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->addPlayerTransitionListener(Landroid/transition/Transition;)V

    .line 93
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setExitTransitionView(Landroid/view/Window;Z)V
    .locals 5
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "isTransitionEnabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 106
    sput-boolean v4, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->sIsTransitioning:Z

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mAlbumView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mAlbumView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFakeAlbumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFakeAlbumView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFakeAlbumView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mHideAlbumViewHandler:Lcom/samsung/android/app/music/common/view/PlayerTransitionController$HideAlbumViewHandler;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$HideAlbumViewHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mEnterTransition:Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mEnterTransitionListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 121
    :cond_0
    if-nez p2, :cond_1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mViews:[Landroid/view/View;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->removeTransitionView(Landroid/view/Window;[Landroid/view/View;)V

    .line 124
    :cond_1
    return-void
.end method

.method public showFakeAlbumView()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mAlbumView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFakeAlbumView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFakeAlbumView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public updateFakeAlbumView()V
    .locals 7

    .prologue
    .line 156
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    .line 157
    .local v3, "musicMetadata":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v4, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 158
    .local v2, "cpAttrs":I
    const-string v4, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 159
    .local v0, "albumId":J
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const v4, 0x7f0d0061

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v4

    .line 164
    invoke-static {v2}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFakeAlbumView:Landroid/widget/ImageView;

    sget v6, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    .line 165
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method public updateFakeAlbumView(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 176
    invoke-static {}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFirstFakeViewUpdate:Z

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->mFirstFakeViewUpdate:Z

    .line 181
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->setScaledAlbumArt(Landroid/graphics/Bitmap;)V

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    sput-object p1, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->sPendingFakeViewArtwork:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 186
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->setScaledAlbumArt(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
