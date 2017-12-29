.class public Lvi/sec/com/bixbyvilibrary/VIBixbyManager;
.super Ljava/lang/Object;
.source "VIBixbyManager.java"


# static fields
.field private static mBixbyCircleRadius:F

.field private static mBixbyInitCircleRadius:F

.field private static mFulDurationEnd:I

.field private static mFulDurationStart:I

.field private static mFulDurationStartOffset:I

.field private static mFulParticleDisappearEnd:F

.field private static mFulParticleDisappearStart:F

.field private static mFulParticleSizeBigEnd:F

.field private static mFulParticleSizeBigStart:F

.field private static mFulParticleSizeMidEnd:F

.field private static mFulParticleSizeMidStart:F

.field private static mFulParticleSizeSmallEnd:F

.field private static mFulParticleSizeSmallStart:F

.field private static mMaxDurationEnd:I

.field private static mMaxDurationStart:I

.field private static mMaxDurationStartOffset:I

.field private static mMaxParticleDisappearEnd:F

.field private static mMaxParticleDisappearStart:F

.field private static mMaxParticleSizeBigEnd:F

.field private static mMaxParticleSizeBigStart:F

.field private static mMaxParticleSizeMidEnd:F

.field private static mMaxParticleSizeMidStart:F

.field private static mMaxParticleSizeSmallEnd:F

.field private static mMaxParticleSizeSmallStart:F

.field private static mMidDurationEnd:I

.field private static mMidDurationStart:I

.field private static mMidDurationStartOffset:I

.field private static mMidParticleDisappearEnd:F

.field private static mMidParticleDisappearStart:F

.field private static mMidParticleSizeBigEnd:F

.field private static mMidParticleSizeBigStart:F

.field private static mMidParticleSizeMidEnd:F

.field private static mMidParticleSizeMidStart:F

.field private static mMidParticleSizeSmallEnd:F

.field private static mMidParticleSizeSmallStart:F

.field private static mSmaDurationEnd:I

.field private static mSmaDurationStart:I

.field private static mSmaDurationStartOffset:I

.field private static mSmaParticleDisappearEnd:F

.field private static mSmaParticleDisappearStart:F

.field private static mSmaParticleSizeBigEnd:F

.field private static mSmaParticleSizeBigStart:F

.field private static mSmaParticleSizeMidEnd:F

.field private static mSmaParticleSizeMidStart:F

.field private static mSmaParticleSizeSmallEnd:F

.field private static mSmaParticleSizeSmallStart:F


# instance fields
.field private final DEBUG_LONG_DURATION:I

.field private mAlphaFluidCircle:I

.field private mBixbyAnimationDuration1:F

.field private mBixbyAnimationDuration2:F

.field private mBixbyAnimationDuration3:F

.field private mBixbyAnimationGoingDown:Z

.field private mBixbyAnimationMinSize:F

.field private mBixbyAnimationProgress:F

.field private mBixbyAnimationScale1:F

.field private mBixbyAnimationScale2:F

.field private mBixbyAnimationSize1:F

.field private mBixbyAnimationSize2:F

.field private mBixbyAnimationSize3:F

.field private mBixbyAnimationStartTime:J

.field private mBixbyEmptyParticles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;",
            ">;"
        }
    .end annotation
.end field

.field private mBixbyLetterScale:F

.field private mBixbyLetterSize1:F

.field private mBixbyLetterSize2:F

.field private mBixbyLetterSize3:F

.field private mBixbyParticles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;",
            ">;"
        }
    .end annotation
.end field

.field private mBixbyRemoveParticles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;",
            ">;"
        }
    .end annotation
.end field

.field private mBixbyScaleAnimationStart:Z

.field private mBixbySizeAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mBixbySizeAnimationStart:Z

.field private mBixbySizeAnimationTarget:F

.field private mBoundFluidCircle:Landroid/graphics/Rect;

.field private mBoundFluidCircle50dp:Landroid/graphics/Rect;

.field private mBoundSymbolB:Landroid/graphics/Rect;

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Landroid/content/Context;

.field private mCorrectionVal:F

.field private mCorrectionVal50dp:F

.field private mCountFluidCircle:J

.field private mCurrentTime:J

.field private mDegree:F

.field private mFirstStartTimeFluidCircle:J

.field private mHeightFluidCircle:I

.field private mHeightFluidCircle50dp:I

.field private mLastStartTimeFluidCircle:J

.field private mListSVG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvi/sec/com/bixbyvilibrary/VIPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/view/View;

.field private mMaxDuration:J

.field private mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

.field private mOnDrawResult:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mParser:Lvi/sec/com/bixbyvilibrary/VISVGParser;

.field private mParticleAnimationStart:Z

.field private mRandom:Ljava/util/Random;

.field private mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

.field private mVectorDrawableFluidCircle:Landroid/graphics/drawable/Drawable;

.field private mVectorDrawableFluidCircle50dp:Landroid/graphics/drawable/Drawable;

.field private mView:Landroid/view/View;

.field private mWidthFluidCircle:I

.field private mWidthFluidCircle50dp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->DEBUG_LONG_DURATION:I

    .line 94
    iput-boolean v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    .line 95
    iput-boolean v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    const v0, 0x43a68000    # 333.0f

    .line 102
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration3:F

    .line 113
    new-instance v0, Lvi/sec/com/bixbyvilibrary/VISVGParser;

    invoke-direct {v0}, Lvi/sec/com/bixbyvilibrary/VISVGParser;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mParser:Lvi/sec/com/bixbyvilibrary/VISVGParser;

    .line 114
    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-direct {v0}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mListSVG:Ljava/util/List;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    .line 125
    iput-boolean v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationStart:Z

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle:Landroid/graphics/Rect;

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle50dp:Landroid/graphics/Rect;

    .line 144
    iput-boolean v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mParticleAnimationStart:Z

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mDegree:F

    .line 146
    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    .line 147
    iput-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCountFluidCircle:J

    .line 148
    iput-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDuration:J

    .line 154
    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mView:Landroid/view/View;

    .line 157
    iput-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle:Landroid/graphics/drawable/Drawable;

    .line 158
    iput-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle50dp:Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->init()V

    .line 161
    return-void
.end method

.method private addBixbyParticle(FFFFF)V
    .locals 9
    .param p1, "rotation"    # F
    .param p2, "size"    # F
    .param p3, "durationStartOffset"    # F
    .param p4, "duration"    # F
    .param p5, "disappearDistance"    # F

    .prologue
    .line 577
    iget-wide v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDuration:J

    long-to-float v2, v2

    add-float v3, p4, p3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 578
    add-float v2, p4, p3

    float-to-long v2, v2

    iput-wide v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDuration:J

    .line 580
    :cond_0
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getBixbyParticle()Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;

    move-result-object v1

    .line 582
    .local v1, "viBixbyParticle":Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
    iget-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    if-nez v2, :cond_3

    .line 590
    :cond_1
    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-virtual {v1, v2, v3, v4, v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->initMorphingShape(FFFLvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;)Z

    .line 597
    :goto_0
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->initAnimation(FFFFJF)F

    move-result v0

    .local v0, "minDisappearDistance":F
    const/4 v2, 0x0

    .line 598
    cmpl-float v2, v2, v0

    if-eqz v2, :cond_2

    .line 599
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v8, v0, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->initAnimation(FFFFJF)F

    .line 600
    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 605
    :cond_2
    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->updateParticleShape()V

    .line 606
    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyParticles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 607
    return-void

    .line 582
    .end local v0    # "minDisappearDistance":F
    :cond_3
    iget-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    if-eqz v2, :cond_1

    .line 584
    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationMinSize:F

    const/high16 v5, 0x40e00000    # 7.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-virtual {v1, v2, v3, v4, v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->initMorphingShape(FFFLvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;)Z

    goto :goto_0

    .line 601
    .restart local v0    # "minDisappearDistance":F
    :cond_4
    return-void
.end method

.method private dpToPixelFloat(F)F
    .locals 2
    .param p1, "dp"    # F

    .prologue
    const/4 v0, 0x1

    .line 949
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private drawBixbyParticles(Landroid/graphics/Canvas;)Z
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 624
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 630
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyRemoveParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 638
    :goto_1
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_4

    .line 641
    const/4 v1, 0x1

    return v1

    .line 624
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;

    .line 625
    .local v0, "viBixbyParticle":Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    invoke-virtual {v0, p1, v2, v4, v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->drawingBixbyMorphingShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 626
    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyRemoveParticles:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    .end local v0    # "viBixbyParticle":Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
    :cond_2
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyRemoveParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 635
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyRemoveParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    goto :goto_1

    .line 631
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;

    .line 632
    .restart local v0    # "viBixbyParticle":Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyParticles:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 633
    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyEmptyParticles:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 639
    .end local v0    # "viBixbyParticle":Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
    :cond_4
    return v3
.end method

.method private drawFluidCircle(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v12, 0xff

    const/4 v1, 0x1

    const v11, 0x3fc3d70a    # 1.53f

    const/4 v4, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 710
    iget-boolean v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mParticleAnimationStart:Z

    if-eqz v5, :cond_2

    .line 714
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCountFluidCircle:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 715
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iput-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mLastStartTimeFluidCircle:J

    iput-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFirstStartTimeFluidCircle:J

    .line 718
    :cond_0
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCountFluidCircle:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCountFluidCircle:J

    .line 720
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mLastStartTimeFluidCircle:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    .line 721
    .local v0, "elapsedTime":F
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFirstStartTimeFluidCircle:J

    sub-long v2, v6, v8

    .local v2, "fadeoutTriggerElapsedTime":J
    const-wide/16 v6, 0x1f4

    .line 722
    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    move v5, v1

    :goto_0
    if-nez v5, :cond_4

    .line 725
    .local v1, "startFadeOut":Z
    :goto_1
    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mDegree:F

    const v6, 0x3e3851ec    # 0.18f

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mDegree:F

    .line 729
    if-nez v1, :cond_5

    .line 735
    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    mul-float v5, v0, v11

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    .line 736
    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    if-gt v4, v12, :cond_6

    .line 743
    :cond_1
    :goto_2
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle:Landroid/graphics/Rect;

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mWidthFluidCircle:I

    int-to-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCorrectionVal:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 744
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle:Landroid/graphics/Rect;

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mHeightFluidCircle:I

    int-to-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCorrectionVal:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 745
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle:Landroid/graphics/Rect;

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mWidthFluidCircle:I

    int-to-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v10

    add-float/2addr v5, v6

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCorrectionVal:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 746
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle:Landroid/graphics/Rect;

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mHeightFluidCircle:I

    int-to-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v10

    add-float/2addr v5, v6

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCorrectionVal:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 747
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 750
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle50dp:Landroid/graphics/Rect;

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mWidthFluidCircle50dp:I

    int-to-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCorrectionVal50dp:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 751
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle50dp:Landroid/graphics/Rect;

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mHeightFluidCircle50dp:I

    int-to-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCorrectionVal50dp:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 752
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle50dp:Landroid/graphics/Rect;

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mWidthFluidCircle50dp:I

    int-to-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v10

    add-float/2addr v5, v6

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCorrectionVal50dp:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 753
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle50dp:Landroid/graphics/Rect;

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mHeightFluidCircle50dp:I

    int-to-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v10

    add-float/2addr v5, v6

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCorrectionVal50dp:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 754
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle50dp:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundFluidCircle50dp:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 756
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 758
    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mDegree:F

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 760
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 762
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v4, 0x430c0000    # 140.0f

    .line 764
    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 766
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle50dp:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    int-to-float v5, v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 768
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle50dp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 770
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 772
    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iput-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mLastStartTimeFluidCircle:J

    .line 773
    return-void

    .line 711
    .end local v0    # "elapsedTime":F
    .end local v1    # "startFadeOut":Z
    .end local v2    # "fadeoutTriggerElapsedTime":J
    :cond_2
    return-void

    .restart local v0    # "elapsedTime":F
    .restart local v2    # "fadeoutTriggerElapsedTime":J
    :cond_3
    move v5, v4

    .line 722
    goto/16 :goto_0

    :cond_4
    move v1, v4

    goto/16 :goto_1

    .line 730
    .restart local v1    # "startFadeOut":Z
    :cond_5
    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    mul-float v6, v0, v11

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    .line 731
    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    if-gez v5, :cond_1

    .line 732
    iput v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    goto/16 :goto_2

    .line 737
    :cond_6
    iput v12, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    goto/16 :goto_2
.end method

.method private drawMainCircle(Landroid/graphics/Canvas;)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 647
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 648
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 651
    invoke-direct {p0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->drawFluidCircle(Landroid/graphics/Canvas;)V

    .line 653
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    if-nez v0, :cond_0

    .line 684
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationStart:Z

    if-nez v0, :cond_7

    .line 703
    :goto_0
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 705
    return v1

    .line 654
    :cond_0
    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 655
    iput-boolean v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    .line 656
    iget-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    .line 657
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 659
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize1:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v10

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    .line 661
    return v2

    :cond_1
    move v0, v2

    .line 654
    goto :goto_1

    .line 662
    :cond_2
    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration2:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    .line 663
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    .line 664
    iget-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration2:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    .line 665
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    add-float/2addr v3, v4

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize2:F

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 667
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize1:F

    add-float/2addr v0, v10

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize2:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    .line 669
    return v2

    :cond_3
    move v0, v2

    .line 662
    goto :goto_2

    .line 670
    :cond_4
    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration2:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration3:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    move v0, v1

    :goto_3
    if-nez v0, :cond_6

    .line 671
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    .line 672
    iget-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration2:F

    sub-float/2addr v0, v1

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration3:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    .line 673
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    add-float/2addr v3, v4

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize2:F

    add-float/2addr v3, v4

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize3:F

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 675
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize1:F

    add-float/2addr v0, v10

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize2:F

    add-float/2addr v0, v1

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize3:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    .line 677
    return v2

    :cond_5
    move v0, v2

    .line 670
    goto :goto_3

    .line 679
    :cond_6
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    .line 680
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    .line 682
    iput v10, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    goto/16 :goto_0

    .line 685
    :cond_7
    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_8

    move v0, v1

    :goto_4
    if-nez v0, :cond_a

    .line 686
    iget-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    .line 687
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_9

    .line 690
    :goto_5
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 692
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyInitCircleRadius:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    .line 694
    return v2

    :cond_8
    move v0, v2

    .line 685
    goto :goto_4

    .line 688
    :cond_9
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    goto :goto_5

    .line 696
    :cond_a
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationStart:Z

    .line 697
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationTarget:F

    sput v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    .line 699
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationTarget:F

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyInitCircleRadius:F

    div-float/2addr v0, v2

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    goto/16 :goto_0
.end method

.method private getBixbyParticle()Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
    .locals 2

    .prologue
    .line 612
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyEmptyParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyEmptyParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;

    .line 616
    .local v0, "viBixbyParticle":Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyEmptyParticles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 619
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->setAnimForward(Z)V

    .line 620
    return-object v0

    .line 613
    .end local v0    # "viBixbyParticle":Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
    :cond_0
    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

    invoke-direct {v0, v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;-><init>(Lvi/sec/com/bixbyvilibrary/SineInOut33;)V

    .restart local v0    # "viBixbyParticle":Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
    goto :goto_0
.end method

.method private getFulDisappearLength()F
    .locals 3

    .prologue
    .line 924
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleDisappearEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleDisappearStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleDisappearStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getFulDuration()F
    .locals 3

    .prologue
    .line 928
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulDurationEnd:I

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulDurationStart:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulDurationStart:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private getFulDurationStartOffset()F
    .locals 2

    .prologue
    .line 916
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulDurationStartOffset:I

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulDurationStartOffset:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 917
    return v0
.end method

.method private getFulSizeBig()F
    .locals 3

    .prologue
    .line 940
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeBigEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeBigStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeBigStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getFulSizeMid()F
    .locals 3

    .prologue
    .line 936
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeMidEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeMidStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeMidStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getFulSizeSmall()F
    .locals 3

    .prologue
    .line 932
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeSmallEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeSmallStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeSmallStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getMaxDisappearLength()F
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleDisappearEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleDisappearStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleDisappearStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getMaxDuration()F
    .locals 3

    .prologue
    .line 900
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDurationEnd:I

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDurationStart:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDurationStart:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private getMaxDurationStartOffset()F
    .locals 2

    .prologue
    .line 888
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDurationStartOffset:I

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDurationStartOffset:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 889
    return v0
.end method

.method private getMaxSizeBig()F
    .locals 3

    .prologue
    .line 912
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeBigEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeBigStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeBigStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getMaxSizeMid()F
    .locals 3

    .prologue
    .line 908
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeMidEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeMidStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeMidStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getMaxSizeSmall()F
    .locals 3

    .prologue
    .line 904
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeSmallEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeSmallStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeSmallStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getMidDisappearLength()F
    .locals 3

    .prologue
    .line 868
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleDisappearEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleDisappearStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleDisappearStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getMidDuration()F
    .locals 3

    .prologue
    .line 872
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationEnd:I

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStart:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStart:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private getMidDurationStartOffset()F
    .locals 2

    .prologue
    .line 860
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStartOffset:I

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStartOffset:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 861
    return v0
.end method

.method private getMidSizeBig()F
    .locals 3

    .prologue
    .line 884
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeBigEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeBigStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeBigStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getMidSizeMid()F
    .locals 3

    .prologue
    .line 880
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeMidEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeMidStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeMidStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getMidSizeSmall()F
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeSmallEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeSmallStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeSmallStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getSmaDisappearLength()F
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleDisappearEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleDisappearStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleDisappearStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getSmaDuration()F
    .locals 3

    .prologue
    .line 844
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaDurationEnd:I

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaDurationStart:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaDurationStart:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private getSmaDurationStartOffset()F
    .locals 2

    .prologue
    .line 832
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaDurationStartOffset:I

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaDurationStartOffset:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 833
    return v0
.end method

.method private getSmaSizeBig()F
    .locals 3

    .prologue
    .line 856
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeBigEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeBigStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeBigStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getSmaSizeMid()F
    .locals 3

    .prologue
    .line 852
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeMidEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeMidStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeMidStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getSmaSizeSmall()F
    .locals 3

    .prologue
    .line 848
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeSmallEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeSmallStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeSmallStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 165
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    .line 166
    new-instance v0, Lvi/sec/com/bixbyvilibrary/SineInOut33;

    invoke-direct {v0}, Lvi/sec/com/bixbyvilibrary/SineInOut33;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    .line 168
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyParticles:Ljava/util/Vector;

    .line 171
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyRemoveParticles:Ljava/util/Vector;

    .line 172
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyEmptyParticles:Ljava/util/Vector;

    .line 173
    iput v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mDegree:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 175
    invoke-direct {p0, v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->dpToPixelFloat(F)F

    move-result v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCorrectionVal:F

    .line 176
    invoke-direct {p0, v4}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->dpToPixelFloat(F)F

    move-result v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCorrectionVal50dp:F

    .line 178
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->initializeParserAndMorpher()V

    .line 179
    return-void
.end method

.method private initializeParserAndMorpher()V
    .locals 6

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 808
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mListSVG:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 810
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mParser:Lvi/sec/com/bixbyvilibrary/VISVGParser;

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->initialize(Landroid/content/Context;)Z

    .line 812
    sget-object v3, Lvi/sec/com/bixbyvilibrary/VIBixbyPathData;->mPathStr:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    div-float v1, v5, v3

    .local v1, "incrVal":F
    const/4 v0, 0x0

    .line 814
    .local v0, "i":I
    :goto_0
    sget-object v3, Lvi/sec/com/bixbyvilibrary/VIBixbyPathData;->mPathStr:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 829
    return-void

    .line 816
    :cond_0
    new-instance v2, Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-direct {v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;-><init>()V

    .line 818
    .local v2, "svg":Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mParser:Lvi/sec/com/bixbyvilibrary/VISVGParser;

    sget-object v4, Lvi/sec/com/bixbyvilibrary/VIBixbyPathData;->mPathStr:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->parsingPathElement(Ljava/lang/String;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 820
    if-eqz v0, :cond_1

    .line 822
    sget-object v3, Lvi/sec/com/bixbyvilibrary/VIBixbyPathData;->mPathStr:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_2

    .line 825
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    int-to-float v4, v0

    mul-float/2addr v4, v1

    invoke-virtual {v3, v2, v4}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->addPrimitiveToShape(Lvi/sec/com/bixbyvilibrary/VIPrimitive;F)Z

    .line 827
    :goto_1
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mListSVG:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_1
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-virtual {v3, v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->setPrimitiveFromShape(Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    goto :goto_1

    .line 823
    :cond_2
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-virtual {v3, v2, v5}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->addPrimitiveToShape(Lvi/sec/com/bixbyvilibrary/VIPrimitive;F)Z

    goto :goto_1
.end method

.method private randomRange(II)I
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 954
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private resetFluidCircleAnimationValue()V
    .locals 2

    .prologue
    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mParticleAnimationStart:Z

    const-wide/16 v0, 0x0

    .line 945
    iput-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCountFluidCircle:J

    .line 946
    return-void
.end method

.method private setBixbLogoScale()V
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mLogoView:Landroid/view/View;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 802
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mLogoView:Landroid/view/View;

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 803
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mLogoView:Landroid/view/View;

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 804
    return-void
.end method


# virtual methods
.method public addFulCircleBig()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 523
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 525
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 526
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulSizeBig()F

    move-result v2

    .line 527
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulDurationStartOffset()F

    move-result v7

    .line 528
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulDuration()F

    move-result v6

    .line 529
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulDisappearLength()F

    move-result v5

    .line 531
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 532
    return-void
.end method

.method public addFulCircleMid()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 537
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 539
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 540
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulSizeMid()F

    move-result v2

    .line 541
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulDurationStartOffset()F

    move-result v7

    .line 542
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulDuration()F

    move-result v6

    .line 543
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulDisappearLength()F

    move-result v5

    .line 545
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 546
    return-void
.end method

.method public addFulCircleSmall()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 551
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 553
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 554
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulSizeSmall()F

    move-result v2

    .line 555
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulDurationStartOffset()F

    move-result v7

    .line 556
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulDuration()F

    move-result v6

    .line 557
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getFulDisappearLength()F

    move-result v5

    .line 559
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 560
    return-void
.end method

.method public addMaxCircleBig()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 481
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 483
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 484
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxSizeBig()F

    move-result v2

    .line 485
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxDurationStartOffset()F

    move-result v7

    .line 486
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxDuration()F

    move-result v6

    .line 487
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxDisappearLength()F

    move-result v5

    .line 489
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 490
    return-void
.end method

.method public addMaxCircleMid()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 495
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 497
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 498
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxSizeMid()F

    move-result v2

    .line 499
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxDurationStartOffset()F

    move-result v7

    .line 500
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxDuration()F

    move-result v6

    .line 501
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxDisappearLength()F

    move-result v5

    .line 503
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 504
    return-void
.end method

.method public addMaxCircleSmall()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 509
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 511
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 512
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxSizeSmall()F

    move-result v2

    .line 513
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxDurationStartOffset()F

    move-result v7

    .line 514
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxDuration()F

    move-result v6

    .line 515
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMaxDisappearLength()F

    move-result v5

    .line 517
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 518
    return-void
.end method

.method public addMidCircleBig()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 439
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 441
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 442
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidSizeBig()F

    move-result v2

    .line 443
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDurationStartOffset()F

    move-result v7

    .line 444
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDuration()F

    move-result v6

    .line 445
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDisappearLength()F

    move-result v5

    .line 447
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 448
    return-void
.end method

.method public addMidCircleMid()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 453
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 455
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 456
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidSizeMid()F

    move-result v2

    .line 457
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDurationStartOffset()F

    move-result v7

    .line 458
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDuration()F

    move-result v6

    .line 459
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDisappearLength()F

    move-result v5

    .line 461
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 462
    return-void
.end method

.method public addMidCircleSmall()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 467
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 469
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 470
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidSizeSmall()F

    move-result v2

    .line 471
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDurationStartOffset()F

    move-result v7

    .line 472
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDuration()F

    move-result v6

    .line 473
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDisappearLength()F

    move-result v5

    .line 475
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 476
    return-void
.end method

.method public addSmaCircleBig()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 397
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 399
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 400
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaSizeBig()F

    move-result v2

    .line 401
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaDurationStartOffset()F

    move-result v7

    .line 402
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaDuration()F

    move-result v6

    .line 403
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaDisappearLength()F

    move-result v5

    .line 405
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 406
    return-void
.end method

.method public addSmaCircleMid()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 411
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 413
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 414
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaSizeMid()F

    move-result v2

    .line 415
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaDurationStartOffset()F

    move-result v7

    .line 416
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaDuration()F

    move-result v6

    .line 417
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaDisappearLength()F

    move-result v5

    .line 419
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 420
    return-void
.end method

.method public addSmaCircleSmall()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 425
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->resetFluidCircleAnimationValue()V

    const/4 v0, 0x0

    const/16 v3, 0xe10

    .line 427
    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    .line 428
    .local v1, "rotation":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaSizeSmall()F

    move-result v2

    .line 429
    .local v2, "size":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaDurationStartOffset()F

    move-result v7

    .line 430
    .local v7, "durationStartOffset":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaDuration()F

    move-result v6

    .line 431
    .local v6, "duration":F
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getSmaDisappearLength()F

    move-result v5

    .line 433
    .local v5, "disappearDistance":F
    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    .line 434
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)Z
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    .line 192
    iput-boolean v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mOnDrawResult:Z

    .line 194
    invoke-direct {p0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->drawBixbyParticles(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    invoke-direct {p0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->drawMainCircle(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :goto_1
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mLogoView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 208
    :goto_2
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mOnDrawResult:Z

    if-nez v0, :cond_3

    .line 222
    :goto_3
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mOnDrawResult:Z

    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 196
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mOnDrawResult:Z

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 201
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mOnDrawResult:Z

    goto :goto_1

    .line 205
    :cond_2
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setBixbLogoScale()V

    goto :goto_2

    .line 209
    :cond_3
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mAlphaFluidCircle:I

    if-lez v0, :cond_4

    .line 216
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 217
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mOnDrawResult:Z

    .line 218
    iput-boolean v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mParticleAnimationStart:Z

    goto :goto_3

    .line 210
    :cond_4
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mParticleAnimationStart:Z

    .line 211
    iput-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCountFluidCircle:J

    .line 212
    iput-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDuration:J

    goto :goto_3
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 183
    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    .line 184
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    .line 185
    return-void
.end method

.method public setBixbySizeAnimation(FFLandroid/view/animation/Interpolator;)Z
    .locals 3
    .param p1, "size"    # F
    .param p2, "duration"    # F
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 377
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    return v1

    .line 377
    :cond_1
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationStart:Z

    if-nez v0, :cond_0

    .line 379
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 380
    return v1

    .line 383
    :cond_2
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationStart:Z

    .line 384
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationTarget:F

    .line 385
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    sub-float v0, p1, v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 386
    mul-float/2addr v0, p2

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    .line 387
    iput-object p3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 388
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyInitCircleRadius:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize1:F

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    .line 391
    return v2
.end method

.method public setDisappearDistances(FFFFFFFF)V
    .locals 0
    .param p1, "smaParticleDisappearStart"    # F
    .param p2, "smaParticleDisappearEnd"    # F
    .param p3, "midParticleDisappearStart"    # F
    .param p4, "midParticleDisappearEnd"    # F
    .param p5, "maxParticleDisappearStart"    # F
    .param p6, "maxParticleDisappearEnd"    # F
    .param p7, "fulParticleDisappearStart"    # F
    .param p8, "fulParticleDisappearEnd"    # F

    .prologue
    .line 293
    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleDisappearStart:F

    .line 294
    sput p2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleDisappearEnd:F

    .line 296
    sput p3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleDisappearStart:F

    .line 297
    sput p4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleDisappearEnd:F

    .line 299
    sput p5, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleDisappearStart:F

    .line 300
    sput p6, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleDisappearEnd:F

    .line 302
    sput p7, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleDisappearStart:F

    .line 303
    sput p8, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleDisappearEnd:F

    .line 304
    return-void
.end method

.method public setInitBixbyBresource(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "fluidCircleB"    # Landroid/graphics/drawable/Drawable;
    .param p2, "fluidCircleC"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 243
    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle:Landroid/graphics/drawable/Drawable;

    .line 244
    iput-object p2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle50dp:Landroid/graphics/drawable/Drawable;

    .line 246
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mWidthFluidCircle:I

    .line 247
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mHeightFluidCircle:I

    .line 249
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle50dp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mWidthFluidCircle50dp:I

    .line 250
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableFluidCircle50dp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mHeightFluidCircle50dp:I

    .line 251
    return-void
.end method

.method public setInitBixbyCircleRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 260
    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyInitCircleRadius:F

    .line 261
    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    .line 262
    return-void
.end method

.method public setInitBixbyLogoView(Landroid/view/View;)V
    .locals 0
    .param p1, "logo"    # Landroid/view/View;

    .prologue
    .line 255
    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mLogoView:Landroid/view/View;

    .line 256
    return-void
.end method

.method public setInitDurations(IIIIIIIIIIII)V
    .locals 0
    .param p1, "smaDurationStartOffset"    # I
    .param p2, "smaDurationStart"    # I
    .param p3, "smaDurationEnd"    # I
    .param p4, "midDurationStartOffset"    # I
    .param p5, "midDurationStart"    # I
    .param p6, "midDurationEnd"    # I
    .param p7, "maxDurationStartOffset"    # I
    .param p8, "maxDurationStart"    # I
    .param p9, "maxDurationEnd"    # I
    .param p10, "fulDurationStartOffset"    # I
    .param p11, "fulDurationStart"    # I
    .param p12, "fulDurationEnd"    # I

    .prologue
    .line 270
    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaDurationStartOffset:I

    .line 271
    sput p2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaDurationStart:I

    .line 272
    sput p3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaDurationEnd:I

    .line 274
    sput p4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStartOffset:I

    .line 275
    sput p5, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStart:I

    .line 276
    sput p6, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationEnd:I

    .line 278
    sput p7, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDurationStartOffset:I

    .line 279
    sput p8, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDurationStart:I

    .line 280
    sput p9, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDurationEnd:I

    .line 282
    sput p10, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulDurationStartOffset:I

    .line 283
    sput p11, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulDurationStart:I

    .line 284
    sput p12, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulDurationEnd:I

    .line 285
    return-void
.end method

.method public setInitFulParticleSizes(FFFFFF)V
    .locals 0
    .param p1, "smallStart"    # F
    .param p2, "smallEnd"    # F
    .param p3, "midStart"    # F
    .param p4, "midEnd"    # F
    .param p5, "bigStart"    # F
    .param p6, "bigEnd"    # F

    .prologue
    .line 339
    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeSmallStart:F

    .line 340
    sput p2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeSmallEnd:F

    .line 341
    sput p3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeMidStart:F

    .line 342
    sput p4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeMidEnd:F

    .line 343
    sput p5, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeBigStart:F

    .line 344
    sput p6, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mFulParticleSizeBigEnd:F

    .line 345
    return-void
.end method

.method public setInitMaxParticleSizes(FFFFFF)V
    .locals 0
    .param p1, "smallStart"    # F
    .param p2, "smallEnd"    # F
    .param p3, "midStart"    # F
    .param p4, "midEnd"    # F
    .param p5, "bigStart"    # F
    .param p6, "bigEnd"    # F

    .prologue
    .line 329
    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeSmallStart:F

    .line 330
    sput p2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeSmallEnd:F

    .line 331
    sput p3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeMidStart:F

    .line 332
    sput p4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeMidEnd:F

    .line 333
    sput p5, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeBigStart:F

    .line 334
    sput p6, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeBigEnd:F

    .line 335
    return-void
.end method

.method public setInitMidParticleSizes(FFFFFF)V
    .locals 0
    .param p1, "smallStart"    # F
    .param p2, "smallEnd"    # F
    .param p3, "midStart"    # F
    .param p4, "midEnd"    # F
    .param p5, "bigStart"    # F
    .param p6, "bigEnd"    # F

    .prologue
    .line 319
    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeSmallStart:F

    .line 320
    sput p2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeSmallEnd:F

    .line 321
    sput p3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeMidStart:F

    .line 322
    sput p4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeMidEnd:F

    .line 323
    sput p5, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeBigStart:F

    .line 324
    sput p6, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeBigEnd:F

    .line 325
    return-void
.end method

.method public setInitSmaParticleSizes(FFFFFF)V
    .locals 0
    .param p1, "smallStart"    # F
    .param p2, "smallEnd"    # F
    .param p3, "midStart"    # F
    .param p4, "midEnd"    # F
    .param p5, "bigStart"    # F
    .param p6, "bigEnd"    # F

    .prologue
    .line 308
    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeSmallStart:F

    .line 309
    sput p2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeSmallEnd:F

    .line 310
    sput p3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeMidStart:F

    .line 311
    sput p4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeMidEnd:F

    .line 312
    sput p5, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeBigStart:F

    .line 313
    sput p6, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSmaParticleSizeBigEnd:F

    .line 314
    return-void
.end method

.method public startBixbyScaleAnimation(FFFF)Z
    .locals 6
    .param p1, "scale1"    # F
    .param p2, "duration1"    # F
    .param p3, "scale2"    # F
    .param p4, "duration2"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x42c80000    # 100.0f

    .line 349
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    return v1

    .line 349
    :cond_1
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationStart:Z

    if-nez v0, :cond_0

    .line 353
    iput-boolean v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    .line 354
    iput-boolean v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    .line 357
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationScale1:F

    .line 358
    mul-float v0, p2, v4

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    .line 359
    iput p3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationScale2:F

    .line 360
    sub-float v0, p4, p2

    mul-float/2addr v0, v4

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration2:F

    .line 362
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationScale1:F

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    sub-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    .line 363
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationScale2:F

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    sub-float/2addr v0, v1

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    sub-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize2:F

    .line 364
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationScale2:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize3:F

    .line 366
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationScale1:F

    div-float/2addr v0, v3

    sub-float/2addr v0, v4

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize1:F

    .line 367
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationScale2:F

    div-float/2addr v0, v3

    sub-float/2addr v0, v4

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize1:F

    sub-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize2:F

    .line 368
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize1:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize2:F

    add-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize3:F

    .line 370
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    add-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationMinSize:F

    .line 372
    return v5
.end method
