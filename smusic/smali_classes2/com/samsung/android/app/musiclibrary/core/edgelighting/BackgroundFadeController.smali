.class public final Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
.super Ljava/lang/Object;
.source "BackgroundFadeController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;
    }
.end annotation


# static fields
.field private static final FADE_ANIMATION_DURATION:I = 0x10a

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_DISABLE_EDGE_ANIMATION:I = 0x1

.field private static final sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

.field private static sEdgeAnimationDisabled:Z

.field private static sIsInMultiWindow:Z

.field private static final sUiHandler:Landroid/os/Handler;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAlphaMask:Landroid/widget/ImageView;

.field private final mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mEdgeLightingChangeObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private mEdgeLightingEnabled:Z

.field private mIsFirstMeta:Z

.field private mIsPlaying:Z

.field private final mIsSupportMenu:Z

.field private final mNonPlayingColor:I

.field private final mPlayingColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->LOG_TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$1;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$1;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sUiHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    invoke-direct {v0}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    .line 83
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->setStrokeAlpha(F)V

    .line 84
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->setRotateDuration(J)V

    .line 85
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mIsFirstMeta:Z

    .line 260
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mEdgeLightingChangeObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 90
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->access$200(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mActivity:Landroid/app/Activity;

    .line 91
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->access$300(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    .line 92
    .local v0, "coreMediaChangeObservable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->access$400(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mAlphaMask:Landroid/widget/ImageView;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->updateEdgeAnimationState()V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mAlphaMask:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->access$500(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mNonPlayingColor:I

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mActivity:Landroid/app/Activity;

    .line 97
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->access$600(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mPlayingColor:I

    .line 98
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 99
    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 106
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->access$700(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mIsSupportMenu:Z

    .line 107
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mIsFirstMeta:Z

    .line 108
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sAppEdgeEffectInfo:Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mActivity:Landroid/app/Activity;

    .line 109
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->access$800(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 108
    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->setStrokeWidth(F)V

    .line 110
    return-void

    .line 102
    :cond_0
    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mNonPlayingColor:I

    .line 103
    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mPlayingColor:I

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;)V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 35
    sput-boolean p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sEdgeAnimationDisabled:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mEdgeLightingEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->updateFadeState(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mAlphaMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static disableEdgeAnimation(Z)V
    .locals 4
    .param p0, "disabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    if-eqz p0, :cond_1

    .line 205
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sEdgeAnimationDisabled:Z

    if-eqz v0, :cond_0

    .line 207
    sput-boolean v2, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sEdgeAnimationDisabled:Z

    .line 208
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationDisable;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationDisable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sendEdgeAnimationState(Landroid/os/Parcelable;)V

    .line 209
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "send enable message"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEdgeAnimationState()V
    .locals 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    .line 114
    .local v0, "curMultiWindow":Z
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sIsInMultiWindow:Z

    if-eq v1, v0, :cond_0

    .line 115
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sIsInMultiWindow:Z

    .line 116
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;

    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->sIsInMultiWindow:Z

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationState;-><init>(Z)V

    .line 117
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sendEdgeAnimationState(Landroid/os/Parcelable;)V

    .line 119
    :cond_0
    return-void
.end method

.method private updateFadeState(ZZ)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 126
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFadeState() called with: enabled = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], animation = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mEdgeLightingEnabled:Z

    if-nez v5, :cond_0

    .line 130
    const/4 p1, 0x0

    .line 131
    const/4 p2, 0x0

    .line 137
    :cond_0
    if-eqz p1, :cond_1

    .line 138
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mNonPlayingColor:I

    .line 139
    .local v4, "startColor":I
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mPlayingColor:I

    .line 144
    .local v3, "endColor":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mAlphaMask:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 146
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    instance-of v5, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_2

    .line 148
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 154
    .local v1, "color":Landroid/graphics/drawable/ColorDrawable;
    :goto_1
    if-eqz p2, :cond_3

    .line 155
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    aput v3, v5, v6

    .line 156
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x10a

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 157
    .local v0, "alphaAnimation":Landroid/animation/ValueAnimator;
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$2;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;Landroid/graphics/drawable/ColorDrawable;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 172
    .end local v0    # "alphaAnimation":Landroid/animation/ValueAnimator;
    :goto_2
    return-void

    .line 141
    .end local v1    # "color":Landroid/graphics/drawable/ColorDrawable;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "endColor":I
    .end local v4    # "startColor":I
    :cond_1
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mPlayingColor:I

    .line 142
    .restart local v4    # "startColor":I
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mNonPlayingColor:I

    .restart local v3    # "endColor":I
    goto :goto_0

    .line 151
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 152
    .restart local v1    # "color":Landroid/graphics/drawable/ColorDrawable;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mAlphaMask:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 170
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mAlphaMask:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->disableEdgeAnimation(Z)V

    .line 177
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mIsSupportMenu:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mEdgeLightingChangeObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "edge_lighting"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 181
    :cond_0
    return-void
.end method

.method public onDestroyCalled()V
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->disableEdgeAnimation(Z)V

    .line 221
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mIsSupportMenu:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mEdgeLightingChangeObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "edge_lighting"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 225
    :cond_0
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 258
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 229
    return-void
.end method

.method public onPauseCalled()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mIsFirstMeta:Z

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->updateEdgeAnimationState()V

    .line 199
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->disableEdgeAnimation(Z)V

    .line 200
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 5
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    .line 235
    .local v0, "isPlaying":Z
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mIsFirstMeta:Z

    if-eqz v1, :cond_1

    .line 236
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mIsFirstMeta:Z

    .line 237
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "edge_lighting"

    .line 238
    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mEdgeLightingEnabled:Z

    .line 239
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->updateFadeState(ZZ)V

    .line 240
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mIsPlaying:Z

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mIsPlaying:Z

    if-eq v1, v0, :cond_0

    .line 243
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mIsPlaying:Z

    .line 244
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->updateFadeState(ZZ)V

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
    .line 253
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 191
    .local v0, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->updateFadeState(ZZ)V

    .line 192
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->disableEdgeAnimation(Z)V

    .line 193
    return-void
.end method

.method public onStartCalled()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->disableEdgeAnimation(Z)V

    .line 186
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->disableEdgeAnimation(Z)V

    .line 216
    return-void
.end method
