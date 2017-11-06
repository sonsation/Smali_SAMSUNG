.class public abstract Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;
.super Landroid/widget/FrameLayout;
.source "BaseMaskImageEffectView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected isDoneRound:Z

.field protected isNeedTopGradient:Z

.field protected mAnimationSet:Landroid/animation/AnimatorSet;

.field protected mAnimator:Landroid/animation/ValueAnimator;

.field protected mBottomLayer:Landroid/widget/ImageView;

.field protected mFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field protected mHandler:Landroid/os/Handler;

.field protected mHeight:I

.field protected mIsAnimating:Z

.field protected mIsTurnOver:Z

.field protected mMainColor:I

.field protected mMainLayer:Landroid/view/View;

.field private mMaskPath:Landroid/graphics/Path;

.field protected mMaxPadding:F

.field protected mNeedOutsideRound:Z

.field private mOneHandSettingObserver:Landroid/database/ContentObserver;

.field protected mPaddingController:F

.field protected mRadius:F

.field protected mRadiusWeight:F

.field protected mRotateDuration:J

.field protected mStrokeAlpha:F

.field protected mStrokeWidth:F

.field protected mTopFG:Landroid/widget/ImageView;

.field protected mTopLayer:Landroid/widget/ImageView;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const-class v0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    .line 45
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaxPadding:F

    .line 46
    iput v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHandler:Landroid/os/Handler;

    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mNeedOutsideRound:Z

    .line 61
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadiusWeight:F

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->isNeedTopGradient:Z

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mIsAnimating:Z

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->isDoneRound:Z

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mIsTurnOver:Z

    .line 73
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRotateDuration:J

    .line 75
    iput v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeAlpha:F

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->thick_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->init()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const-class v0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    .line 45
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaxPadding:F

    .line 46
    iput v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHandler:Landroid/os/Handler;

    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mNeedOutsideRound:Z

    .line 61
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadiusWeight:F

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->isNeedTopGradient:Z

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mIsAnimating:Z

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->isDoneRound:Z

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mIsTurnOver:Z

    .line 73
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRotateDuration:J

    .line 75
    iput v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeAlpha:F

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->thick_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const-class v0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    .line 45
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaxPadding:F

    .line 46
    iput v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHandler:Landroid/os/Handler;

    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mNeedOutsideRound:Z

    .line 61
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadiusWeight:F

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->isNeedTopGradient:Z

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mIsAnimating:Z

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->isDoneRound:Z

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mIsTurnOver:Z

    .line 73
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRotateDuration:J

    .line 75
    iput v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeAlpha:F

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->thick_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const-class v0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    .line 45
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaxPadding:F

    .line 46
    iput v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHandler:Landroid/os/Handler;

    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mNeedOutsideRound:Z

    .line 61
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadiusWeight:F

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->isNeedTopGradient:Z

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mIsAnimating:Z

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->isDoneRound:Z

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mIsTurnOver:Z

    .line 73
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRotateDuration:J

    .line 75
    iput v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeAlpha:F

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->thick_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->init()V

    .line 99
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 103
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v1, Lcom/samsung/android/edgelighting/R$layout;->mask_effect_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    sget v1, Lcom/samsung/android/edgelighting/R$id;->top_layer:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopLayer:Landroid/widget/ImageView;

    .line 106
    sget v1, Lcom/samsung/android/edgelighting/R$id;->bottom_layer:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mBottomLayer:Landroid/widget/ImageView;

    .line 107
    sget v1, Lcom/samsung/android/edgelighting/R$id;->main_layer:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMainLayer:Landroid/view/View;

    .line 108
    sget v1, Lcom/samsung/android/edgelighting/R$id;->topFG:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopFG:Landroid/widget/ImageView;

    .line 110
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopFG:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->setAlpha(F)V

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->initRadiusController()V

    .line 116
    return-void
.end method

.method private initRadiusController()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 456
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "feature":Ljava/lang/String;
    const/high16 v0, 0x40a00000    # 5.0f

    .line 458
    .local v0, "deviceCornerRadius":F
    if-eqz v2, :cond_0

    const-string v4, "cornerR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 459
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "radius":[Ljava/lang/String;
    aget-object v4, v3, v6

    if-eqz v4, :cond_0

    aget-object v4, v3, v6

    const-string v5, "cornerR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v7

    if-eqz v4, :cond_0

    aget-object v4, v3, v7

    .line 461
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 463
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 464
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Device corner Radius  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v3    # "radius":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 471
    const v4, 0x3d23d70a    # 0.04f

    mul-float/2addr v4, v0

    const v5, 0x3d4ccccd    # 0.05f

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadiusWeight:F

    .line 475
    :goto_1
    return-void

    .line 465
    .restart local v3    # "radius":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Not number format : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "radius":[Ljava/lang/String;
    :cond_1
    const v4, 0x3e19999a    # 0.15f

    iput v4, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadiusWeight:F

    goto :goto_1
.end method

.method private registerOneHandSetting()V
    .locals 4

    .prologue
    .line 414
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mOneHandSettingObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$5;-><init>(Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mOneHandSettingObserver:Landroid/database/ContentObserver;

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mOneHandSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    :cond_0
    return-void
.end method

.method private unRegisterOneHandSetting()V
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mOneHandSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 429
    return-void
.end method


# virtual methods
.method public changeRingImageAlpha(FJJ)V
    .locals 4
    .param p1, "target"    # F
    .param p2, "startDelay"    # J
    .param p4, "duration"    # J

    .prologue
    .line 166
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 167
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 168
    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 169
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 170
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->TAG:Ljava/lang/String;

    const-string v2, "dispatchDraw"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    if-nez v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 284
    .local v12, "count":I
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 286
    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    if-le v0, v2, :cond_2

    .line 287
    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadius:F

    .line 293
    :goto_1
    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadius:F

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadiusWeight:F

    mul-float v5, v0, v2

    .line 295
    .local v5, "finalRadius":F
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mNeedOutsideRound:Z

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    int-to-float v3, v2

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v2, v1

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 300
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 302
    .local v13, "resources":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 303
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v6, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 304
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float v7, v0, v1

    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float/2addr v1, v2

    sub-float v8, v0, v1

    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float/2addr v1, v2

    sub-float v9, v0, v1

    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    int-to-float v10, v0

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 313
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 314
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 315
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 289
    .end local v5    # "finalRadius":F
    .end local v13    # "resources":Landroid/content/res/Resources;
    :cond_2
    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadius:F

    goto/16 :goto_1

    .line 298
    .restart local v5    # "finalRadius":F
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    int-to-float v9, v0

    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    int-to-float v10, v0

    sget-object v11, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v7, v1

    move v8, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_2

    .line 305
    .restart local v13    # "resources":Landroid/content/res/Resources;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->isRectangleEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float v7, v0, v1

    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float v8, v0, v1

    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float/2addr v1, v2

    sub-float v9, v0, v1

    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float/2addr v1, v2

    sub-float v10, v0, v1

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_3

    .line 309
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaskPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v6, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    int-to-float v4, v4

    iget v6, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    iget v7, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    goto :goto_3
.end method

.method protected expandViewSize(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 119
    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    .line 121
    .local v1, "tempSize":I
    iget v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    iget v4, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    if-le v3, v4, :cond_0

    .line 122
    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    .line 124
    :cond_0
    int-to-float v3, v1

    const v4, 0x3fa66666    # 1.3f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 126
    .local v0, "size":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 128
    .local v2, "viewParam":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 129
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void
.end method

.method public abstract hide()V
.end method

.method public hidePadding(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 207
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 208
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$2;-><init>(Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 215
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 216
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 217
    return-void
.end method

.method public isRectangleEdgeEffect()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "any_screen_running"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 393
    .local v1, "oneHand":I
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_STATUSBAR_SIDE_PADDING"

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 395
    .local v0, "hasSidePadding":I
    if-eq v1, v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v2, v3

    .line 398
    :cond_1
    return v2
.end method

.method public isRotateAnimating()Z
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->TAG:Ljava/lang/String;

    const-string v1, "Rotation animation running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x1

    .line 368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 403
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->registerOneHandSetting()V

    .line 405
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 409
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 410
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->unRegisterOneHandSetting()V

    .line 411
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->TAG:Ljava/lang/String;

    const-string v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->invalidate()V

    .line 270
    return-void
.end method

.method public resetGradientDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mBottomLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopFG:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopFG:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :cond_2
    return-void
.end method

.method public setIsNeedTopGradient(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->isNeedTopGradient:Z

    .line 372
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->isNeedTopGradient:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopFG:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopFG:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->fade_grident:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    :cond_0
    return-void
.end method

.method public setMainColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x2

    .line 136
    iput p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMainColor:I

    .line 138
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 139
    .local v0, "hsbColors":[F
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMainLayer:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMainColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMainColor:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 143
    aget v1, v0, v4

    aget v2, v0, v4

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 144
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 146
    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMainColor:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 147
    aget v1, v0, v4

    aget v2, v0, v4

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 149
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopLayer:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMainLayer:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMainColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    return-void
.end method

.method public setMaxPadding(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaxPadding:F

    .line 188
    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaxPadding:F

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->invalidate()V

    .line 190
    return-void
.end method

.method public setNeedOutsideRound(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mNeedOutsideRound:Z

    .line 156
    return-void
.end method

.method public setPaddingController(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 177
    iput p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->invalidate()V

    .line 179
    return-void
.end method

.method public setRadiusWeight(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 172
    iput p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadiusWeight:F

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->invalidate()V

    .line 174
    return-void
.end method

.method public setRingImageAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->setAlpha(F)V

    .line 162
    return-void
.end method

.method public setRotateDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 446
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRotateDuration:J

    .line 447
    return-void
.end method

.method public setScreenSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 432
    iput p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    .line 433
    iput p2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    .line 434
    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    iget v1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    if-le v0, v1, :cond_0

    .line 435
    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadius:F

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    iget v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mRadius:F

    goto :goto_0
.end method

.method public setStrokeAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 450
    iput p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeAlpha:F

    .line 451
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 183
    iput p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    .line 184
    return-void
.end method

.method public setTurnOverMode(Z)V
    .locals 0
    .param p1, "isTurnOver"    # Z

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mIsTurnOver:Z

    .line 443
    return-void
.end method

.method public abstract show()V
.end method

.method public showPadding(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 193
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mStrokeWidth:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMaxPadding:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 194
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 201
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 202
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 203
    return-void
.end method

.method public startRotation(J)V
    .locals 13
    .param p1, "duration"    # J

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 221
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startRotation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 225
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMainLayer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 229
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setRotation(F)V

    .line 230
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setRotation(F)V

    .line 232
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mMainLayer:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v9, [F

    const/4 v6, 0x0

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 233
    .local v1, "mAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 235
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mTopLayer:Landroid/widget/ImageView;

    const-string/jumbo v4, "rotation"

    new-array v5, v10, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 236
    .local v0, "lAnim":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mBottomLayer:Landroid/widget/ImageView;

    const-string/jumbo v4, "rotation"

    new-array v5, v10, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 237
    .local v2, "rAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 238
    invoke-virtual {v2, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 240
    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 241
    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 242
    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 243
    invoke-virtual {v2, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 245
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 247
    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v7, v7, v8, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v7, v7, v8, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 251
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v9

    aput-object v1, v4, v10

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 253
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 255
    return-void

    .line 235
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    .line 236
    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public startScaleAnimation(FJJ)V
    .locals 4
    .param p1, "target"    # F
    .param p2, "startDelay"    # J
    .param p4, "duration"    # J

    .prologue
    const/4 v3, 0x2

    .line 323
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 327
    :cond_0
    new-array v0, v3, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mPaddingController:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 328
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$3;-><init>(Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 341
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 342
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 345
    return-void
.end method

.method public stopRotation()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopRotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 262
    :cond_0
    return-void
.end method

.method public stopScaleAnimation(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$4;-><init>(Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    return-void
.end method
