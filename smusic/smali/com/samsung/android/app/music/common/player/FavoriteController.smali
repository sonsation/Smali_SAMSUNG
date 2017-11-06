.class public final Lcom/samsung/android/app/music/common/player/FavoriteController;
.super Ljava/lang/Object;
.source "FavoriteController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;,
        Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;,
        Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;
    }
.end annotation


# static fields
.field private static final UNDEFINED_COLOR:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAudioId:J

.field private final mContext:Landroid/content/Context;

.field private mCpAttrs:I

.field private final mFavoriteButton:Landroid/view/View;

.field private final mFavoriteIcon:Landroid/widget/ImageView;

.field private mFavoriteMaximumReachedCallback:Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;

.field private mIconFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mIconScaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private mIconScaleUpAnimator:Landroid/animation/ObjectAnimator;

.field private mIsEnabledAnimation:Z

.field private mIsFavorite:Z

.field private mOnFavoriteIconClickListener:Landroid/view/View$OnClickListener;

.field private mPlayerQueueLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

.field private mPrimaryColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorkerThreadHandler:Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/music/common/player/BackgroundWorker;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "coreMediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p4, "backgroundWorker"    # Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mAudioId:J

    .line 66
    iput v3, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mPrimaryColor:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIsEnabledAnimation:Z

    .line 77
    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mOnFavoriteIconClickListener:Landroid/view/View$OnClickListener;

    .line 79
    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteMaximumReachedCallback:Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;

    .line 359
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;-><init>(Lcom/samsung/android/app/music/common/player/FavoriteController;Lcom/samsung/android/app/music/common/player/FavoriteController$1;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mUiHandler:Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mActivity:Landroid/app/Activity;

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;

    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/player/BackgroundWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;-><init>(Lcom/samsung/android/app/music/common/player/FavoriteController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mWorkerThreadHandler:Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;

    .line 97
    const v0, 0x7f1201ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/common/player/FavoriteController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/FavoriteController$1;-><init>(Lcom/samsung/android/app/music/common/player/FavoriteController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    const v1, 0x7f1201eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 109
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/player/FavoriteController;->updateFavoriteStatus(Z)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setAirView(Landroid/content/Context;)V

    .line 111
    invoke-interface {p3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mOnFavoriteIconClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/FavoriteController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIsFavorite:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/player/FavoriteController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->updateFavoriteIcon(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/player/FavoriteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIsFavorite:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/FavoriteController;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mAudioId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/FavoriteController;)Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteMaximumReachedCallback:Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/FavoriteController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;

    .prologue
    .line 45
    iget v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mCpAttrs:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/FavoriteController;Landroid/content/Context;Landroid/app/FragmentManager;JZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/app/FragmentManager;
    .param p3, "x3"    # J
    .param p5, "x4"    # Z

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/common/player/FavoriteController;->toggleMilkFavorites(Landroid/content/Context;Landroid/app/FragmentManager;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/player/FavoriteController;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mPlayerQueueLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    return-object v0
.end method

.method private isSupportFavorite(I)Z
    .locals 1
    .param p1, "cpAttrs"    # I

    .prologue
    .line 174
    const v0, 0x20004

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAirView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 131
    :cond_0
    return-void
.end method

.method private setIconColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz p1, :cond_0

    .line 196
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 202
    return-void
.end method

.method private startIconAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x3fcccccd    # 1.6f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIconFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0xa6

    const/4 v3, 0x0

    .line 158
    invoke-static {v0, v1, v4, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIconFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIconScaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    const/16 v1, 0xa6

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-static {v0, v4, v5, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIconScaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIconScaleDownAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    const/16 v1, 0x320

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->ELASTIC_90:Landroid/view/animation/Interpolator;

    .line 166
    invoke-static {v0, v5, v4, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIconScaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 168
    :cond_2
    new-array v0, v8, [Landroid/animation/Animator;

    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIconFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIconScaleUpAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    .line 169
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->startAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIconScaleDownAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v7

    .line 168
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->startAnimatorSequentially([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 171
    return-void
.end method

.method private toggleMilkFavorites(Landroid/content/Context;Landroid/app/FragmentManager;JZ)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/app/FragmentManager;
    .param p3, "audioId"    # J
    .param p5, "isFavorite"    # Z

    .prologue
    .line 219
    new-instance v1, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 220
    invoke-virtual {v1, p3, p4, p5}, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->toggleFavorite(JZ)Z

    move-result v0

    .line 221
    .local v0, "isSuccess":Z
    if-nez v0, :cond_0

    .line 225
    .end local p5    # "isFavorite":Z
    :goto_0
    return p5

    .line 224
    .restart local p5    # "isFavorite":Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    if-nez p5, :cond_1

    const/4 v1, 0x1

    :goto_1
    move p5, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateFavoriteIcon(Z)V
    .locals 5
    .param p1, "animation"    # Z

    .prologue
    const v4, 0x7f0a01e4

    .line 134
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIsFavorite:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 135
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIsFavorite:Z

    if-eqz v1, :cond_2

    .line 136
    iget v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mPrimaryColor:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setIconColor(I)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->startIconAnimation()V

    .line 144
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIsFavorite:Z

    if-eqz v1, :cond_3

    const v0, 0x7f0a018d

    .line 145
    .local v0, "string":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mContext:Landroid/content/Context;

    .line 146
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->invalidateAirView(Landroid/view/View;)V

    .line 153
    :cond_1
    return-void

    .line 141
    .end local v0    # "string":I
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setIconColor(I)V

    goto :goto_0

    .line 144
    :cond_3
    const v0, 0x7f0a013f

    goto :goto_1
.end method

.method private updateFavoriteStatus(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mWorkerThreadHandler:Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->updateFavoriteStatus(Z)V

    .line 191
    return-void
.end method


# virtual methods
.method public isFavorite()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIsFavorite:Z

    return v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 250
    const-string v0, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIsEnabledAnimation:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->updateFavoriteStatus(Z)V

    .line 253
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mAudioId:J

    .line 231
    iput v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mPrimaryColor:I

    .line 232
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mCpAttrs:I

    .line 233
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    iget v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mCpAttrs:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->isSupportFavorite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->updateFavoriteStatus(Z)V

    .line 235
    return-void

    .line 233
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 240
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
    .line 246
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mWorkerThreadHandler:Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mIsEnabledAnimation:Z

    .line 187
    return-void
.end method

.method public setFavoriteMaximumReachedCallback(Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteMaximumReachedCallback:Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;

    .line 116
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 124
    return-void
.end method

.method public setOnFavoriteIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mOnFavoriteIconClickListener:Landroid/view/View$OnClickListener;

    .line 120
    return-void
.end method

.method public setPlayerQueueLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;)V
    .locals 0
    .param p1, "playerQueueLogger"    # Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mPlayerQueueLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    .line 85
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 205
    iput p1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mPrimaryColor:I

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iget v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mPrimaryColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setIconColor(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public toggleFavorite()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController;->mWorkerThreadHandler:Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->toggleFavoriteButton()V

    .line 183
    return-void
.end method
