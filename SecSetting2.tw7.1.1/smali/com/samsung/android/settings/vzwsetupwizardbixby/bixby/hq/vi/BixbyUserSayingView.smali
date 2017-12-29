.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;
.super Landroid/view/View;
.source "BixbyUserSayingView.java"


# static fields
.field private static CIRCLE_RADIUS_INIT_FACTOR:[F

.field private static final CIRCLE_WIGGLE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final LISTENING_TIMER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final START_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final STOP_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final TAG:Ljava/lang/String;

.field private static final USER_SAYING_NORMALIZED_DB_DOWN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final USER_SAYING_NORMALIZED_DB_UP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final CENTER_X:F

.field private final CENTER_Y:F

.field private final CIRCLE_BASE_RADIUS:F

.field private final CIRCLE_INIT_X_POS:[F

.field private final CIRCLE_INIT_Y_POS:[F

.field private final WIGGLE_MAX_X:F

.field private final WIGGLE_MAX_Y:F

.field private final WIGGLE_MIN_X:F

.field private final WIGGLE_MIN_Y:F

.field private final WIGGLE_X_FACTOR:F

.field private final WIGGLE_Y_FACTOR:F

.field private mAnimHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;

.field private mCirclePaint:[Landroid/graphics/Paint;

.field private mCircleRadius:[F

.field private mCircleRadiusScale:[F

.field private mCircleXPos:[F

.field private mCircleYPos:[F

.field private mColorValue:[I

.field private mNormalizedDb:F

.field private mPivotGapX:F

.field private mPivotGapY:F

.field private mPurpleColorValue:[I

.field private mRedColorValue:[I

.field private mRunStopSequence:Z

.field private mUserSayingTimeoutHandler:Landroid/os/Handler;

.field private mUserSayingTimeoutRunnable:Ljava/lang/Runnable;

.field private mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

.field private mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

.field private mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

.field private mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

.field private mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

.field private mWiggleHandler:Landroid/os/Handler;

.field private mWiggleRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_WIGGLE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleYPos:[F

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mNormalizedDb:F

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mPivotGapX:F

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mPivotGapY:F

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2()Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->USER_SAYING_NORMALIZED_DB_DOWN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MIN_X:F

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MIN_Y:F

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_X_FACTOR:F

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_Y_FACTOR:F

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleRadiusScale:[F

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleXPos:[F

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mNormalizedDb:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mRunStopSequence:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v2, 0x3e2e147b    # 0.17f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 22
    const-class v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_RADIUS_INIT_FACTOR:[F

    .line 50
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->LISTENING_TIMER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3c23d70a    # 0.01f

    invoke-direct {v0, v1, v3, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->START_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v2, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->STOP_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 62
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->USER_SAYING_NORMALIZED_DB_UP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 65
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->USER_SAYING_NORMALIZED_DB_DOWN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 70
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_WIGGLE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 21
    return-void

    .line 45
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f90a3d7    # 1.13f
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0a01e5

    const/high16 v3, 0x40000000    # 2.0f

    .line 114
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    const v0, 0x66ccf2ff

    const v1, 0x4cb2ecff    # 9.3808632E7f

    const v2, 0x2699e5ff

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mColorValue:[I

    .line 29
    const v0, 0x26f1c40f

    const v1, 0x4ce67e22    # 1.2084456E8f

    const v2, 0x66e74c3c

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mRedColorValue:[I

    .line 30
    const v0, 0x66c22dd5

    const v1, 0x4ccb71d7    # 1.06663608E8f

    const v2, 0x26d68adf

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mPurpleColorValue:[I

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getLcdWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_BASE_RADIUS:F

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    aput v1, v0, v5

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    aput v1, v0, v6

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    aput v1, v0, v7

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_INIT_X_POS:[F

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    aput v1, v0, v5

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    aput v1, v0, v6

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    aput v1, v0, v7

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_INIT_Y_POS:[F

    .line 72
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MIN_X:F

    .line 73
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MAX_X:F

    .line 74
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MIN_Y:F

    .line 75
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MAX_Y:F

    .line 77
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MAX_X:F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MIN_X:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_X_FACTOR:F

    .line 78
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MAX_Y:F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MIN_Y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_Y_FACTOR:F

    .line 96
    iput-boolean v5, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mRunStopSequence:Z

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->init()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0a01e5

    const/high16 v3, 0x40000000    # 2.0f

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const v0, 0x66ccf2ff

    const v1, 0x4cb2ecff    # 9.3808632E7f

    const v2, 0x2699e5ff

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mColorValue:[I

    .line 29
    const v0, 0x26f1c40f

    const v1, 0x4ce67e22    # 1.2084456E8f

    const v2, 0x66e74c3c

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mRedColorValue:[I

    .line 30
    const v0, 0x66c22dd5

    const v1, 0x4ccb71d7    # 1.06663608E8f

    const v2, 0x26d68adf

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mPurpleColorValue:[I

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getLcdWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_BASE_RADIUS:F

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    aput v1, v0, v5

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    aput v1, v0, v6

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    aput v1, v0, v7

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_INIT_X_POS:[F

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    aput v1, v0, v5

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    aput v1, v0, v6

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    aput v1, v0, v7

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_INIT_Y_POS:[F

    .line 72
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MIN_X:F

    .line 73
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_X:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MAX_X:F

    .line 74
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MIN_Y:F

    .line 75
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CENTER_Y:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MAX_Y:F

    .line 77
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MAX_X:F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MIN_X:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_X_FACTOR:F

    .line 78
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MAX_Y:F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_MIN_Y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->WIGGLE_Y_FACTOR:F

    .line 96
    iput-boolean v5, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mRunStopSequence:Z

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->init()V

    .line 118
    return-void
.end method

.method private getLcdWidth()I
    .locals 4

    .prologue
    .line 541
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 542
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 543
    .local v0, "mDisplay":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 544
    iget v2, v1, Landroid/graphics/Point;->x:I

    return v2
.end method

.method private init()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;

    invoke-direct {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->initValues()V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->setClearViewMode()V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->initAnim()V

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->initHandler()V

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->initRunnable()V

    .line 123
    return-void
.end method

.method private initAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 174
    new-array v0, v1, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    .line 175
    new-array v0, v1, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    .line 173
    return-void
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    .line 178
    return-void
.end method

.method private initPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 162
    new-array v2, v3, [Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCirclePaint:[Landroid/graphics/Paint;

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 165
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 167
    .local v1, "p":Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mColorValue:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCirclePaint:[Landroid/graphics/Paint;

    aput-object v1, v2, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "p":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method private initRunnable()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mUserSayingTimeoutRunnable:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$2;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mWiggleRunnable:Ljava/lang/Runnable;

    .line 183
    return-void
.end method

.method private initValues()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mPivotGapX:F

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x3c75c28f    # 0.015f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mPivotGapY:F

    .line 139
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleXPos:[F

    .line 140
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleYPos:[F

    .line 141
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleRadius:[F

    .line 143
    iput v8, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mNormalizedDb:F

    .line 144
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleRadiusScale:[F

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleRadius:[F

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_BASE_RADIUS:F

    sget-object v3, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_RADIUS_INIT_FACTOR:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 149
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleRadiusScale:[F

    aput v8, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleXPos:[F

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_INIT_X_POS:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 153
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleXPos:[F

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_INIT_X_POS:[F

    aget v2, v2, v6

    iget v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mPivotGapX:F

    sub-float/2addr v2, v3

    aput v2, v1, v6

    .line 154
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleXPos:[F

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_INIT_X_POS:[F

    aget v2, v2, v7

    iget v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mPivotGapX:F

    add-float/2addr v2, v3

    aput v2, v1, v7

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleYPos:[F

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_INIT_Y_POS:[F

    aget v2, v2, v5

    iget v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mPivotGapY:F

    sub-float/2addr v2, v3

    aput v2, v1, v5

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleYPos:[F

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_INIT_Y_POS:[F

    aget v2, v2, v6

    iget v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mPivotGapY:F

    add-float/2addr v2, v3

    aput v2, v1, v6

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleYPos:[F

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->CIRCLE_INIT_Y_POS:[F

    aget v2, v2, v7

    iget v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mPivotGapY:F

    add-float/2addr v2, v3

    aput v2, v1, v7

    .line 133
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 458
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 460
    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mWiggleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 464
    iput-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mUserSayingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 469
    iput-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 474
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 475
    iput-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    .line 478
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 479
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 480
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 481
    iput-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    .line 490
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 491
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 492
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 493
    iput-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    .line 496
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    .line 497
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    .line 498
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 499
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 500
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    aput-object v3, v1, v0

    .line 502
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    .line 503
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 504
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 505
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    aput-object v3, v1, v0

    .line 496
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 441
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 443
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleXPos:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleYPos:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleRadius:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCircleRadiusScale:[F

    aget v4, v4, v0

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mCirclePaint:[Landroid/graphics/Paint;

    aget-object v4, v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method public setClearViewMode()V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mColorValue:[I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 450
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mColorValue:[I

    const v1, 0x4cffffff    # 1.3421772E8f

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 451
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mColorValue:[I

    const v1, 0x33ffffff

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 453
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->initPaint()V

    .line 448
    return-void
.end method

.method public startDefaultListeningAnimation()V
    .locals 21

    .prologue
    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 276
    :cond_0
    new-instance v9, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$3;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$3;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)V

    .line 282
    .local v9, "startListeningNormalizedDbUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    new-instance v10, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$4;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$4;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)V

    .line 289
    .local v10, "listener":Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$ShortAnimatorListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 292
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    .line 294
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;

    const/4 v3, 0x2

    new-array v3, v3, [F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mNormalizedDb:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x42700000    # 60.0f

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 295
    sget-object v8, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->START_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 294
    const-wide/16 v4, 0x320

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 299
    new-instance v19, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$5;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)V

    .line 318
    .local v19, "listeningTimerUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 321
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    .line 323
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;

    const/4 v2, 0x2

    new-array v13, v2, [F

    fill-array-data v13, :array_0

    sget-object v18, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->LISTENING_TIMER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const-wide/16 v14, 0x1388

    const-wide/16 v16, 0x0

    .line 324
    const/16 v20, 0x0

    .line 323
    invoke-virtual/range {v12 .. v20}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 329
    sget-object v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startDefaultListeningAnimation - clear mRunStopSequence value as false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mRunStopSequence:Z

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mWiggleRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 267
    return-void

    .line 323
    nop

    :array_0
    .array-data 4
        0x0
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public stopUserSaying()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 366
    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mRunStopSequence:Z

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mRunStopSequence is already running, ignore reqeust"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 370
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopUserSaying sequence run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput-boolean v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mRunStopSequence:Z

    .line 374
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mUserSayingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    :cond_2
    new-instance v7, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$7;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)V

    .line 389
    .local v7, "normalizedDbDownUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    new-instance v8, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$8;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$8;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)V

    .line 404
    .local v8, "normalizedDbDownListener":Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$ShortAnimatorListener;
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 407
    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mNormalizedDb:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    .line 410
    sget-object v6, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->STOP_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 409
    const-wide/16 v2, 0x258

    .line 410
    const-wide/16 v4, 0x0

    .line 409
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    .line 431
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 434
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 435
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->mWiggleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    :cond_4
    return-void
.end method
