.class public Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;
.super Ljava/lang/Object;
.source "SmartStationCreateAnimation.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/animation/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmartStationCreateAnimation"


# instance fields
.field private mAnimationSetEndListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimator:Landroid/animation/Animator;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mBannerFrameReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCreateConditionWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;",
            ">;"
        }
    .end annotation
.end field

.field private mDisappearListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mGlowScaleAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mIsStarted:Z

.field private final mLightFrameReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLightGlowReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedBackgroundListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mLoadingSpinListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mPressBackgroundReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPressBounceListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStartAnimator:Landroid/animation/Animator;

.field private mTransitionXListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mTransitionYListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mWheelColorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mWheelCoverReference:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bannerFrame"    # Landroid/view/View;
    .param p3, "lightGlow"    # Landroid/view/View;
    .param p4, "lightFrame"    # Landroid/view/View;
    .param p5, "pressBackground"    # Landroid/view/View;
    .param p6, "wheelCover"    # Landroid/view/View;
    .param p7, "createCondition"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$1;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 454
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$10;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mPressBounceListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 466
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$11;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mGlowScaleAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 478
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$12;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLoadingSpinListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 489
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$13;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLoadedBackgroundListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 500
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$14;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mTransitionXListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 511
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$15;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mTransitionYListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 522
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$16;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mDisappearListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 533
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$17;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mWheelColorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mCreateConditionWeakReference:Ljava/lang/ref/WeakReference;

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mBannerFrameReference:Ljava/lang/ref/WeakReference;

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLightGlowReference:Ljava/lang/ref/WeakReference;

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLightFrameReference:Ljava/lang/ref/WeakReference;

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mPressBackgroundReference:Ljava/lang/ref/WeakReference;

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mWheelCoverReference:Ljava/lang/ref/WeakReference;

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->createAnimations()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mStartAnimator:Landroid/animation/Animator;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mStartAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimator:Landroid/animation/Animator;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mIsStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mCreateConditionWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimationSetEndListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLightGlowReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mWheelCoverReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mBannerFrameReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLightFrameReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mPressBackgroundReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private createAnimations()Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->createPressAnimation()Landroid/animation/Animator;

    move-result-object v2

    .line 102
    .local v2, "press":Landroid/animation/Animator;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->createWheelColorAnimation()Landroid/animation/Animator;

    move-result-object v4

    .line 103
    .local v4, "wheelColor":Landroid/animation/Animator;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->createBannerTransitionAnimation()Landroid/animation/Animator;

    move-result-object v3

    .line 104
    .local v3, "transition":Landroid/animation/Animator;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->createLoadingAnimation()Landroid/animation/Animator;

    move-result-object v0

    .line 105
    .local v0, "loading":Landroid/animation/Animator;
    new-instance v5, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$2;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$2;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;Landroid/animation/Animator;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->createLoadingCompletedAnimation(Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object v1

    .line 113
    .local v1, "loadingDone":Landroid/animation/Animator;
    new-instance v5, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$3;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$3;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;Landroid/animation/Animator;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 124
    new-instance v5, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$4;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$4;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;Landroid/animation/Animator;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    new-instance v5, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$5;

    invoke-direct {v5, p0, v4}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$5;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;Landroid/animation/Animator;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    new-instance v5, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$6;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    return-object v2
.end method

.method private createBannerTransitionAnimation()Landroid/animation/Animator;
    .locals 25

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "window"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/WindowManager;

    .line 363
    .local v21, "wm":Landroid/view/WindowManager;
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    .line 364
    .local v20, "windowSize":Landroid/graphics/Point;
    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 365
    .local v9, "display":Landroid/view/Display;
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mBannerFrameReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 368
    .local v3, "banner":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mWheelCoverReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 369
    .local v14, "wheel":Landroid/view/View;
    const/4 v10, 0x0

    .line 370
    .local v10, "targetTransitionX":I
    const/4 v11, 0x0

    .line 372
    .local v11, "targetTransitionY":I
    if-eqz v3, :cond_0

    if-eqz v14, :cond_0

    .line 373
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v6, v0, [I

    .line 374
    .local v6, "bannerLoc":[I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 376
    .local v17, "wheelLoc":[I
    invoke-virtual {v3, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 377
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 378
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 381
    .local v18, "wheelParent":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0d0056

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 382
    .local v19, "wheelSize":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 384
    .local v7, "bannerSize":I
    const/16 v22, 0x0

    aget v22, v6, v22

    div-int/lit8 v23, v7, 0x2

    add-int v4, v22, v23

    .line 385
    .local v4, "bannerCenterX":I
    const/16 v22, 0x1

    aget v22, v6, v22

    div-int/lit8 v23, v7, 0x2

    add-int v5, v22, v23

    .line 388
    .local v5, "bannerCenterY":I
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    div-int/lit8 v15, v22, 0x2

    .line 390
    .local v15, "wheelCenterX":I
    const/16 v22, 0x1

    aget v22, v17, v22

    div-int/lit8 v23, v19, 0x2

    add-int v16, v22, v23

    .line 392
    .local v16, "wheelCenterY":I
    sub-int v10, v15, v4

    .line 393
    sub-int v11, v16, v5

    .line 396
    .end local v4    # "bannerCenterX":I
    .end local v5    # "bannerCenterY":I
    .end local v6    # "bannerLoc":[I
    .end local v7    # "bannerSize":I
    .end local v15    # "wheelCenterX":I
    .end local v16    # "wheelCenterY":I
    .end local v17    # "wheelLoc":[I
    .end local v18    # "wheelParent":Landroid/view/View;
    .end local v19    # "wheelSize":I
    :cond_0
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v22, v23

    const/16 v23, 0x1

    aput v10, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 397
    .local v12, "transitionX":Landroid/animation/ValueAnimator;
    const-wide/16 v22, 0x1f4

    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 398
    invoke-static {}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createSineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mTransitionXListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 401
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v22, v23

    const/16 v23, 0x1

    aput v11, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 402
    .local v13, "transitionY":Landroid/animation/ValueAnimator;
    const-wide/16 v22, 0x1f4

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 403
    invoke-static {}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createSineOut80()Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mTransitionYListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 406
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    invoke-static/range {v22 .. v22}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 407
    .local v8, "disappear":Landroid/animation/ValueAnimator;
    const-wide/16 v22, 0x190

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 408
    const-wide/16 v22, 0x64

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 409
    invoke-static {}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createSineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mDisappearListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 412
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 413
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v12, v22, v23

    const/16 v23, 0x1

    aput-object v13, v22, v23

    const/16 v23, 0x2

    aput-object v8, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 414
    new-instance v22, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$8;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 425
    return-object v2

    .line 406
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createLoadingAnimation()Landroid/animation/Animator;
    .locals 9

    .prologue
    const v8, 0x3f333333    # 0.7f

    const/4 v7, 0x2

    .line 299
    new-array v4, v7, [I

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 300
    .local v3, "loadingSpinner":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 301
    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v8, v4, v5, v6}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createCustom(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLoadingSpinListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 304
    new-array v4, v7, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 305
    .local v1, "loadingGlowAni":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 306
    const-wide/16 v4, 0x320

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 307
    const v4, 0x3eb33333    # 0.35f

    const v5, 0x3e428f5c    # 0.19f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v8, v6}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createCustom(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 308
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mGlowScaleAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 310
    new-array v4, v7, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 311
    .local v2, "loadingGlowAni2":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x4b0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 312
    const-wide/16 v4, 0x708

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 313
    invoke-static {}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createSineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 314
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mGlowScaleAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 316
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 317
    .local v0, "loadingAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 318
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 319
    return-object v0

    .line 299
    :array_0
    .array-data 4
        0x0
        0x168
    .end array-data

    .line 304
    :array_1
    .array-data 4
        0x3f266666    # 0.65f
        0x3f99999a    # 1.2f
    .end array-data

    .line 310
    :array_2
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f266666    # 0.65f
    .end array-data
.end method

.method private createLoadingCompletedAnimation(Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 9
    .param p1, "alphaCompletedListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v0, "animatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 325
    .local v3, "loadingSpinner":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 326
    const v5, 0x3f333333    # 0.7f

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3e99999a    # 0.3f

    const v8, 0x3f4ccccd    # 0.8f

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createCustom(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLoadingSpinListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 328
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 331
    .local v1, "backgroundAlpha":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x258

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 332
    const-wide/16 v6, 0x258

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 333
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 334
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLoadedBackgroundListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 335
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 336
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 339
    .local v2, "glowScale":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x14d

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 340
    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const v7, 0x3f2b851f    # 0.67f

    const v8, 0x3ed1eb85    # 0.41f

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createCustom(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mGlowScaleAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 342
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 345
    const-wide/16 v6, 0x14d

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 346
    const-wide/16 v6, 0x129

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 347
    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f9ae148    # 1.21f

    const v7, 0x3f2b851f    # 0.67f

    const v8, -0x4010a3d7    # -1.87f

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createCustom(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_4

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 350
    const-wide/16 v6, 0x276

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 351
    const-wide/16 v6, 0x23a

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 352
    invoke-static {}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createSineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 353
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 356
    .local v4, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 357
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    return-object v4

    .line 324
    :array_0
    .array-data 4
        0x0
        0x168
    .end array-data

    .line 330
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 338
    :array_2
    .array-data 4
        0x3f266666    # 0.65f
        0x3f147ae1    # 0.58f
    .end array-data

    .line 344
    :array_3
    .array-data 4
        0x3f147ae1    # 0.58f
        0x3efae148    # 0.49f
    .end array-data

    .line 349
    :array_4
    .array-data 4
        0x3efae148    # 0.49f
        0x0
    .end array-data
.end method

.method private createPressAnimation()Landroid/animation/Animator;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const-wide/16 v6, 0xa7

    .line 257
    new-array v5, v8, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 258
    .local v2, "pressBounceUp":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 259
    invoke-static {}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createSineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mPressBounceListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 263
    .local v1, "pressBounceDown":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 264
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 265
    invoke-static {}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createSineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mPressBounceListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    new-array v5, v8, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 269
    .local v4, "pressGlowUp":Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    invoke-static {}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createSineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mGlowScaleAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 273
    new-array v5, v8, [F

    fill-array-data v5, :array_3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 274
    .local v3, "pressGlowDown":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 275
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 276
    invoke-static {}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createSineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mGlowScaleAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 279
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 280
    .local v0, "pressAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    aput-object v4, v5, v8

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 281
    new-instance v5, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$7;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    return-object v0

    .line 257
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f88f5c3    # 1.07f
    .end array-data

    .line 262
    :array_1
    .array-data 4
        0x3f88f5c3    # 1.07f
        0x3f800000    # 1.0f
    .end array-data

    .line 268
    :array_2
    .array-data 4
        0x0
        0x3fb33333    # 1.4f
    .end array-data

    .line 273
    :array_3
    .array-data 4
        0x3fb33333    # 1.4f
        0x3f266666    # 0.65f
    .end array-data
.end method

.method private createWheelColorAnimation()Landroid/animation/Animator;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 429
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 430
    .local v0, "wheelColor":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 431
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 432
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 433
    const v1, 0x3f1c28f6    # 0.61f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/InterpolatorUtil;->createCustom(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 434
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$9;-><init>(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 449
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mWheelColorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 450
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 451
    return-object v0

    .line 429
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 227
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mBannerFrameReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 228
    .local v0, "banner":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 229
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 232
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLightFrameReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 233
    .local v2, "lightFrame":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {v2, v6}, Landroid/view/View;->setRotation(F)V

    .line 237
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mPressBackgroundReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 238
    .local v4, "pressBackground":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 239
    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 242
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mWheelCoverReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 243
    .local v1, "fakeWheel":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 244
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 245
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLightGlowReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 249
    .local v3, "lightGlow":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 250
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 251
    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 252
    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    .line 254
    :cond_4
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimationSetEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 184
    return-void
.end method

.method public getAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    .line 217
    const-string v0, "SmartStationCreateAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRunning. - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimator:Landroid/animation/Animator;

    .line 218
    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isStarted - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsStarted - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mIsStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mIsStarted:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mIsStarted:Z

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->initViews()V

    .line 213
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mIsStarted:Z

    .line 190
    const-string v1, "SmartStationCreateAnimation"

    const-string/jumbo v2, "start. not running state"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mLightFrameReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 192
    .local v0, "lightFrame":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 193
    const/high16 v1, -0x3dcc0000    # -45.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mStartAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 199
    .end local v0    # "lightFrame":Landroid/view/View;
    :goto_0
    return-void

    .line 197
    :cond_1
    const-string v1, "SmartStationCreateAnimation"

    const-string/jumbo v2, "start. already running. so skip it"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;->reset()V

    .line 207
    return-void
.end method
