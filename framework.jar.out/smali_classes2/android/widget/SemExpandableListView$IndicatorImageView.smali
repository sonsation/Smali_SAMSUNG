.class Landroid/widget/SemExpandableListView$IndicatorImageView;
.super Landroid/widget/ImageView;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorImageView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemExpandableListView$IndicatorImageView$1;,
        Landroid/widget/SemExpandableListView$IndicatorImageView$2;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final ARROW_PADDING:I = 0x5

.field private static final PAINT_ALPHA:I = 0x7f

.field private static final PAINT_STROKE_SIZE:I = 0x8


# instance fields
.field childPos:I

.field groupPos:I

.field mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mCenterX:F

.field private mCenterY:F

.field private mEndPointX:F

.field private mEndPointY:F

.field private mHeight:F

.field private mIndicatorArrowHeight:F

.field private mMorphingAnimatedValue:F

.field private mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

.field private mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

.field private mPaddingValue:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mStartPointX:F

.field private mStartPointY:F

.field mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mWidth:F

.field final synthetic this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method static synthetic -set0(Landroid/widget/SemExpandableListView$IndicatorImageView;F)F
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/SemExpandableListView$IndicatorImageView;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->printAnimationInfo(Landroid/animation/Animator;)V

    return-void
.end method

.method constructor <init>(Landroid/widget/SemExpandableListView;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 2717
    iput-object p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    .line 2718
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2700
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    .line 2703
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    .line 2709
    iput v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    .line 2715
    iput v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mIndicatorArrowHeight:F

    .line 2755
    new-instance v0, Landroid/widget/SemExpandableListView$IndicatorImageView$1;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$IndicatorImageView$1;-><init>(Landroid/widget/SemExpandableListView$IndicatorImageView;)V

    iput-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2769
    new-instance v0, Landroid/widget/SemExpandableListView$IndicatorImageView$2;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$IndicatorImageView$2;-><init>(Landroid/widget/SemExpandableListView$IndicatorImageView;)V

    iput-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 2719
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 2717
    return-void
.end method

.method private initArrow()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 2813
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mWidth:F

    .line 2814
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mHeight:F

    .line 2816
    const/high16 v2, 0x40a00000    # 5.0f

    iput v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaddingValue:F

    .line 2824
    iput v7, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointX:F

    .line 2825
    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mHeight:F

    div-float/2addr v2, v6

    iput v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointY:F

    .line 2826
    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointX:F

    iget v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mWidth:F

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointX:F

    .line 2827
    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointY:F

    iput v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointY:F

    .line 2828
    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointX:F

    iget v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterX:F

    .line 2829
    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaddingValue:F

    iput v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterY:F

    .line 2837
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaint:Landroid/graphics/Paint;

    .line 2838
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2839
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2840
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0x7f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2841
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2842
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2844
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    .line 2847
    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mHeight:F

    iget v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaddingValue:F

    mul-float/2addr v3, v6

    sub-float v0, v2, v3

    .line 2848
    .local v0, "morphingEndValue":F
    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mIndicatorArrowHeight:F

    .line 2856
    new-array v2, v10, [F

    aput v7, v2, v9

    aput v0, v2, v8

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    .line 2857
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get1()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IndicatorImageView : initArrow : mMorphingAnimationToDown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :cond_0
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10c0006

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2860
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2861
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2862
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2864
    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mHeight:F

    iget v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaddingValue:F

    mul-float/2addr v3, v6

    sub-float v1, v2, v3

    .line 2872
    .local v1, "morphingStartValue":F
    new-array v2, v10, [F

    aput v1, v2, v9

    aput v7, v2, v8

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    .line 2874
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get1()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IndicatorImageView : initArrow : mMorphingAnimationToUp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    :cond_1
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10c0006

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2877
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2878
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2880
    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2812
    return-void
.end method

.method private printAnimationInfo(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2802
    if-eqz p1, :cond_0

    .line 2803
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "printAnimationInfo : animation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2805
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "printAnimationInfo : this animation => mMorphingAnimationToDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    :cond_0
    :goto_0
    return-void

    .line 2806
    :cond_1
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2807
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "printAnimationInfo : this animation => mMorphingAnimationToUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private printState([I)V
    .locals 7
    .param p1, "drawableState"    # [I

    .prologue
    const/4 v2, 0x0

    .line 2743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2744
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 2745
    .local v1, "state":I
    if-nez v1, :cond_0

    .line 2746
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "drawableStateChanged() state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2749
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2750
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2752
    .end local v1    # "state":I
    :cond_1
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "drawableStateChanged() gr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", child="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->childPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2739
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2737
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 2729
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2730
    .local v0, "result":[I
    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->childPos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2731
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get4()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->mergeDrawableStates([I[I)[I

    .line 2733
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2892
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get26(Landroid/widget/SemExpandableListView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 2894
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 2895
    invoke-direct {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->initArrow()V

    .line 2898
    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    .line 2899
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2900
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointX:F

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2910
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2926
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterX:F

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterY:F

    iget v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2929
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointX:F

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2930
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2884
    :cond_2
    :goto_1
    return-void

    .line 2916
    :cond_3
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v0

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2917
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get1()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IndicatorImageView : onDraw : group("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") collapse !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    goto :goto_0

    .line 2921
    :cond_5
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get1()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IndicatorImageView : onDraw : group("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") expand !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :cond_6
    iget v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mIndicatorArrowHeight:F

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    goto/16 :goto_0

    .line 2934
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V
    .locals 1
    .param p1, "position"    # Landroid/widget/SemExpandableListPosition;

    .prologue
    .line 2723
    iget v0, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    .line 2724
    iget v0, p1, Landroid/widget/SemExpandableListPosition;->childPos:I

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->childPos:I

    .line 2722
    return-void
.end method

.method public startIndicatorMorphAimation()V
    .locals 3

    .prologue
    .line 2941
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2943
    :cond_0
    return-void

    .line 2946
    :cond_1
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2947
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v0

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2948
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2949
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IndicatorImageView : startIndicatorMorphAimation : group("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") collapse !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "IndicatorImageView : startIndicatorMorphAimation : start morphingAnimation to UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_2
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2940
    :cond_3
    :goto_0
    return-void

    .line 2955
    :cond_4
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get1()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2956
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IndicatorImageView : startIndicatorMorphAimation : group("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") expand !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "IndicatorImageView : startIndicatorMorphAimation : start morphingAnimation to DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    :cond_5
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
