.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;
.super Landroid/widget/FrameLayout;
.source "Finger.java"


# instance fields
.field private final ANIMATION_OFF_DURATION:J

.field private final ANIMATION_ON_DURATION:J

.field private final TAG:Ljava/lang/String;

.field private alphaAnimator:Landroid/animation/ValueAnimator;

.field private alphaValue:F

.field private colorViewOffAnimationValue:I

.field private colorViewOffAnimator:Landroid/animation/ValueAnimator;

.field private colorViewOnAnimationValue:F

.field private colorViewOnAnimator:Landroid/animation/ValueAnimator;

.field private context:Landroid/content/Context;

.field private fingerColor:I

.field private fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

.field private greyColor:I

.field private height:I

.field private inverseFinger:Landroid/widget/ImageView;

.field private inverseFingerResID:I

.field private mIsHidden:Z

.field private startRatio:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fingerColor"    # I
    .param p5, "greyColor"    # I
    .param p6, "inverseFingerResID"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "FingerScanEffect"

    .line 13
    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x190

    .line 14
    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->ANIMATION_ON_DURATION:J

    const-wide/16 v0, 0xc8

    .line 15
    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->ANIMATION_OFF_DURATION:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    const v0, 0x3ecccccd    # 0.4f

    .line 26
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startRatio:F

    .line 38
    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    .line 39
    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    .line 40
    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    .line 41
    iput p4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerColor:I

    .line 42
    iput p5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->greyColor:I

    .line 43
    iput p6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFingerResID:I

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setLayout()V

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setAnimator()V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setLayoutDirection(I)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    .prologue
    .line 11
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOnAnimationValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;
    .param p1, "x1"    # F

    .prologue
    .line 11
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOnAnimationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    .prologue
    .line 11
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startRatio:F

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    .prologue
    .line 11
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOffAnimationValue:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOffAnimationValue:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    .prologue
    .line 11
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;
    .param p1, "x1"    # F

    .prologue
    .line 11
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    return p1
.end method

.method private cancelAnimator()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 117
    return-void
.end method

.method private setAnimator()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    new-array v0, v6, [F

    aput v7, v0, v4

    aput v8, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOnAnimator:Landroid/animation/ValueAnimator;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    new-array v0, v6, [I

    const/16 v1, 0xff

    aput v1, v0, v4

    aput v4, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOffAnimator:Landroid/animation/ValueAnimator;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOffAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    new-array v0, v6, [F

    aput v7, v0, v4

    aput v8, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 84
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$3;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    return-void
.end method

.method private setLayout()V
    .locals 6

    .prologue
    .line 52
    new-instance v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerColor:I

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->greyColor:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->addView(Landroid/view/View;II)V

    .line 55
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFingerResID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->addView(Landroid/view/View;II)V

    .line 60
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    aput v4, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 123
    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsHidden:Z

    .line 125
    :cond_0
    return-void
.end method

.method public isHide()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsHidden:Z

    if-nez v0, :cond_0

    .line 139
    return v2

    .line 137
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public scanOff()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->cancelAnimator()V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->isHide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 112
    return-void

    .line 108
    :cond_0
    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    .line 109
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setAlpha(F)V

    goto :goto_0
.end method

.method public scanOn()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->cancelAnimator()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setPaintAlpha(I)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->isHide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->colorViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 103
    return-void

    .line 99
    :cond_0
    iput v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    .line 100
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setAlpha(F)V

    goto :goto_0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->isHide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 131
    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsHidden:Z

    goto :goto_0
.end method
