.class public Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;
.super Ljava/lang/Object;
.source "SmartStationLightGlowAnimation.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/animation/Animatable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmartStationLightGlowAnimation"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mGlowScaleAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mIsStarted:Z

.field private final mLightGlowReferenece:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "lightGlow"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mIsStarted:Z

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$1;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mGlowScaleAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mLightGlowReferenece:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->createLightGlowAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mAnimator:Landroid/animation/Animator;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;F)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;
    .param p1, "x1"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->setLightGlowScale(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mIsStarted:Z

    return v0
.end method

.method private createLightGlowAnimation()Landroid/animation/Animator;
    .locals 10

    .prologue
    const v9, 0x3f3d70a4    # 0.74f

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "lightGlowAniList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 43
    .local v1, "lightGlow":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x190

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    const v3, 0x3f170a3d    # 0.59f

    invoke-static {v3, v8, v9, v7}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createCustom(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mGlowScaleAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 48
    const-wide/16 v4, 0x258

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    invoke-static {}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createSineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-array v3, v6, [F

    fill-array-data v3, :array_2

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 52
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-array v3, v6, [F

    fill-array-data v3, :array_3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 54
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-array v3, v6, [F

    fill-array-data v3, :array_4

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 56
    const v3, 0x3ea8f5c3    # 0.33f

    invoke-static {v3, v8, v9, v7}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createCustom(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-array v3, v6, [F

    fill-array-data v3, :array_5

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 59
    const-wide/16 v4, 0x15e

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    const v3, 0x3f3ae148    # 0.73f

    const v4, 0x3d23d70a    # 0.04f

    const v5, 0x3f2b851f    # 0.67f

    invoke-static {v3, v4, v5, v7}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createCustom(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 64
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 65
    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 66
    return-object v0

    .line 42
    :array_0
    .array-data 4
        0x0
        0x3fc00000    # 1.5f
    .end array-data

    .line 47
    :array_1
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f19999a    # 0.6f
    .end array-data

    .line 51
    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3fc00000    # 1.5f
    .end array-data

    .line 53
    :array_3
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f19999a    # 0.6f
    .end array-data

    .line 55
    :array_4
    .array-data 4
        0x3f19999a    # 0.6f
        0x3fb33333    # 1.4f
    .end array-data

    .line 58
    :array_5
    .array-data 4
        0x3fb33333    # 1.4f
        0x0
    .end array-data
.end method

.method private setLightGlowScale(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mLightGlowReferenece:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 79
    .local v0, "lightGlow":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 81
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mLightGlowReferenece:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 127
    .local v0, "lightGlow":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->setLightGlowScale(F)V

    .line 131
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mIsStarted:Z

    .line 88
    const-string v0, "SmartStationLightGlowAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start animation. running - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation$2;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 113
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mIsStarted:Z

    .line 118
    const-string v0, "SmartStationLightGlowAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop animation. running - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;->reset()V

    .line 122
    return-void
.end method
