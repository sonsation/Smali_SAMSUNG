.class public Lcom/samsung/android/visualeffect/circle/CircleContainer;
.super Landroid/widget/FrameLayout;
.source "CircleContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/circle/CircleContainer$1;,
        Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;
    }
.end annotation


# instance fields
.field private final COLOR_RIPPLE_RATIO:F

.field private final TOP_RIPPLE_RATIO:F

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

.field mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

.field mColorRipple:Landroid/widget/ImageView;

.field private mColorState:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mIsAutoState:Z

.field mTopRipple:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Lcom/samsung/android/visualeffect/circle/Circle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    .line 28
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    .line 49
    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    .line 28
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    .line 49
    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    .line 28
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    .line 49
    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    .line 28
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    .line 49
    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    .line 94
    const-string/jumbo v0, "circle_container_transition_name"

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setTransitionName(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private setRippleTint(ILandroid/widget/ImageView;)V
    .locals 3
    .param p1, "colorState"    # I
    .param p2, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 322
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v2, v1, p1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v0

    .line 324
    .local v0, "color":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 325
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 321
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method private startRippleAnim(I)V
    .locals 13
    .param p1, "colorState"    # I

    .prologue
    .line 216
    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v8}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setRippleTint(ILandroid/widget/ImageView;)V

    .line 219
    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 220
    .local v6, "scaleUpX":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 221
    .local v7, "scaleUpY":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 223
    .local v0, "fadeIn":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 224
    .local v5, "scaleUpSet":Landroid/animation/AnimatorSet;
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v7, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 225
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const v11, 0x3dcccccd    # 0.1f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 229
    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_3

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 230
    .local v3, "scaleDownX":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_4

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 231
    .local v4, "scaleDownY":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_5

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 233
    .local v1, "fadeOut":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 234
    .local v2, "scaleDownSet":Landroid/animation/AnimatorSet;
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 235
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3f19999a    # 0.6f

    const/4 v10, 0x0

    const v11, 0x3dcccccd    # 0.1f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    const-wide/16 v8, 0x29b

    invoke-virtual {v2, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 238
    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 239
    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;

    invoke-direct {v9, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 265
    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 215
    return-void

    .line 219
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    .line 220
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    .line 221
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 229
    :array_3
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 230
    :array_4
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 231
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public doAutoRippleAnim(I)V
    .locals 4
    .param p1, "initColorState"    # I

    .prologue
    const/4 v3, 0x1

    .line 308
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    return-void

    .line 310
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    .line 311
    iput p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    .line 313
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/Circle;->getScoreAnimProgress()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 314
    .local v0, "progress":I
    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    .line 315
    iput v3, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    .line 317
    :cond_1
    iget v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    invoke-direct {p0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->startRippleAnim(I)V

    .line 318
    iget v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircleColor(I)V

    .line 307
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v7, 0x3f83d70a    # 1.03f

    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 100
    .local v3, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 101
    .local v0, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 102
    .local v4, "widthDesc":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 104
    .local v1, "heightDesc":I
    if-nez v3, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 112
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 113
    iget-object v5, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 114
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v5, v3

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    int-to-float v5, v0

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    iget-object v5, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 120
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 119
    invoke-super {p0, v5, v6}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 98
    return-void

    .line 106
    :cond_1
    div-int v5, v0, v3

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    .line 107
    move v0, v3

    goto :goto_0

    .line 109
    :cond_2
    move v3, v0

    goto :goto_0
.end method

.method public removeCircleListener()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    .line 127
    return-void
.end method

.method public setCircle(II)V
    .locals 6
    .param p1, "parentSize"    # I
    .param p2, "ringRadius"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 132
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    .line 138
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ef

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 140
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f0

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    .line 151
    new-instance v1, Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    div-int/lit8 v3, p1, 0x2

    sub-int/2addr v3, p2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/visualeffect/circle/Circle;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    .line 152
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method public setCircleColor(I)V
    .locals 3
    .param p1, "colorState"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    if-eqz v0, :cond_0

    .line 202
    iput p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    .line 203
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v1, v2, p1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/Circle;->setRingColor(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public setCircleListener(Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    .line 123
    return-void
.end method

.method public setScore(IIZ)V
    .locals 1
    .param p1, "score"    # I
    .param p2, "colorState"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 162
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZI)V

    .line 161
    return-void
.end method

.method public setScore(IIZI)V
    .locals 3
    .param p1, "score"    # I
    .param p2, "colorState"    # I
    .param p3, "animate"    # Z
    .param p4, "duration"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    if-eqz v0, :cond_0

    .line 174
    iput p2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    .line 175
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    .line 176
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v1, v2, p2}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v1

    .line 175
    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/samsung/android/visualeffect/circle/Circle;->setScore(IIZI)V

    .line 172
    :cond_0
    return-void
.end method
