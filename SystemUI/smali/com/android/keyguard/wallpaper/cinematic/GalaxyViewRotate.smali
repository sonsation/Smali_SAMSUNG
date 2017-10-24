.class public Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;
.super Landroid/view/View;
.source "GalaxyViewRotate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;
    }
.end annotation


# instance fields
.field private mAlphaLongProgress:F

.field private mAlphaProgress:F

.field private mCurrentXDegree:F

.field private mCurrentYDegree:F

.field private mDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDxDegree:F

.field private mEasing:F

.field private mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

.field private mHeight:F

.field private mIsChangingOption:Z

.field private mListDataArray:[Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

.field private mMainAlpha:F

.field private mMaxDegree:F

.field private mMinDegree:F

.field private mMinDx:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPlusDX:F

.field private mPlusValueX:F

.field private mScaleX:F

.field private mScaleY:F

.field private mWidth:F


# direct methods
.method static synthetic -set0(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mAlphaLongProgress:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mAlphaProgress:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidateDXObject()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    .line 49
    const v0, 0x40e66666    # 7.2f

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMaxDegree:F

    .line 50
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    .line 51
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    .line 52
    iput v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentYDegree:F

    .line 54
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMaxDegree:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDxDegree:F

    .line 55
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDxDegree:F

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasing:F

    .line 56
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasing:F

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDx:F

    .line 58
    iput v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    .line 59
    iput v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusValueX:F

    .line 64
    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mScaleX:F

    .line 65
    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mScaleY:F

    .line 67
    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMainAlpha:F

    .line 68
    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mAlphaProgress:F

    .line 69
    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mAlphaLongProgress:F

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mIsChangingOption:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-direct {v0}, Lcom/altamirasoft/easing_helper/EasingHelper;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasing:F

    invoke-virtual {v0, v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->setEasing(F)Lcom/altamirasoft/easing_helper/EasingHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDx:F

    invoke-virtual {v0, v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->setMinDiffer(F)Lcom/altamirasoft/easing_helper/EasingHelper;

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    new-instance v1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$1;-><init>(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->addUpdateListener(Lcom/altamirasoft/easing_helper/EasingUpdateListener;)Lcom/altamirasoft/easing_helper/EasingHelper;

    .line 93
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->initStarList()V

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->beginAlphaAnimation()V

    .line 73
    return-void
.end method

.method private getTargetValue(F)F
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 262
    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDxDegree:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    add-float v0, v1, v2

    .line 263
    .local v0, "result":F
    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMaxDegree:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 264
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMaxDegree:F

    .line 266
    :cond_0
    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 267
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMinDegree:F

    .line 269
    :cond_1
    return v0
.end method

.method private invalidateDXObject()V
    .locals 4

    .prologue
    .line 288
    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mIsChangingOption:Z

    if-eqz v2, :cond_0

    .line 289
    return-void

    .line 292
    :cond_0
    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusValueX:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    div-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    .line 293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .line 295
    .local v0, "aModel":Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;
    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisYTargetX(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yx:F

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisYTargetY(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yy:F

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisYTargetZ(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yz:F

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisXTargetX(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tx:F

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisXTargetY(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->ty:F

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getAxisXTargetZ(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v0    # "aModel":Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->ZIndexComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 287
    return-void
.end method


# virtual methods
.method public accChangeCurrent(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getTargetValue(F)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    iget v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    invoke-virtual {v0, v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->setCurrentValue(F)Lcom/altamirasoft/easing_helper/EasingHelper;

    .line 257
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidateDXObject()V

    .line 258
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidate()V

    .line 253
    return-void
.end method

.method public accChangeX(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getTargetValue(F)F

    move-result v0

    .line 247
    .local v0, "targetDegree":F
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-virtual {v1, v0}, Lcom/altamirasoft/easing_helper/EasingHelper;->setTargetValue(F)Lcom/altamirasoft/easing_helper/EasingHelper;

    .line 248
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-virtual {v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mEasingHelper:Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-virtual {v1}, Lcom/altamirasoft/easing_helper/EasingHelper;->start()V

    .line 245
    :cond_0
    return-void
.end method

.method public beginAlphaAnimation()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 216
    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 217
    .local v0, "alphaAnim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$2;-><init>(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 226
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 227
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 228
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 230
    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 231
    .local v1, "alphaLongAnim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$3;-><init>(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    const-wide/16 v2, 0x8fc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 241
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 242
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 215
    return-void

    .line 216
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 230
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public changeAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 361
    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMainAlpha:F

    .line 362
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidateDXObject()V

    .line 363
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidate()V

    .line 359
    return-void
.end method

.method public changePlusValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 355
    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusValueX:F

    .line 356
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidateDXObject()V

    .line 354
    return-void
.end method

.method public getAxisXTargetX(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 1
    .param p1, "data"    # Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .prologue
    .line 379
    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yx:F

    return v0
.end method

.method public getAxisXTargetY(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 6
    .param p1, "data"    # Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .prologue
    .line 383
    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yz:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentYDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisXTargetZ(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 6
    .param p1, "data"    # Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .prologue
    .line 387
    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yz:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentYDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisYTargetX(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 6
    .param p1, "data"    # Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .prologue
    .line 367
    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->x:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    neg-float v2, v2

    iget v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->z:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    neg-float v4, v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisYTargetY(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 1
    .param p1, "data"    # Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .prologue
    .line 371
    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->y:F

    return v0
.end method

.method public getAxisYTargetZ(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 6
    .param p1, "data"    # Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .prologue
    .line 375
    iget v0, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->x:F

    neg-float v0, v0

    float-to-double v0, v0

    iget v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    neg-float v2, v2

    iget v3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->z:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    neg-float v4, v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getRadius(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F
    .locals 3
    .param p1, "data"    # Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .prologue
    .line 391
    iget v1, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    const v2, 0x3e99999a    # 0.3f

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v0, v1, v2

    .line 392
    .local v0, "tempRadius":F
    return v0
.end method

.method public getRandValue(F)F
    .locals 4
    .param p1, "randValue"    # F

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public initStarList()V
    .locals 53

    .prologue
    .line 104
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mIsChangingOption:Z

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 107
    const v4, 0x3e4ccccd    # 0.2f

    .line 108
    .local v4, "radius1":F
    const v25, 0x3e99999a    # 0.3f

    .line 109
    .local v25, "radius2":F
    const v15, 0x3ea3d70a    # 0.32f

    .line 110
    .local v15, "radius3":F
    const v49, 0x3eae147b    # 0.34f

    .line 111
    .local v49, "radius4":F
    const v40, 0x3ec28f5c    # 0.38f

    .line 113
    .local v40, "radius5":F
    const/high16 v5, 0x40d00000    # 6.5f

    .line 114
    .local v5, "verticalHeight1":F
    const v16, 0x40d66666    # 6.7f

    .line 115
    .local v16, "verticalHeight2":F
    const/high16 v26, 0x40e00000    # 7.0f

    .line 116
    .local v26, "verticalHeight3":F
    const/high16 v52, 0x41000000    # 8.0f

    .line 118
    .local v52, "verticalHeight4":F
    const v6, 0x4131999a    # 11.1f

    .line 120
    .local v6, "maxDegree":F
    const/high16 v8, 0x3f000000    # 0.5f

    .line 122
    .local v8, "minAlpha":F
    const/high16 v9, 0x44610000    # 900.0f

    .line 123
    .local v9, "expand1":F
    const/high16 v48, 0x447a0000    # 1000.0f

    .line 125
    .local v48, "expand2":F
    const/4 v10, 0x0

    .line 126
    .local v10, "tension1":F
    const/high16 v36, 0x3f800000    # 1.0f

    .line 127
    .local v36, "tension2":F
    const/high16 v21, 0x40000000    # 2.0f

    .line 129
    .local v21, "tension3":F
    const v11, 0x3e4ccccd    # 0.2f

    .line 130
    .local v11, "randValue1":F
    const v50, 0x3f19999a    # 0.6f

    .line 131
    .local v50, "randValue2":F
    const v51, 0x3f99999a    # 1.2f

    .line 132
    .local v51, "randValue3":F
    const v47, 0x402ccccd    # 2.7f

    .line 134
    .local v47, "randValue4":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    const/16 v3, 0x96

    .line 135
    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    .line 134
    invoke-virtual/range {v1 .. v11}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    const/16 v14, 0x96

    .line 137
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v12, p0

    move/from16 v17, v6

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v22, v11

    .line 136
    invoke-virtual/range {v12 .. v22}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x96

    .line 139
    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v22, p0

    move/from16 v27, v6

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v21

    move/from16 v32, v11

    .line 138
    invoke-virtual/range {v22 .. v32}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x96

    .line 141
    const/high16 v33, 0x3f800000    # 1.0f

    move-object/from16 v27, p0

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v37, v11

    .line 140
    invoke-virtual/range {v27 .. v37}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    const/16 v14, 0x96

    .line 143
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v12, p0

    move/from16 v17, v6

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v22, v11

    .line 142
    invoke-virtual/range {v12 .. v22}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x96

    .line 145
    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v22, p0

    move/from16 v27, v6

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v51

    .line 144
    invoke-virtual/range {v22 .. v32}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x96

    .line 147
    const/high16 v33, 0x3f800000    # 1.0f

    move-object/from16 v27, p0

    move/from16 v30, v49

    move/from16 v31, v26

    move/from16 v32, v6

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v37, v50

    .line 146
    invoke-virtual/range {v27 .. v37}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x96

    .line 149
    const/high16 v43, 0x3f800000    # 1.0f

    move-object/from16 v37, p0

    move/from16 v41, v26

    move/from16 v42, v6

    move/from16 v44, v8

    move/from16 v45, v9

    move/from16 v46, v10

    .line 148
    invoke-virtual/range {v37 .. v47}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x96

    .line 151
    const/high16 v43, 0x3f800000    # 1.0f

    move-object/from16 v37, p0

    move/from16 v41, v52

    move/from16 v42, v6

    move/from16 v44, v8

    move/from16 v45, v48

    move/from16 v46, v10

    .line 150
    invoke-virtual/range {v37 .. v47}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mListDataArray:[Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .line 154
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mIsChangingOption:Z

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidateDXObject()V

    .line 103
    return-void
.end method

.method public makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFFFFF)V
    .locals 14
    .param p2, "count"    # I
    .param p3, "radius"    # F
    .param p4, "verticalHeight"    # F
    .param p5, "maxDegree"    # F
    .param p6, "particleRadius"    # F
    .param p7, "minAlpha"    # F
    .param p8, "expand"    # F
    .param p9, "tension"    # F
    .param p10, "randValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;",
            ">;IFFFFFFFF)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "tempData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v9, v0, :cond_0

    .line 163
    int-to-float v6, v9

    move/from16 v0, p2

    int-to-float v7, v0

    div-float v10, v6, v7

    .line 164
    .local v10, "progress":F
    neg-float v6, v10

    mul-float v8, v6, p5

    .line 166
    .local v8, "degree":F
    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v6, v10

    add-float v11, p3, v6

    .line 168
    .local v11, "r":F
    float-to-double v6, v11

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    double-to-float v6, v6

    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRandValue(F)F

    move-result v7

    add-float v3, v6, v7

    .line 169
    .local v3, "px":F
    mul-float v4, p4, v10

    .line 170
    .local v4, "py":F
    float-to-double v6, v11

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    double-to-float v6, v6

    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRandValue(F)F

    move-result v7

    add-float v5, v6, v7

    .line 172
    .local v5, "pz":F
    new-instance v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;-><init>(FFFFF)V

    .line 173
    .local v2, "aModel":Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;
    move/from16 v0, p8

    iput v0, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->expand:F

    .line 174
    const/4 v6, -0x1

    iput v6, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->color:I

    .line 176
    move/from16 v0, p9

    iput v0, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tension:F

    .line 177
    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRandValue(F)F

    move-result v6

    iput v6, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->xRand:F

    .line 178
    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRandValue(F)F

    move-result v6

    iput v6, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yRand:F

    .line 179
    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRandValue(F)F

    move-result v6

    iput v6, v2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->zRand:F

    .line 181
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "aModel":Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;
    .end local v3    # "px":F
    .end local v4    # "py":F
    .end local v5    # "pz":F
    .end local v8    # "degree":F
    .end local v10    # "progress":F
    .end local v11    # "r":F
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 309
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 311
    iget-boolean v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mIsChangingOption:Z

    if-eqz v7, :cond_0

    .line 312
    return-void

    .line 315
    :cond_0
    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    .line 318
    :cond_1
    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mHeight:F

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mHeight:F

    .line 321
    :cond_2
    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mHeight:F

    cmpl-float v7, v7, v11

    if-nez v7, :cond_4

    .line 322
    :cond_3
    return-void

    .line 325
    :cond_4
    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mCurrentXDegree:F

    iget v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPlusDX:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    .line 327
    .local v3, "moveRight":F
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    const v8, -0xffff01

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 330
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .line 331
    .local v0, "aModel":Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->color:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->alpha:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mMainAlpha:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 334
    iget v7, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->xRand:F

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tension:F

    mul-float v5, v7, v8

    .line 335
    .local v5, "xPlus":F
    iget v7, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    cmpg-float v7, v7, v11

    if-gez v7, :cond_5

    .line 336
    const/4 v5, 0x0

    .line 338
    :cond_5
    iget v7, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->yRand:F

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tension:F

    mul-float v6, v7, v8

    .line 339
    .local v6, "yPlus":F
    iget v7, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    cmpg-float v7, v7, v11

    if-gez v7, :cond_6

    .line 340
    const/4 v6, 0x0

    .line 343
    :cond_6
    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    iget v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mWidth:F

    mul-float/2addr v8, v3

    const v9, 0x3da3d70a    # 0.08f

    mul-float/2addr v8, v9

    add-float v2, v7, v8

    .line 344
    .local v2, "leftMargin":F
    iget v7, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mHeight:F

    iget v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mHeight:F

    mul-float/2addr v8, v3

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    sub-float v4, v7, v8

    .line 347
    .local v4, "topMargin":F
    iget v7, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tx:F

    add-float/2addr v7, v5

    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->expand:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mScaleX:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    .line 348
    iget v8, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->ty:F

    add-float/2addr v8, v6

    iget v9, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->expand:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mScaleY:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v4

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getRadius(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)F

    move-result v9

    iget v10, v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->radius:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mScaleX:F

    mul-float/2addr v9, v10

    .line 350
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->mPaint:Landroid/graphics/Paint;

    .line 346
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 308
    .end local v0    # "aModel":Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;
    .end local v2    # "leftMargin":F
    .end local v4    # "topMargin":F
    .end local v5    # "xPlus":F
    .end local v6    # "yPlus":F
    :cond_7
    return-void
.end method
