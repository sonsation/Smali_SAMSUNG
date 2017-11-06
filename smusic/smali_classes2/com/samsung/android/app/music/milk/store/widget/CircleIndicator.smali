.class public Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "CircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$ReverseInterpolator;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDICATOR_MARGIN:F = 6.5f

.field private static final DEFAULT_INDICATOR_WIDTH:I = 0x6


# instance fields
.field private mAnimatorIn:Landroid/animation/Animator;

.field private mAnimatorOut:Landroid/animation/Animator;

.field private mAnimatorResId:I

.field private mAnimatorReverseResId:I

.field private mImmediateAnimatorIn:Landroid/animation/Animator;

.field private mImmediateAnimatorOut:Landroid/animation/Animator;

.field private mIndicatorBackgroundResId:I

.field private mIndicatorHeight:I

.field private mIndicatorMargin:I

.field private mIndicatorUnselectedBackgroundResId:I

.field private mIndicatorWidth:I

.field private mInternalDataSetObserver:Landroid/database/DataSetObserver;

.field private final mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mLastPosition:I

.field private mViewpager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f020185

    const/4 v1, -0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorMargin:I

    .line 27
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorWidth:I

    .line 28
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorHeight:I

    .line 29
    const v0, 0x7f060002

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorResId:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorReverseResId:I

    .line 31
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 32
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 38
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mLastPosition:I

    .line 174
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 220
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v2, 0x7f020185

    const/4 v1, -0x1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorMargin:I

    .line 27
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorWidth:I

    .line 28
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorHeight:I

    .line 29
    const v0, 0x7f060002

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorResId:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorReverseResId:I

    .line 31
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 32
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 38
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mLastPosition:I

    .line 174
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 220
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v2, 0x7f020185

    const/4 v1, -0x1

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorMargin:I

    .line 27
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorWidth:I

    .line 28
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorHeight:I

    .line 29
    const v0, 0x7f060002

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorResId:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorReverseResId:I

    .line 31
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 32
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 38
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mLastPosition:I

    .line 174
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 220
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const v2, 0x7f020185

    const/4 v1, -0x1

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorMargin:I

    .line 27
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorWidth:I

    .line 28
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorHeight:I

    .line 29
    const v0, 0x7f060002

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorResId:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorReverseResId:I

    .line 31
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 32
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 38
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mLastPosition:I

    .line 174
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 220
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorIn:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorOut:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    .prologue
    .line 22
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mLastPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mLastPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    .prologue
    .line 22
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    .prologue
    .line 22
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->createIndicators()V

    return-void
.end method

.method private addIndicator(ILandroid/animation/Animator;)V
    .locals 4
    .param p1, "backgroundDrawableId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 271
    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    .line 273
    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 276
    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 277
    .local v0, "Indicator":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 278
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorWidth:I

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorHeight:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->addView(Landroid/view/View;II)V

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 280
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 281
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 286
    return-void
.end method

.method private checkIndicatorConfig(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v1, 0x40c00000    # 6.0f

    .line 125
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorWidth:I

    if-gez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->dip2px(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorWidth:I

    .line 126
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorHeight:I

    if-gez v0, :cond_1

    .line 127
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->dip2px(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorHeight:I

    .line 128
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorMargin:I

    if-gez v0, :cond_2

    const/high16 v0, 0x40d00000    # 6.5f

    .line 129
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->dip2px(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorMargin:I

    .line 131
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorResId:I

    if-nez v0, :cond_3

    const v0, 0x7f060002

    :goto_3
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorResId:I

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->createAnimatorOut(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorOut:Landroid/animation/Animator;

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->createAnimatorOut(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mImmediateAnimatorOut:Landroid/animation/Animator;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mImmediateAnimatorOut:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 137
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->createAnimatorIn(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorIn:Landroid/animation/Animator;

    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->createAnimatorIn(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mImmediateAnimatorIn:Landroid/animation/Animator;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mImmediateAnimatorIn:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 141
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    if-nez v0, :cond_4

    const v0, 0x7f020185

    :goto_4
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 143
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    :goto_5
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 146
    return-void

    .line 125
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorWidth:I

    goto :goto_0

    .line 127
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorHeight:I

    goto :goto_1

    .line 129
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorMargin:I

    goto :goto_2

    .line 131
    :cond_3
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorResId:I

    goto :goto_3

    .line 141
    :cond_4
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    goto :goto_4

    .line 143
    :cond_5
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    goto :goto_5
.end method

.method private createAnimatorIn(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorReverseResId:I

    if-nez v1, :cond_0

    .line 155
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorResId:I

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 156
    .local v0, "animatorIn":Landroid/animation/Animator;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$ReverseInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$ReverseInterpolator;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    :goto_0
    return-object v0

    .line 158
    .end local v0    # "animatorIn":Landroid/animation/Animator;
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorReverseResId:I

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .restart local v0    # "animatorIn":Landroid/animation/Animator;
    goto :goto_0
.end method

.method private createAnimatorOut(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorResId:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createIndicators()V
    .locals 5

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->removeAllViews()V

    .line 255
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 256
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 268
    :cond_0
    return-void

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 261
    .local v1, "currentItem":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 262
    if-ne v1, v2, :cond_2

    .line 263
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mImmediateAnimatorOut:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->addIndicator(ILandroid/animation/Animator;)V

    .line 261
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_2
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mImmediateAnimatorIn:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->addIndicator(ILandroid/animation/Animator;)V

    goto :goto_1
.end method

.method private handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 67
    if-nez p2, :cond_0

    .line 97
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v5, Lcom/samsung/android/app/music/R$styleable;->MilkCircleIndicator:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 73
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorWidth:I

    .line 75
    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorHeight:I

    .line 76
    const/4 v5, 0x2

    .line 77
    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorMargin:I

    .line 79
    const/4 v5, 0x3

    const v6, 0x7f060002

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorResId:I

    .line 81
    const/4 v5, 0x4

    .line 82
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorReverseResId:I

    .line 83
    const/4 v5, 0x5

    const v6, 0x7f020185

    .line 84
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 86
    const/4 v5, 0x6

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 87
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 90
    const/4 v5, 0x7

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 91
    .local v1, "orientation":I
    if-ne v1, v3, :cond_1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->setOrientation(I)V

    .line 93
    const/16 v3, 0x8

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 94
    .local v0, "gravity":I
    if-ltz v0, :cond_2

    .end local v0    # "gravity":I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->setGravity(I)V

    .line 96
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 91
    goto :goto_1

    .line 94
    .restart local v0    # "gravity":I
    :cond_2
    const/16 v0, 0x11

    goto :goto_2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->checkIndicatorConfig(Landroid/content/Context;)V

    .line 64
    return-void
.end method


# virtual methods
.method public configureIndicator(III)V
    .locals 8
    .param p1, "indicatorWidth"    # I
    .param p2, "indicatorHeight"    # I
    .param p3, "indicatorMargin"    # I

    .prologue
    const v6, 0x7f020185

    .line 103
    const v4, 0x7f060002

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->configureIndicator(IIIIIII)V

    .line 105
    return-void
.end method

.method public configureIndicator(IIIIIII)V
    .locals 1
    .param p1, "indicatorWidth"    # I
    .param p2, "indicatorHeight"    # I
    .param p3, "indicatorMargin"    # I
    .param p4, "animatorId"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p5, "animatorReverseId"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p6, "indicatorBackgroundId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p7, "indicatorUnselectedBackgroundId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 112
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorWidth:I

    .line 113
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorHeight:I

    .line 114
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorMargin:I

    .line 116
    iput p4, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorResId:I

    .line 117
    iput p5, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mAnimatorReverseResId:I

    .line 118
    iput p6, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 119
    iput p7, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->checkIndicatorConfig(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 296
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 2
    .param p1, "onPageChangeListener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can not find Viewpager , setViewPager first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 251
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mLastPosition:I

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->createIndicators()V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 172
    :cond_0
    return-void
.end method
