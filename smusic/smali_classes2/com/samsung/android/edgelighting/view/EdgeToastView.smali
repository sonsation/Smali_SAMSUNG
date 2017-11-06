.class public Lcom/samsung/android/edgelighting/view/EdgeToastView;
.super Lcom/samsung/android/edgelighting/view/AbsToastView;
.source "EdgeToastView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIconView:Landroid/widget/ImageView;

.field private mMainText:Landroid/widget/TextView;

.field mTextAnimator:Landroid/animation/ObjectAnimator;

.field private mTextRoot:Landroid/widget/LinearLayout;

.field private mToastRootLayout:Landroid/widget/LinearLayout;

.field private mView:Landroid/widget/FrameLayout;

.field mWidthAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string v1, "layout_inflater"

    .line 42
    .local v1, "service":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    .local v0, "li":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getLayoutId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    sget v2, Lcom/samsung/android/edgelighting/R$id;->root:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 46
    sget v2, Lcom/samsung/android/edgelighting/R$id;->toast_icon:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mIconView:Landroid/widget/ImageView;

    .line 47
    sget v2, Lcom/samsung/android/edgelighting/R$id;->main_text:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    .line 48
    sget v2, Lcom/samsung/android/edgelighting/R$id;->text_layout:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextRoot:Landroid/widget/LinearLayout;

    .line 49
    sget v2, Lcom/samsung/android/edgelighting/R$id;->toast_view:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mView:Landroid/widget/FrameLayout;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/view/EdgeToastView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeToastView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private calcMaxWidth(I)I
    .locals 7
    .param p1, "initialWidth"    # I

    .prologue
    const/4 v5, 0x0

    .line 118
    const/4 v3, 0x0

    .line 120
    .local v3, "width":I
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 122
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 124
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->toast_text_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->toast_bottom_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->toast_side_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v0, v4, v5

    .line 126
    .local v0, "height":I
    if-ge p1, v0, :cond_0

    .line 127
    move p1, v0

    .line 131
    .end local v0    # "height":I
    :cond_0
    const/4 v1, 0x2

    .line 133
    .local v1, "marginWeight":I
    if-lez v3, :cond_1

    .line 134
    add-int v4, v3, p1

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_start_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_end_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v2, v4, v5

    .line 139
    .local v2, "maxWidth":I
    :goto_0
    return v2

    .line 137
    .end local v2    # "maxWidth":I
    :cond_1
    move v2, p1

    .restart local v2    # "maxWidth":I
    goto :goto_0
.end method

.method private changeNotiText(FJJ)V
    .locals 4
    .param p1, "value"    # F
    .param p2, "startDelay"    # J
    .param p4, "duration"    # J

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextRoot:Landroid/widget/LinearLayout;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    .line 230
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeToastView$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/edgelighting/view/EdgeToastView$2;-><init>(Lcom/samsung/android/edgelighting/view/EdgeToastView;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 256
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 257
    return-void
.end method

.method private isEmptyTickerText()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateMaxMinWidth([Ljava/lang/String;)V
    .locals 2
    .param p1, "tickerText"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 93
    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextMaxWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public changeNotificationWidth(JJII)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "duration"    # J
    .param p5, "fromWidth"    # I
    .param p6, "toWidth"    # I

    .prologue
    .line 318
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

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    .line 319
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeToastView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView$4;-><init>(Lcom/samsung/android/edgelighting/view/EdgeToastView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeToastView$5;

    invoke-direct {v1, p0, p6}, Lcom/samsung/android/edgelighting/view/EdgeToastView$5;-><init>(Lcom/samsung/android/edgelighting/view/EdgeToastView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 355
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/utils/SineInOut80;

    invoke-direct {v1}, Lcom/samsung/android/edgelighting/utils/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 358
    return-void
.end method

.method public changeToastStyle(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 368
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 369
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v3, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 370
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 371
    .local v1, "bgShape":Landroid/graphics/drawable/GradientDrawable;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 372
    const/4 v3, 0x4

    const/high16 v4, -0x1000000

    or-int/2addr v4, p1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 374
    .end local v1    # "bgShape":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/edgelighting/R$color;->black_toast_text_color:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 375
    .local v2, "textColor":I
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 377
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/samsung/android/edgelighting/R$layout;->edge_toast_view:I

    return v0
.end method

.method public hide(J)V
    .locals 9
    .param p1, "startDelay"    # J

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    .line 267
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    :cond_1
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->TAG:Ljava/lang/String;

    const-string v1, "Morph animation is running. So ignore hide action."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    return-void

    .line 271
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mIsHiding:Z

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->isEmptyTickerText()Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    const/4 v1, 0x0

    const-wide/16 v4, 0x82

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->changeNotiText(FJJ)V

    .line 274
    const-wide/16 v4, 0xfa

    iget v6, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMaxWidth:I

    iget v7, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMinWidth:I

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->changeNotificationWidth(JJII)V

    .line 276
    :cond_3
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 278
    .local v8, "aAnim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 279
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x82

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 281
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeToastView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView$3;-><init>(Lcom/samsung/android/edgelighting/view/EdgeToastView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsToastView;->initialize()V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$dimen;->morph_initial_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 108
    .local v0, "initialWidth":I
    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->calcMaxWidth(I)I

    move-result v1

    .line 109
    .local v1, "maxWidth":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->setMinMax(II)V

    .line 110
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextRoot:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->setWidthHeight(II)V

    .line 113
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->reset(Z)V

    .line 114
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->setAlpha(F)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->isAnimating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 174
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->isAnimating:Ljava/lang/Boolean;

    .line 175
    if-eqz p1, :cond_4

    .line 176
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 178
    :cond_4
    return-void
.end method

.method public setMinMax(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 261
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMinWidth:I

    .line 262
    iput p2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMaxWidth:I

    .line 263
    return-void
.end method

.method public setNotiIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "appIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNotiIcon(Landroid/view/View;)V
    .locals 3
    .param p1, "appIcon"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 69
    if-nez p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setNotiText([Ljava/lang/String;)V
    .locals 4
    .param p1, "tickerText"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 83
    aget-object v1, p1, v3

    if-eqz v1, :cond_0

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const-string/jumbo v1, "sec-roboto-condensed"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 86
    .local v0, "tf":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->updateMaxMinWidth([Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 101
    return-void
.end method

.method public setScreenSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 380
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidth:I

    .line 381
    iput p2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mHeight:I

    .line 382
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 383
    .local v0, "tempVal":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$dimen;->ticker_text_full_max_ratio:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 384
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 385
    .local v1, "width_ratio":F
    iget v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/edgelighting/R$dimen;->morph_initial_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 386
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_start_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_end_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mTextMaxWidth:I

    .line 388
    return-void
.end method

.method public setWidthHeight(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$dimen;->toast_side_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 309
    .local v0, "bottom_padding":I
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 310
    .local v1, "param":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 311
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 312
    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    return-void
.end method

.method public show(J)V
    .locals 13
    .param p1, "startDelay"    # J

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x64

    const/4 v11, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    .line 182
    const-string v0, "cheonkum"

    const-string/jumbo v6, "show"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->isAnimating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->isAnimating:Ljava/lang/Boolean;

    .line 186
    const-string/jumbo v0, "translationY"

    new-array v6, v10, [F

    const/4 v7, 0x0

    aput v7, v6, v11

    invoke-static {p0, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 187
    .local v9, "yAnim":Landroid/animation/ObjectAnimator;
    const-string v0, "alpha"

    new-array v6, v10, [F

    aput v1, v6, v11

    invoke-static {p0, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 189
    .local v8, "aAnim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 190
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 192
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e2e147b    # 0.17f

    const v7, 0x3f2b851f    # 0.67f

    const v10, 0x3f051eb8    # 0.52f

    const v11, 0x3fbc28f6    # 1.47f

    invoke-direct {v0, v6, v7, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 195
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/samsung/android/edgelighting/view/EdgeToastView$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeToastView;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 219
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->isEmptyTickerText()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->changeNotiText(FJJ)V

    .line 221
    const-wide/16 v2, 0x0

    iget v6, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMinWidth:I

    iget v7, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMaxWidth:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->changeNotificationWidth(JJII)V

    goto :goto_0
.end method

.method public updateToast()V
    .locals 8

    .prologue
    .line 145
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMinWidth:I

    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->calcMaxWidth(I)I

    move-result v7

    .line 146
    .local v7, "newMaxWidth":I
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMaxWidth:I

    if-le v7, v0, :cond_0

    .line 147
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x78

    iget v6, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMaxWidth:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->changeNotificationWidth(JJII)V

    .line 148
    iput v7, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mMaxWidth:I

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->invalidate()V

    goto :goto_0
.end method
