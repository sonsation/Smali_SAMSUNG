.class public Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;
.super Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.source "ServiceBoxMusicPage.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;,
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;,
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;,
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;
    }
.end annotation


# static fields
.field private static final INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlbumHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mAlbumSwitchListener:Landroid/view/View$OnClickListener;

.field private mControllerContainer:Landroid/view/View;

.field private mIsCoverShowing:Z

.field private mIsViewInitializing:Z

.field private mLyricsBtn:Landroid/view/View;

.field private mLyricsHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mMetaData:Landroid/media/MediaMetadata;

.field private mMusicAppNameTextView:Landroid/widget/TextView;

.field private mMusicArtistTextView:Landroid/widget/TextView;

.field private mMusicCoverContainer:Landroid/view/View;

.field private mMusicCoverView:Landroid/widget/ImageView;

.field private mMusicHolder:Landroid/widget/FrameLayout;

.field private mMusicLyricsView:Landroid/widget/TextView;

.field private mMusicTitleTextView:Landroid/widget/TextView;

.field private mNextBtn:Landroid/widget/ImageButton;

.field private mPauseBtn:Landroid/widget/ImageButton;

.field private mPauseBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mPlayBtn:Landroid/widget/ImageButton;

.field private mPlayBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mPrevBtn:Landroid/widget/ImageButton;

.field private mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsAnimating:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/media/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->getKeyguardStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->dismissServiceBox()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->playAlbumAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->showServiceBox()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "android.media.metadata.ART"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 65
    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    .line 96
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    .line 438
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    .line 132
    return-void
.end method

.method private getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    const/4 v3, 0x0

    .line 448
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 449
    sget-object v2, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 450
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 451
    return-object v0

    .line 448
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v3
.end method

.method private playAlbumAnimation(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0xfa

    const-wide/16 v4, 0x0

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 415
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 416
    :cond_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 421
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 423
    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 423
    const/4 v1, 0x0

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 424
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    .line 414
    :goto_0
    return-void

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 430
    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    .line 429
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 430
    const/4 v1, 0x0

    .line 429
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 429
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 431
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    goto :goto_0
.end method

.method private playControllerAnimation(ZLandroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 10
    .param p1, "immediately"    # Z
    .param p2, "toShow"    # Landroid/view/View;
    .param p3, "toHide"    # Landroid/view/View;
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playControllerAnimation() immediately = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", play showing? = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 321
    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 325
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 327
    if-eqz p1, :cond_3

    .line 328
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 329
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 331
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 332
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 333
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 320
    :goto_1
    return-void

    .line 335
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 336
    sget-object v2, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    .line 335
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 336
    const/4 v2, 0x0

    .line 335
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 337
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 338
    invoke-virtual {p2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 339
    invoke-virtual {p2, v5}, Landroid/view/View;->setScaleY(F)V

    .line 340
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method private updateViewStyleOnWhiteWallpaper()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 458
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v4

    .line 459
    .local v4, "util":Lcom/android/keyguard/util/ViewStyleUtils;
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 460
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 461
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 462
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 464
    sget v5, Lcom/android/keyguard/R$drawable;->lock_music_player_btn_prev_mtrl:I

    sget v6, Lcom/android/keyguard/R$drawable;->lock_music_player_whitebg_btn_prev_mtrl:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 465
    .local v3, "prevDrawable":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/android/keyguard/R$drawable;->lock_music_player_btn_play_mtrl:I

    sget v6, Lcom/android/keyguard/R$drawable;->lock_music_player_whitebg_btn_play_mtrl:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 466
    .local v2, "playDrawable":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/android/keyguard/R$drawable;->lock_music_player_btn_pause_mtrl:I

    sget v6, Lcom/android/keyguard/R$drawable;->lock_music_player_whitebg_btn_pause_mtrl:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 467
    .local v1, "pauseDrawable":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/android/keyguard/R$drawable;->lock_music_player_btn_next_mtrl:I

    sget v6, Lcom/android/keyguard/R$drawable;->lock_music_player_whitebg_btn_next_mtrl:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 469
    .local v0, "nextDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v5, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    return-void
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    .line 274
    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->clear()V

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->requestCacheData(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    .line 271
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "clear()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    .line 161
    iput-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 162
    const-string/jumbo v1, ""

    .line 164
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->isOOBETextNeed()Z

    move-result v0

    .line 165
    .local v0, "showOOBEText":Z
    if-eqz v0, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/keyguard/R$string;->servicebox_music_play_first:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 170
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 178
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 179
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 183
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 187
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 191
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    sget v3, Lcom/android/keyguard/R$drawable;->lock_music_player_img_default_cover:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    :cond_6
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->playControllerAnimation(ZLandroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    return-void

    :cond_7
    move v2, v3

    .line 170
    goto :goto_0

    .line 178
    :cond_8
    const/4 v3, 0x1

    goto :goto_1
.end method

.method protected getContentsView(I)Landroid/view/View;
    .locals 3
    .param p1, "pageType"    # I

    .prologue
    .line 257
    sget v0, Lcom/android/keyguard/R$layout;->servicebox_music_page_small:I

    .line 258
    .local v0, "layoutId":I
    packed-switch p1, :pswitch_data_0

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 260
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$layout;->servicebox_music_page_big:I

    goto :goto_0

    .line 263
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$layout;->servicebox_music_page_expand:I

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "servicebox_music"

    return-object v0
.end method

.method protected getTransitionOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 1
    .param p1, "isBigView"    # Z

    .prologue
    .line 228
    const/16 v0, 0x24

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateMoveOption(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x55

    .line 283
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_appinfo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    .line 284
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    .line 285
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_artist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    .line 286
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    .line 287
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_cover_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    .line 288
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_lyrics_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/view/View;

    .line 289
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_lyrics:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    .line 290
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_prev_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    .line 291
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_play_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    .line 292
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_pause_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    .line 293
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_next_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    .line 294
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_controller_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    .line 296
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 297
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 298
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 299
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/16 v3, 0x58

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/16 v3, 0x57

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->updateViewStyleOnWhiteWallpaper()V

    .line 282
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->addCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V

    .line 238
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->removeAllCacheData()V

    .line 232
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->removeCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V

    .line 244
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    .line 140
    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    .line 137
    return-void
.end method

.method public refreshViews()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :cond_0
    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 5
    .param p1, "lyrics"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 388
    .local v0, "isEmptyLyrics":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLyrics() lyrics? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "lyrics":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 395
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/view/View;

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 399
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    move-object v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    if-nez v1, :cond_4

    .line 403
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->playAlbumAnimation(Landroid/view/View;)V

    .line 385
    :cond_4
    return-void

    .line 395
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 399
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    goto :goto_1
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 7
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    const/4 v6, 0x0

    .line 348
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    .line 350
    const-string/jumbo v2, ""

    .line 351
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 352
    .local v0, "artist":Ljava/lang/String;
    const/4 v1, 0x0

    .line 354
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMetadata : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "android.media.metadata.TITLE"

    invoke-virtual {p1, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 356
    const-string/jumbo v5, " - "

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 356
    const-string/jumbo v5, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string/jumbo v3, "android.media.metadata.TITLE"

    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    const-string/jumbo v3, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 365
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 370
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 374
    if-eqz v1, :cond_4

    .line 375
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 381
    :cond_2
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->setLyrics(Ljava/lang/String;)V

    .line 347
    return-void

    .line 362
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "setMetadata : null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    sget v4, Lcom/android/keyguard/R$drawable;->lock_music_player_img_default_cover:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 5
    .param p1, "playbackState"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 199
    if-nez p1, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    .line 202
    .local v0, "lastState":I
    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPlaybackState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 207
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->playControllerAnimation(ZLandroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_2
    return-void

    .line 201
    .end local v0    # "lastState":I
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "lastState":I
    goto :goto_0

    .line 209
    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPauseBtnHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->playControllerAnimation(ZLandroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1
.end method

.method public showExternalActivity()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public updateChildViewsLook()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->updateViewStyleOnWhiteWallpaper()V

    .line 149
    return-void
.end method
