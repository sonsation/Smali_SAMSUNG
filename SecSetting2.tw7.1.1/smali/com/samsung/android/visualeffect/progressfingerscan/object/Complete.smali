.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;
.super Landroid/widget/FrameLayout;
.source "Complete.java"


# instance fields
.field private final ANIMATION_DELAY:J

.field private final ANIMATION_DURATION:J

.field private final TAG:Ljava/lang/String;

.field private checkView:Landroid/widget/ImageView;

.field private completeColor:I

.field private completeMaskResID:I

.field private completeResID:I

.field private completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

.field private completeViewOnAnimationValue:F

.field private completeViewOnAnimator:Landroid/animation/ValueAnimator;

.field private context:Landroid/content/Context;

.field private drawingHeight:I

.field private drawingWidth:I

.field private handler:Landroid/os/Handler;

.field private height:I

.field private isOn:Z

.field private isViewAdded:Z

.field private maskView:Landroid/widget/ImageView;

.field private startX:I

.field private startY:I

.field private strokeWidth:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIIII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "startX"    # I
    .param p5, "startY"    # I
    .param p6, "drawingWidth"    # I
    .param p7, "drawingHeight"    # I
    .param p8, "completeColor"    # I
    .param p9, "completeResID"    # I
    .param p10, "completeMaskResID"    # I
    .param p11, "strokeWidth"    # I

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    .line 21
    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->ANIMATION_DURATION:J

    const-wide/16 v0, 0x12c

    .line 22
    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->ANIMATION_DELAY:J

    .line 38
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    .line 39
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    .line 48
    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    .line 49
    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->width:I

    .line 50
    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->height:I

    .line 51
    iput p4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startX:I

    .line 52
    iput p5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startY:I

    .line 53
    iput p6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingWidth:I

    .line 54
    iput p7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingHeight:I

    .line 55
    iput p8, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeColor:I

    .line 56
    iput p9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeResID:I

    .line 57
    iput p10, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeMaskResID:I

    .line 58
    iput p11, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->strokeWidth:I

    .line 60
    new-instance v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->setLayout()V

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->setAnimator()V

    .line 69
    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->setLayoutDirection(I)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeOnDelayed()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimationValue:F

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimationValue:F

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    return-object v0
.end method

.method private completeOnDelayed()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 109
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 110
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 111
    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    .line 113
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingWidth:I

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingHeight:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->addView(Landroid/view/View;II)V

    .line 114
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 115
    .local v0, "customAnimate":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v6, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 116
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 117
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingWidth:I

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingHeight:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->addView(Landroid/view/View;II)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$anim;->check_animation:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 125
    .local v1, "scaleRight":Landroid/view/animation/Animation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 126
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 127
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    return-void
.end method

.method private setAnimator()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 90
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    return-void
.end method

.method private setLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 73
    new-instance v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->width:I

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->height:I

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeColor:I

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->strokeWidth:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->width:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->height:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->addView(Landroid/view/View;II)V

    .line 76
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeResID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 82
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeMaskResID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 87
    return-void
.end method


# virtual methods
.method public completeOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    if-eqz v0, :cond_0

    .line 132
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    .line 133
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->setRatio(F)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    if-nez v0, :cond_1

    .line 141
    :goto_0
    return-void

    .line 131
    :cond_0
    return-void

    .line 137
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    .line 138
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->removeView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public completeOn()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    .line 104
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 106
    return-void

    .line 102
    :cond_0
    return-void
.end method
