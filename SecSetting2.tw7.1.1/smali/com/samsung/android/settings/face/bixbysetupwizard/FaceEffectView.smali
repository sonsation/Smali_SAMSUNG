.class public Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;
.super Landroid/widget/FrameLayout;
.source "FaceEffectView.java"


# instance fields
.field private final COMPLETE_VI_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private final mBackgroundColor:I

.field private mComplete:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

.field private mCompleteAnimationVal:F

.field private mCompleteAnimator:Landroid/animation/ValueAnimator;

.field private final mCompleteColor:I

.field private mEffectSize:I

.field private mProgress:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

.field private final mProgressColor:I

.field private mStrokeWidth:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mComplete:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimationVal:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimationVal:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const-string/jumbo v0, "SemBioFaceEffectView"

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->TAG:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgress:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    .line 18
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mComplete:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    .line 20
    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mEffectSize:I

    .line 21
    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mStrokeWidth:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimationVal:F

    .line 24
    const v0, -0x9e4713    # -3.0003649E38f

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgressColor:I

    .line 25
    const v0, 0x33737373

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mBackgroundColor:I

    .line 26
    const v0, 0x54499ebd

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteColor:I

    .line 28
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->COMPLETE_VI_DURATION:I

    .line 30
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimator:Landroid/animation/ValueAnimator;

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->initProgressEffect(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string/jumbo v0, "SemBioFaceEffectView"

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->TAG:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgress:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    .line 18
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mComplete:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    .line 20
    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mEffectSize:I

    .line 21
    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mStrokeWidth:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimationVal:F

    .line 24
    const v0, -0x9e4713    # -3.0003649E38f

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgressColor:I

    .line 25
    const v0, 0x33737373

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mBackgroundColor:I

    .line 26
    const v0, 0x54499ebd

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteColor:I

    .line 28
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->COMPLETE_VI_DURATION:I

    .line 30
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimator:Landroid/animation/ValueAnimator;

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->initProgressEffect(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const-string/jumbo v0, "SemBioFaceEffectView"

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->TAG:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgress:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    .line 18
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mComplete:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    .line 20
    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mEffectSize:I

    .line 21
    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mStrokeWidth:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimationVal:F

    .line 24
    const v0, -0x9e4713    # -3.0003649E38f

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgressColor:I

    .line 25
    const v0, 0x33737373

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mBackgroundColor:I

    .line 26
    const v0, 0x54499ebd

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteColor:I

    .line 28
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->COMPLETE_VI_DURATION:I

    .line 30
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimator:Landroid/animation/ValueAnimator;

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->initProgressEffect(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    const-string/jumbo v0, "SemBioFaceEffectView"

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->TAG:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgress:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    .line 18
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mComplete:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    .line 20
    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mEffectSize:I

    .line 21
    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mStrokeWidth:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimationVal:F

    .line 24
    const v0, -0x9e4713    # -3.0003649E38f

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgressColor:I

    .line 25
    const v0, 0x33737373

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mBackgroundColor:I

    .line 26
    const v0, 0x54499ebd

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteColor:I

    .line 28
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->COMPLETE_VI_DURATION:I

    .line 30
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimator:Landroid/animation/ValueAnimator;

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->initProgressEffect(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private initProgressEffect(Landroid/content/Context;)V
    .locals 7
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string/jumbo v0, "SemBioFaceEffectView"

    const-string/jumbo v1, "initProgressEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mEffectSize:I

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mStrokeWidth:I

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgress:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mEffectSize:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mStrokeWidth:I

    if-lez v0, :cond_0

    .line 57
    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mEffectSize:I

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mEffectSize:I

    iget v6, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mStrokeWidth:I

    const v4, -0x9e4713    # -3.0003649E38f

    const v5, 0x33737373

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgress:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mComplete:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mEffectSize:I

    if-lez v0, :cond_1

    .line 60
    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mEffectSize:I

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mEffectSize:I

    const v3, 0x54499ebd

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mComplete:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mComplete:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->setRatio(F)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgress:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mComplete:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mComplete:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->addView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgress:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->addView(Landroid/view/View;)V

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->setCompleteAnimator()V

    .line 52
    :cond_2
    return-void
.end method

.method private setCompleteAnimator()V
    .locals 6

    .prologue
    .line 87
    const-string/jumbo v0, "SemBioFaceEffectView"

    const-string/jumbo v1, "setCompleteAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimator:Landroid/animation/ValueAnimator;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    return-void

    .line 88
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public setPrecent(F)V
    .locals 3
    .param p1, "percent"    # F

    .prologue
    .line 72
    const-string/jumbo v0, "SemBioFaceEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPercent : percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mProgress:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->setPercent(F)V

    .line 71
    return-void
.end method

.method public startCompleteEffect()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->mCompleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 76
    return-void

    .line 81
    :cond_0
    const-string/jumbo v0, "SemBioFaceEffectView"

    const-string/jumbo v1, "CompleteAnimator is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
