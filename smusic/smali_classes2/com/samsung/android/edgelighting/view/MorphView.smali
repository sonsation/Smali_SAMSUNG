.class public Lcom/samsung/android/edgelighting/view/MorphView;
.super Lcom/samsung/android/edgelighting/view/AbsToastView;
.source "MorphView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mMainText:Landroid/widget/TextView;

.field private mNotiIcon:Landroid/widget/ImageView;

.field private mNotiRoot:Landroid/widget/LinearLayout;

.field private mSubText:Landroid/widget/TextView;

.field mTextAnimator:Landroid/animation/ObjectAnimator;

.field private mTextRoot:Landroid/widget/LinearLayout;

.field private mToastRootLayout:Landroid/widget/LinearLayout;

.field private mTouchRect:Landroid/graphics/Rect;

.field mWidthAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/view/MorphView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const-string v1, "layout_inflater"

    .line 46
    .local v1, "service":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    .local v0, "li":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getLayoutId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    sget v2, Lcom/samsung/android/edgelighting/R$id;->root:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 50
    sget v2, Lcom/samsung/android/edgelighting/R$id;->notiIcon:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    .line 51
    sget v2, Lcom/samsung/android/edgelighting/R$id;->main_text:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 52
    sget v2, Lcom/samsung/android/edgelighting/R$id;->sub_text:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 53
    sget v2, Lcom/samsung/android/edgelighting/R$id;->text_layout:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/LinearLayout;

    .line 54
    sget v2, Lcom/samsung/android/edgelighting/R$id;->notiIcon_root:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    .line 56
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/view/MorphView;FJJ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/MorphView;
    .param p1, "x1"    # F
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/edgelighting/view/MorphView;->changeNotiText(FJJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/MorphView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private changeNotiText(FJJ)V
    .locals 4
    .param p1, "value"    # F
    .param p2, "startDelay"    # J
    .param p4, "duration"    # J

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/LinearLayout;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    .line 371
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 372
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/view/MorphView$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/edgelighting/view/MorphView$2;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 396
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 397
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 398
    return-void
.end method

.method private updateMaxMinWidth([Ljava/lang/String;)V
    .locals 3
    .param p1, "tickerText"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 88
    aget-object v0, p1, v2

    if-eqz v0, :cond_1

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextMaxWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 97
    :cond_1
    return-void
.end method

.method private updateTextColor(I)V
    .locals 14
    .param p1, "lightingColor"    # I

    .prologue
    const-wide v12, 0x3feb333333333333L    # 0.85

    const-wide v10, 0x3fee666666666666L    # 0.95

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 119
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 120
    .local v1, "pixelHSV":[F
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->toast_default_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 123
    .local v0, "color":I
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_top_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 154
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastFullColor:Z

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/edgelighting/view/MorphView;->setIconColor(II)V

    .line 160
    return-void

    .line 125
    :cond_2
    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_low_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 128
    :cond_3
    aget v2, v1, v8

    const/high16 v3, 0x41f00000    # 30.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_4

    aget v2, v1, v8

    const/high16 v3, 0x433e0000    # 190.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_9

    aget v2, v1, v8

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_9

    .line 129
    :cond_4
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_5

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_5

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-gez v2, :cond_7

    :cond_5
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_6

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_6

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_7

    :cond_6
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_8

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_8

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-gtz v2, :cond_8

    .line 132
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_high_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 134
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_mid_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 136
    :cond_9
    aget v2, v1, v8

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_e

    aget v2, v1, v8

    const/high16 v3, 0x43110000    # 145.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_e

    .line 137
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_a

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-gez v2, :cond_c

    :cond_a
    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_b

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_c

    :cond_b
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_d

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_d

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-gtz v2, :cond_d

    .line 140
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_high_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 142
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_mid_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 144
    :cond_e
    aget v2, v1, v8

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_f

    aget v2, v1, v8

    const/high16 v3, 0x42480000    # 50.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_10

    :cond_f
    aget v2, v1, v8

    const/high16 v3, 0x43110000    # 145.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, v1, v8

    const/high16 v3, 0x433e0000    # 190.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 145
    :cond_10
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_11

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-gez v2, :cond_13

    :cond_11
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_12

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_12

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_13

    :cond_12
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc3333333333333L    # 0.15

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_14

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_14

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-gtz v2, :cond_14

    .line 148
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_high_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 150
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_mid_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0
.end method


# virtual methods
.method public addTouchInsector()V
    .locals 3

    .prologue
    .line 359
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserver()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCompute:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V

    .line 360
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserver()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCompute:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method public changeNotificationWidth(JJII)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "duration"    # J
    .param p5, "fromWidth"    # I
    .param p6, "toWidth"    # I

    .prologue
    .line 468
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, p5

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p6

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    .line 469
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/view/MorphView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/MorphView$4;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 481
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/view/MorphView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/MorphView$5;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 503
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/utils/SineInOut80;

    invoke-direct {v1}, Lcom/samsung/android/edgelighting/utils/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 505
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 506
    return-void
.end method

.method public changeToastStyle(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 517
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 518
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v3, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 519
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 520
    .local v1, "bgShape":Landroid/graphics/drawable/GradientDrawable;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 521
    const/4 v3, 0x4

    const/high16 v4, -0x1000000

    or-int/2addr v4, p1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 523
    .end local v1    # "bgShape":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/edgelighting/R$color;->black_toast_text_color:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 524
    .local v2, "textColor":I
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 525
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 526
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 527
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/samsung/android/edgelighting/R$layout;->morph_view:I

    return v0
.end method

.method public getTouchRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide(J)V
    .locals 11
    .param p1, "startDelay"    # J

    .prologue
    .line 408
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    .line 409
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    :cond_1
    sget-object v0, Lcom/samsung/android/edgelighting/view/MorphView;->TAG:Ljava/lang/String;

    const-string v1, "Morph animation is running. So ignore hide action."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    return-void

    .line 413
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mIsHiding:Z

    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->isEmptyTickerText()Z

    move-result v0

    if-nez v0, :cond_3

    .line 415
    const/4 v1, 0x0

    const-wide/16 v4, 0x82

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/edgelighting/view/MorphView;->changeNotiText(FJJ)V

    .line 416
    const-wide/16 v4, 0xfa

    iget v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMaxWidth:I

    iget v7, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMinWidth:I

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/edgelighting/view/MorphView;->changeNotificationWidth(JJII)V

    .line 418
    :cond_3
    const-string/jumbo v0, "translationY"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, -0x3c810000    # -255.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 419
    .local v9, "yAnim":Landroid/animation/ObjectAnimator;
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 421
    .local v8, "aAnim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 422
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 423
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f170a3d    # 0.59f

    const v2, -0x41428f5c    # -0.37f

    const v3, 0x3f51eb85    # 0.82f

    const v4, 0x3ec7ae14    # 0.39f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/samsung/android/edgelighting/view/MorphView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/MorphView$3;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 447
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public initialize()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 192
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsToastView;->initialize()V

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/edgelighting/R$dimen;->morph_initial_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 195
    .local v1, "initialWidth":I
    const/4 v5, 0x0

    .line 197
    .local v5, "width":I
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 198
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v6, v9, v9}, Landroid/widget/TextView;->measure(II)V

    .line 199
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 201
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/edgelighting/R$dimen;->toast_text_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/edgelighting/R$dimen;->toast_bottom_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/edgelighting/R$dimen;->toast_side_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v0, v6, v7

    .line 203
    .local v0, "height":I
    if-ge v1, v0, :cond_0

    .line 204
    move v1, v0

    .line 207
    .end local v0    # "height":I
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 208
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    iget v7, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextMaxWidth:I

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 210
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v6, v9, v9}, Landroid/widget/TextView;->measure(II)V

    .line 211
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 214
    :cond_1
    const/4 v2, 0x2

    .line 215
    .local v2, "marginWeight":I
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 216
    const/4 v2, 0x3

    .line 218
    :cond_2
    if-lez v5, :cond_4

    .line 219
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 220
    add-int v6, v5, v1

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_start_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_end_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v3, v6, v7

    .line 229
    .local v3, "maxWidth":I
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->setMinMax(II)V

    .line 230
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->setWidthHeight(II)V

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/edgelighting/R$dimen;->toast_top_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 235
    .local v4, "topMargin":I
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->top:I

    .line 236
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v7, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidth:I

    iget v8, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMaxWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 237
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v7, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMinWidth:I

    add-int/2addr v7, v4

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 238
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v7, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidth:I

    iget-object v8, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->reset()V

    .line 240
    return-void

    .line 223
    .end local v3    # "maxWidth":I
    .end local v4    # "topMargin":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_start_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v6, v2

    add-int/2addr v6, v5

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_end_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v3, v6, v7

    .restart local v3    # "maxWidth":I
    goto :goto_0

    .line 227
    .end local v3    # "maxWidth":I
    :cond_4
    move v3, v1

    .restart local v3    # "maxWidth":I
    goto :goto_0
.end method

.method public isEmptyTickerText()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 510
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 511
    :cond_1
    const/4 v0, 0x0

    .line 513
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reCalcWidth()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->morph_initial_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 248
    .local v1, "initialWidth":I
    const/4 v4, 0x0

    .line 251
    .local v4, "width":I
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 252
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 253
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 255
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/edgelighting/R$dimen;->toast_text_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/edgelighting/R$dimen;->toast_bottom_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/edgelighting/R$dimen;->toast_side_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v0, v5, v6

    .line 257
    .local v0, "height":I
    if-ge v1, v0, :cond_0

    .line 258
    move v1, v0

    .line 261
    .end local v0    # "height":I
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 262
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    iget v6, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextMaxWidth:I

    sub-int/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 264
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 265
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 268
    :cond_1
    const/4 v2, 0x2

    .line 269
    .local v2, "marginWeight":I
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 270
    const/4 v2, 0x3

    .line 272
    :cond_2
    if-lez v4, :cond_4

    .line 273
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 274
    add-int v5, v4, v1

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_start_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_end_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v3, v5, v6

    .line 283
    .local v3, "maxWidth":I
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->setMinMax(II)V

    .line 284
    return-void

    .line 277
    .end local v3    # "maxWidth":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_start_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_end_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v3, v5, v6

    .restart local v3    # "maxWidth":I
    goto :goto_0

    .line 281
    .end local v3    # "maxWidth":I
    :cond_4
    move v3, v1

    .restart local v3    # "maxWidth":I
    goto :goto_0
.end method

.method public removeTouchInsertoc()V
    .locals 3

    .prologue
    .line 364
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserver()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCompute:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    const/high16 v0, -0x3c860000    # -250.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/MorphView;->setTranslationY(F)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 299
    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->setAlpha(F)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->isAnimating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 314
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->isAnimating:Ljava/lang/Boolean;

    .line 315
    return-void
.end method

.method public setFillToastColor(Z)V
    .locals 0
    .param p1, "isFull"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastFullColor:Z

    .line 102
    return-void
.end method

.method public setIconColor(II)V
    .locals 5
    .param p1, "bgColor"    # I
    .param p2, "color"    # I

    .prologue
    .line 162
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 163
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 164
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v3, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 166
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 167
    .local v1, "bgShape":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 168
    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 170
    .end local v1    # "bgShape":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    if-nez p2, :cond_1

    .line 171
    const p2, -0xb38f5d

    .line 175
    :cond_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMinMax(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMinWidth:I

    .line 403
    iput p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMaxWidth:I

    .line 404
    return-void
.end method

.method public setNotiIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "appIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method

.method public setNotiText([Ljava/lang/String;)V
    .locals 5
    .param p1, "tickerText"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    aget-object v1, p1, v3

    if-eqz v1, :cond_0

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    aget-object v1, p1, v4

    if-eqz v1, :cond_1

    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const-string/jumbo v1, "sec-roboto-condensed"

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 79
    .local v0, "tf":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/MorphView;->updateMaxMinWidth([Ljava/lang/String;)V

    .line 85
    return-void

    .line 81
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_1
    const-string/jumbo v1, "sec-roboto-condensed"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 82
    .restart local v0    # "tf":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public setPreviewIconColor(I)V
    .locals 3
    .param p1, "bgColor"    # I

    .prologue
    .line 183
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 185
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 186
    .local v1, "bgShape":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 187
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 189
    .end local v1    # "bgShape":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    return-void
.end method

.method public setToastColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 105
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 108
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 109
    .local v1, "bgShape":Landroid/graphics/drawable/GradientDrawable;
    iget-boolean v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastFullColor:Z

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 115
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bgShape":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/MorphView;->updateTextColor(I)V

    .line 116
    return-void
.end method

.method public setWidthHeight(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/edgelighting/R$dimen;->toast_side_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v0, v3, 0x2

    .line 454
    .local v0, "bottom_padding":I
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 455
    .local v1, "param":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 456
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 457
    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 460
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    sub-int v3, p1, v0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 461
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 462
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    return-void
.end method

.method public show(J)V
    .locals 9
    .param p1, "startDelay"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 320
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->isAnimating:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->isAnimating:Ljava/lang/Boolean;

    .line 324
    const-string/jumbo v2, "translationY"

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v8

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 325
    .local v1, "yAnim":Landroid/animation/ObjectAnimator;
    const-string v2, "alpha"

    new-array v3, v7, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v8

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 327
    .local v0, "aAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 328
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 329
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e2e147b    # 0.17f

    const v4, 0x3f2b851f    # 0.67f

    const v5, 0x3f051eb8    # 0.52f

    const v6, 0x3fbc28f6    # 1.47f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v8

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 331
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/samsung/android/edgelighting/view/MorphView$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/edgelighting/view/MorphView$1;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 355
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method protected updateRefreshUI(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 531
    invoke-super {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsToastView;->updateRefreshUI(II)V

    .line 532
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mIsHiding:Z

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->initialize()V

    .line 534
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->show(J)V

    .line 536
    :cond_0
    return-void
.end method

.method public updateToast()V
    .locals 3

    .prologue
    .line 287
    sget-object v1, Lcom/samsung/android/edgelighting/view/MorphView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateToast  hiding : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mIsHiding:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " running : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mIsHiding:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->reCalcWidth()V

    .line 294
    :goto_1
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->initialize()V

    .line 292
    const-wide/16 v0, 0x82

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->show(J)V

    goto :goto_1
.end method
