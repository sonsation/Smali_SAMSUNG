.class public abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HandleView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$HandleView$1;,
        Landroid/widget/Editor$HandleView$2;
    }
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field static final MAGNIFYING_FACTOR:F = 1.5f

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field public HIDE_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public SHOW_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field private mFirstParentY:I

.field protected mHandleType:I

.field private mHideAnimator:Landroid/animation/ObjectAnimator;

.field private mHideDuration:I

.field private mHighlightRect:[I

.field protected mHorizontalGravity:I

.field protected mHorizontalOffset:F

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mIsHideAnimating:Z

.field private mIsResetAnimating:Z

.field private mIsShowAnimating:Z

.field protected mIsVerticalScrolled:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private mOldDrawable:Landroid/graphics/drawable/Drawable;

.field private mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field protected mPrevLine:I

.field private mPreviousHighlightRect:[I

.field protected mPreviousLineTouched:I

.field protected mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mResetAnimator:Landroid/animation/ValueAnimator;

.field private mShowAnimator:Landroid/animation/ObjectAnimator;

.field private mShowDuration:I

.field protected mTouchOffsetY:F

.field protected mTouchToWindowOffsetX:F

.field protected mTouchToWindowOffsetY:F

.field protected mVerticalOffset:F

.field protected mVerticalScroll:F

.field protected mVisibleHeight:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Editor$HandleView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return v0
.end method

.method static synthetic -get3(Landroid/widget/Editor$HandleView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    return v0
.end method

.method static synthetic -get4(Landroid/widget/Editor$HandleView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return v0
.end method

.method static synthetic -get5(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    return p1
.end method

.method static synthetic -set2(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return p1
.end method

.method private constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 9
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4601
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4602
    invoke-static {p1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4561
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4563
    iput-boolean v8, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4567
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 4571
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 4576
    iput v5, p0, Landroid/widget/Editor$HandleView;->mVisibleHeight:I

    .line 4577
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Editor$HandleView;->mVerticalScroll:F

    .line 4578
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsVerticalScrolled:Z

    .line 4581
    iput v5, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    .line 4583
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    .line 4584
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    .line 4593
    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    .line 4594
    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    .line 4596
    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 4597
    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 4598
    iput v5, p0, Landroid/widget/Editor$HandleView;->mShowDuration:I

    .line 4599
    iput v5, p0, Landroid/widget/Editor$HandleView;->mHideDuration:I

    .line 4685
    const/4 v2, 0x5

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 4686
    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 4687
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4688
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 5301
    new-instance v2, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v2, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->SHOW_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 5374
    new-instance v2, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v2, p0}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->HIDE_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 4603
    invoke-virtual {p0, p4}, Landroid/widget/Editor$HandleView;->setId(I)V

    .line 4604
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4605
    .local v0, "contentHolder":Landroid/widget/LinearLayout;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4606
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4607
    const v4, 0x10102c8

    .line 4606
    invoke-direct {v2, v3, v6, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 4608
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 4609
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 4610
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 4611
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4612
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4614
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 4615
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 4617
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    .line 4618
    invoke-static {p1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4619
    const v3, 0x10500a6

    .line 4618
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 4621
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4623
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4624
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4626
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    .line 4627
    .local v1, "handleHeight":I
    int-to-float v2, v1

    const v3, -0x41666666    # -0.3f

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4628
    int-to-float v2, v1

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 4601
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 4696
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4697
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 4698
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4699
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4695
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 4703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4704
    .local v4, "now":J
    const/4 v0, 0x0

    .line 4705
    .local v0, "i":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4706
    .local v2, "index":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4707
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 4708
    add-int/lit8 v0, v0, 0x1

    .line 4709
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 4712
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    .line 4713
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 4714
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3, v10}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4702
    :cond_1
    return-void
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 4744
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 4740
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 4785
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 4786
    const/4 v0, 0x1

    return v0

    .line 4789
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4790
    const/4 v0, 0x0

    return v0

    .line 4793
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->-wrap8(Landroid/widget/Editor;FF)Z

    move-result v0

    return v0
.end method

.method private magnifyHandleView()V
    .locals 11

    .prologue
    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5231
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    .line 5234
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5235
    .local v1, "drawableStartWidth":I
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 5236
    .local v0, "drawableStartHeight":I
    int-to-float v5, v1

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 5237
    .local v3, "drawableTargetWidth":I
    int-to-float v5, v0

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 5239
    .local v2, "drawableTargetHeight":I
    new-array v4, v9, [Landroid/animation/PropertyValuesHolder;

    .line 5240
    .local v4, "holders":[Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "width"

    new-array v6, v9, [I

    aput v1, v6, v7

    aput v3, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v7

    .line 5241
    const-string/jumbo v5, "height"

    new-array v6, v9, [I

    aput v0, v6, v7

    aput v2, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v8

    .line 5243
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    .line 5244
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5245
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v7, 0x3e800000    # 0.25f

    const v8, 0x3eeb851f    # 0.46f

    const v9, 0x3ee66666    # 0.45f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5246
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/Editor$HandleView$5;

    invoke-direct {v6, p0}, Landroid/widget/Editor$HandleView$5;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5257
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/Editor$HandleView$6;

    invoke-direct {v6, p0, v3, v2}, Landroid/widget/Editor$HandleView$6;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5263
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 5229
    return-void
.end method

.method private resetHandleView()V
    .locals 24

    .prologue
    .line 5120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 5121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->pause()V

    .line 5125
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 5126
    .local v13, "r":Landroid/graphics/Rect;
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 5127
    .local v5, "drawableStartWidth":I
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 5129
    .local v4, "drawableStartHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 5130
    .local v7, "drawableTargetWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 5132
    .local v6, "drawableTargetHeight":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5133
    .local v14, "startPositionX":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 5136
    .local v15, "startPositionY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    .line 5137
    .local v9, "layout":Landroid/text/Layout;
    if-nez v9, :cond_1

    .line 5138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 5139
    return-void

    .line 5141
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v9

    .line 5142
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v12

    .line 5143
    .local v12, "offset":I
    invoke-virtual {v9, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 5145
    .local v10, "line":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v19

    add-int v16, v18, v19

    .line 5146
    .local v16, "targetPositionX":I
    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v17

    .line 5148
    .local v17, "targetPositionY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v18

    add-int v16, v16, v18

    .line 5149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v18

    add-int v17, v17, v18

    .line 5151
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v8, v0, [Landroid/animation/PropertyValuesHolder;

    .line 5152
    .local v8, "holders":[Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "positionX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v14, v19, v20

    const/16 v20, 0x1

    aput v16, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v8, v19

    .line 5153
    const-string/jumbo v18, "positionY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v15, v19, v20

    const/16 v20, 0x1

    aput v17, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v8, v19

    .line 5154
    const-string/jumbo v18, "width"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v7, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x2

    aput-object v18, v8, v19

    .line 5155
    const-string/jumbo v18, "height"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v4, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x3

    aput-object v18, v8, v19

    .line 5157
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    .line 5158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const-wide/16 v20, 0xfa

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/view/animation/PathInterpolator;

    const/high16 v20, 0x3e800000    # 0.25f

    const v21, 0x3eeb851f    # 0.46f

    const v22, 0x3ee66666    # 0.45f

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v23}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/Editor$HandleView$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$HandleView$3;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/Editor$HandleView$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Landroid/widget/Editor$HandleView$4;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5223
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 5224
    .local v11, "msg":Landroid/os/Message;
    const/16 v18, 0x6

    move/from16 v0, v18

    iput v0, v11, Landroid/os/Message;->what:I

    .line 5225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 5119
    return-void
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 4691
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4692
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4690
    return-void
.end method


# virtual methods
.method public cancelAnimator(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    const/4 v1, 0x0

    .line 5437
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 5438
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 5439
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5440
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 5441
    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 5436
    :cond_1
    :goto_0
    return-void

    .line 5443
    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5444
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 5445
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5446
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 5447
    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method protected dismiss()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4766
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4767
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    .line 4769
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4770
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4765
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 4882
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getCursorOffset()I
    .locals 1

    .prologue
    .line 4986
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawableBounds(II)Landroid/graphics/Rect;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 5283
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 5284
    .local v1, "left":I
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v5, v3}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v0

    .line 5285
    .local v0, "hotspot":I
    const/4 v2, 0x0

    .line 5287
    .local v2, "offset":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    .line 5298
    :goto_1
    :pswitch_0
    new-instance v3, Landroid/graphics/Rect;

    sub-int v5, v2, v0

    sub-int v5, v1, v5

    sub-int v6, v2, v0

    sub-int v6, v1, v6

    add-int/2addr v6, p1

    invoke-direct {v3, v5, v4, v6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    .end local v0    # "hotspot":I
    .end local v2    # "offset":I
    :cond_0
    move v3, v4

    .line 5284
    goto :goto_0

    .line 5289
    .restart local v0    # "hotspot":I
    .restart local v2    # "offset":I
    :pswitch_1
    div-int/lit8 v2, p1, 0x4

    goto :goto_1

    .line 5292
    :pswitch_2
    div-int/lit8 v2, p1, 0x2

    goto :goto_1

    .line 5295
    :pswitch_3
    mul-int/lit8 v3, p1, 0x3

    div-int/lit8 v2, v3, 0x4

    goto :goto_1

    .line 5287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getDrawableHeight()I
    .locals 1

    .prologue
    .line 4994
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getDrawableWidth()I
    .locals 1

    .prologue
    .line 4990
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getHandleType()I
    .locals 1

    .prologue
    .line 5106
    iget v0, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    return v0
.end method

.method public getHideAnimator()Landroid/animation/ObjectAnimator;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5385
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5386
    .local v2, "r":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v4

    .line 5387
    .local v1, "drawableStartWidth":I
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v4

    .line 5389
    .local v0, "drawableStartHeight":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v4, "bounds"

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->HIDE_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v7

    aput-object v7, v6, v8

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 5391
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/widget/Editor$HandleView$9;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$9;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5403
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/widget/Editor$HandleView$10;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$10;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5430
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHideDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5431
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3e800000    # 0.25f

    const v6, 0x3eeb851f    # 0.46f

    const v7, 0x3ee66666    # 0.45f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5433
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v3
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 4808
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected getHorizontalOffset()I
    .locals 4

    .prologue
    .line 4967
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v2

    .line 4968
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4970
    .local v0, "drawWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    sparse-switch v3, :sswitch_data_0

    .line 4976
    :sswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 4982
    .local v1, "left":I
    :goto_0
    return v1

    .line 4972
    .end local v1    # "left":I
    :sswitch_1
    const/4 v1, 0x0

    .line 4973
    .restart local v1    # "left":I
    goto :goto_0

    .line 4979
    .end local v1    # "left":I
    :sswitch_2
    sub-int v1, v2, v0

    .line 4980
    .restart local v1    # "left":I
    goto :goto_0

    .line 4970
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public getIdealVerticalOffset()F
    .locals 1

    .prologue
    .line 4632
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .prologue
    .line 4812
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v0

    return v0
.end method

.method public getShowAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5313
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5314
    .local v1, "drawableTargetWidth":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 5316
    .local v0, "drawableTargetHeight":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v3, "bounds"

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->SHOW_BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v5, v7

    invoke-virtual {p0, v1, v0}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 5317
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/widget/Editor$HandleView$7;

    invoke-direct {v3, p0}, Landroid/widget/Editor$HandleView$7;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5329
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/widget/Editor$HandleView$8;

    invoke-direct {v3, p0, v1, v0}, Landroid/widget/Editor$HandleView$8;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5368
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    iget v3, p0, Landroid/widget/Editor$HandleView;->mShowDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5369
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3eeb851f    # 0.46f

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5371
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v2
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 4775
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4776
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeAllHandleMessage()V

    .line 4773
    return-void
.end method

.method protected hideAfterDelay()V
    .locals 0

    .prologue
    .line 5117
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4733
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 4734
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4735
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4732
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 4734
    goto :goto_0
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 4803
    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 5102
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method protected abstract isHandleViewScreenOut()Z
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 4780
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4719
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 5113
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 4957
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4958
    .local v0, "drawWidth":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 4960
    .local v1, "left":I
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v2, :cond_1

    .line 4963
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4956
    return-void

    .line 4960
    :cond_1
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v2, :cond_0

    .line 4961
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v3, v1, v0

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method onHandleMoved()V
    .locals 1

    .prologue
    .line 5110
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeAllHandleMessage()V

    .line 5109
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 4724
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v0, :cond_1

    .line 4725
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 4723
    :goto_0
    return-void

    .line 4727
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4999
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Landroid/widget/Editor;->-wrap26(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    .line 5001
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 5072
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 5073
    const/4 v13, 0x1

    return v13

    .line 5003
    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 5004
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->magnifyHandleView()V

    .line 5005
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 5007
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 5008
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 5010
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v7

    .line 5011
    .local v7, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v7}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 5012
    invoke-virtual {v7}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 5013
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    .line 5014
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 5016
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mVerticalOffset:F

    .line 5017
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:F

    .line 5019
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 5020
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5021
    .local v11, "screenHeight":I
    const/4 v12, 0x0

    .line 5022
    .local v12, "sipHeight":I
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 5023
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 5024
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v12

    .line 5026
    :cond_0
    sub-int v13, v11, v12

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mVisibleHeight:I

    goto/16 :goto_0

    .line 5032
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v7    # "positionListener":Landroid/widget/Editor$PositionListener;
    .end local v11    # "screenHeight":I
    .end local v12    # "sipHeight":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    .line 5033
    .local v9, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    .line 5034
    .local v10, "rawY":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mVerticalScroll:F

    .line 5037
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v14, v14

    sub-float v8, v13, v14

    .line 5038
    .local v8, "previousVerticalOffset":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v13, v13

    sub-float v13, v10, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v14, v14

    sub-float v1, v13, v14

    .line 5040
    .local v1, "currentVerticalOffset":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v13, v8, v13

    if-gez v13, :cond_1

    .line 5041
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 5042
    .local v6, "newVerticalOffset":F
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 5047
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v13, v13

    add-float/2addr v13, v6

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 5050
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v13, v9, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v14

    int-to-float v14, v14

    add-float v4, v13, v14

    .line 5051
    .local v4, "newPosX":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v13, v10, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v5, v13, v14

    .line 5053
    .local v5, "newPosY":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v13, v14

    add-float/2addr v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mVisibleHeight:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getLineHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsVerticalScrolled:Z

    .line 5054
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 5044
    .end local v4    # "newPosX":F
    .end local v5    # "newPosY":F
    .end local v6    # "newVerticalOffset":F
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 5045
    .restart local v6    # "newVerticalOffset":F
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_1

    .line 5053
    .restart local v4    # "newPosX":F
    .restart local v5    # "newPosY":F
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 5059
    .end local v1    # "currentVerticalOffset":F
    .end local v4    # "newPosX":F
    .end local v5    # "newPosY":F
    .end local v6    # "newVerticalOffset":F
    .end local v8    # "previousVerticalOffset":F
    .end local v9    # "rawX":F
    .end local v10    # "rawY":F
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    .line 5060
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 5061
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    .line 5062
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->resetHandleView()V

    goto/16 :goto_0

    .line 5066
    :pswitch_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 5067
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    .line 5068
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->resetHandleView()V

    .line 5069
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    goto/16 :goto_0

    .line 5001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 7
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4822
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4823
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 4825
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4826
    return-void

    .line 4828
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    .line 4830
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4831
    .local v1, "line":I
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v5, :cond_7

    move v2, v3

    .line 4833
    .local v2, "offsetChanged":Z
    :goto_0
    if-nez v2, :cond_2

    .line 4834
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v4

    .line 4835
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    aput v6, v5, v3

    .line 4837
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v4

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v6, v6, v4

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v6, v6, v3

    if-eq v5, v6, :cond_8

    .line 4838
    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v4

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4839
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4842
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4843
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4845
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v6, v6, v4

    aput v6, v5, v4

    .line 4846
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    aput v5, v4, v3

    .line 4848
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4852
    :cond_2
    if-nez v2, :cond_3

    if-eqz p2, :cond_6

    .line 4853
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    .line 4854
    if-eqz v2, :cond_4

    .line 4855
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 4856
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4858
    :cond_4
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 4860
    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v4, :cond_9

    .line 4869
    :cond_5
    :goto_2
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4870
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4820
    :cond_6
    return-void

    .end local v2    # "offsetChanged":Z
    :cond_7
    move v2, v4

    .line 4831
    goto/16 :goto_0

    .line 4837
    .restart local v2    # "offsetChanged":Z
    :cond_8
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 4861
    :cond_9
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    .line 4862
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    .line 4861
    sub-int/2addr v4, v5

    .line 4862
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    .line 4861
    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4863
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4866
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4867
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    goto :goto_2
.end method

.method protected removeHiderCallback()V
    .locals 0

    .prologue
    .line 5115
    return-void
.end method

.method public setHideDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 5271
    iput p1, p0, Landroid/widget/Editor$HandleView;->mHideDuration:I

    .line 5270
    return-void
.end method

.method public setIsHideAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .prologue
    .line 5279
    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    .line 5278
    return-void
.end method

.method public setIsShowAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .prologue
    .line 5275
    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    .line 5274
    return-void
.end method

.method public setShowDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 5267
    iput p1, p0, Landroid/widget/Editor$HandleView;->mShowDuration:I

    .line 5266
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 4748
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4749
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4754
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 4755
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4757
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 4758
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4761
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4762
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4747
    return-void

    .line 4751
    :cond_3
    return-void
.end method

.method public showImmediately()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4930
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4932
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 4933
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v1, v0, v4

    .line 4935
    .local v0, "pts":[I
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 4936
    aget v1, v0, v5

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 4938
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4941
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v2, v0, v5

    aget v3, v0, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4929
    .end local v0    # "pts":[I
    :cond_0
    :goto_0
    return-void

    .line 4945
    .restart local v0    # "pts":[I
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    aget v3, v0, v5

    aget v4, v0, v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 4948
    .end local v0    # "pts":[I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4950
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4636
    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v4, :cond_0

    .line 4638
    return-void

    .line 4640
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4641
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_1

    .line 4642
    return-void

    .line 4644
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    .line 4645
    .local v2, "offset":I
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v0

    .line 4646
    .local v0, "isRtlCharAtOffset":Z
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4648
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 4649
    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4650
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4651
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 4652
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    .line 4653
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    .line 4652
    sub-int/2addr v4, v5

    .line 4653
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    .line 4652
    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4654
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4657
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isHandleViewScreenOut()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4658
    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 4660
    .end local v0    # "isRtlCharAtOffset":Z
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4661
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4662
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 4663
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4665
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4668
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    .line 4669
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    .line 4668
    sub-int/2addr v4, v5

    .line 4669
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    .line 4668
    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4670
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4671
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4672
    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    invoke-virtual {p0, v4, v5, v6, v6}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    .line 4673
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    .line 4635
    :cond_4
    return-void

    .line 4649
    .restart local v0    # "isRtlCharAtOffset":Z
    :cond_5
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 4658
    :cond_6
    const/4 v0, 0x1

    .local v0, "isRtlCharAtOffset":Z
    goto :goto_1

    .line 4660
    .end local v0    # "isRtlCharAtOffset":Z
    :cond_7
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4888
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {p0, v1, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4889
    if-nez p3, :cond_0

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v1, :cond_4

    .line 4890
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v1, :cond_2

    .line 4892
    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v1, :cond_2

    .line 4893
    :cond_1
    iget v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4894
    iget v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4895
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4896
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4901
    :cond_2
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v1, :cond_5

    .line 4925
    :cond_3
    :goto_0
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4887
    :cond_4
    return-void

    .line 4901
    :cond_5
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v1, :cond_3

    .line 4902
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4904
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 4905
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v1, v0, v4

    .line 4907
    .local v0, "pts":[I
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 4908
    aget v1, v0, v5

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 4910
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4912
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v2, v0, v5

    aget v3, v0, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 4915
    :cond_6
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    aget v3, v0, v5

    aget v4, v0, v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 4918
    .end local v0    # "pts":[I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4920
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method public updatePositionImmediately(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5077
    new-array v1, v4, [I

    .line 5078
    .local v1, "textViewCoords":[I
    invoke-virtual {p0, v1}, Landroid/widget/Editor$HandleView;->getLocationInWindow([I)V

    .line 5079
    aget v2, v1, v6

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v6

    .line 5080
    aget v2, v1, v5

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v5

    .line 5082
    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    neg-int v2, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    sub-int/2addr v2, v3

    aget v3, v1, v6

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5083
    aget v2, v1, v5

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 5085
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5087
    new-array v0, v4, [I

    .line 5088
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v6

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v2, v0, v5

    .line 5090
    .local v0, "pts":[I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 5091
    aget v2, v0, v6

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v0, v6

    .line 5093
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5094
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v3, v0, v6

    aget v4, v0, v5

    invoke-virtual {v2, v3, v4, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 5076
    .end local v0    # "pts":[I
    :cond_0
    :goto_0
    return-void

    .line 5096
    .restart local v0    # "pts":[I
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    aget v4, v0, v6

    aget v5, v0, v5

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
