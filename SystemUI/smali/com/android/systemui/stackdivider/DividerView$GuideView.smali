.class Lcom/android/systemui/stackdivider/DividerView$GuideView;
.super Ljava/lang/Object;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GuideView"
.end annotation


# instance fields
.field private mBackground:Landroid/view/View;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mDefaultBackground:I

.field private mDim:Landroid/widget/ImageView;

.field private mDisplayOrientation:I

.field private mDraggingBackground:I

.field private mDuration:I

.field private mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

.field private mFocusedRect:Landroid/graphics/Rect;

.field private mFocusedStackId:I

.field private mGradient:Landroid/graphics/drawable/GradientDrawable;

.field private mGuide:Landroid/widget/ImageView;

.field private mGuideViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private mHasNavigationBar:Z

.field private mNavigationBarHeight:I

.field private mRect:Landroid/widget/ImageView;

.field private mShowing:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerView$GuideView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDefaultBackground:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerView$GuideView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDraggingBackground:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/FocusedFrameView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/DividerHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerView$GuideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2534
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    .line 2535
    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    .line 2536
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f130133

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    .line 2537
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f130132

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    .line 2538
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f130131

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    .line 2540
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2541
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 2542
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    aput v3, v2, v6

    .line 2543
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0010

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 2540
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 2546
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDefaultBackground:I

    .line 2547
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDraggingBackground:I

    .line 2548
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDuration:I

    .line 2549
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mWindowManager:Landroid/view/WindowManager;

    .line 2550
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->generateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuideViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2551
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuideViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2552
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mHasNavigationBar:Z

    .line 2553
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mNavigationBarHeight:I

    .line 2554
    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    .line 2533
    return-void
.end method

.method private generateLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2558
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2559
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "MultiWindow GuideView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2560
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2561
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2562
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2563
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2564
    const/16 v1, 0x901

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2565
    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2569
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2570
    return-object v0
.end method

.method private setGradient()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2574
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDisplayOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2575
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v0, v2, :cond_0

    .line 2576
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 2587
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2573
    return-void

    .line 2578
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    .line 2581
    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v0, v2, :cond_2

    .line 2582
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    .line 2584
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2774
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2775
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2776
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    if-eqz v0, :cond_0

    .line 2777
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setGuideView(Z)V

    .line 2779
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz v0, :cond_1

    .line 2780
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mBackground:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDefaultBackground:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2781
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setGuideViewMode(Z)V

    .line 2783
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2784
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2785
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2787
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    .line 2773
    return-void
.end method

.method public dismiss(Landroid/graphics/Point;)V
    .locals 12
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const-wide/16 v10, 0x64

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 2684
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    if-eqz v5, :cond_0

    .line 2685
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2686
    .local v2, "guideParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDisplayOrientation:I

    if-ne v5, v8, :cond_1

    .line 2687
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2688
    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2693
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    .line 2694
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 2696
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2697
    .local v4, "guideRectParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2698
    .local v1, "guideDimParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDisplayOrientation:I

    if-ne v5, v8, :cond_3

    .line 2699
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2700
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2701
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v5, v9, :cond_2

    .line 2702
    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2703
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2704
    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2723
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    .line 2724
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 2725
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    .line 2726
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 2728
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2729
    .local v0, "guideAlpha":Landroid/view/animation/Animation;
    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2730
    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2731
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2732
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2734
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 2735
    .local v3, "guideRectAlpha":Landroid/animation/ValueAnimator;
    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2736
    const-wide/16 v6, 0x96

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2737
    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2738
    new-instance v5, Lcom/android/systemui/stackdivider/DividerView$GuideView$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView$3;-><init>(Lcom/android/systemui/stackdivider/DividerView$GuideView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2743
    new-instance v5, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;-><init>(Lcom/android/systemui/stackdivider/DividerView$GuideView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2759
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 2683
    .end local v0    # "guideAlpha":Landroid/view/animation/Animation;
    .end local v1    # "guideDimParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "guideParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "guideRectAlpha":Landroid/animation/ValueAnimator;
    .end local v4    # "guideRectParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void

    .line 2690
    .restart local v2    # "guideParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2691
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 2706
    .restart local v1    # "guideDimParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "guideRectParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2707
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2708
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 2711
    :cond_3
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2712
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2713
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v5, v9, :cond_4

    .line 2714
    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2715
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2716
    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 2718
    :cond_4
    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2719
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2720
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1

    .line 2734
    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
    .end array-data
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 2770
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    return v0
.end method

.method public setDimlayer(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 2764
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    if-eqz v0, :cond_0

    .line 2765
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2763
    :cond_0
    return-void
.end method

.method public setDividerView(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/view/View;)V
    .locals 0
    .param p1, "handle"    # Lcom/android/systemui/stackdivider/DividerHandleView;
    .param p2, "background"    # Landroid/view/View;

    .prologue
    .line 2605
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    .line 2606
    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mBackground:Landroid/view/View;

    .line 2604
    return-void
.end method

.method public setFocusedZone(Lcom/android/systemui/stackdivider/FocusedFrameView;ILandroid/graphics/Rect;I)V
    .locals 3
    .param p1, "focusedFrameView"    # Lcom/android/systemui/stackdivider/FocusedFrameView;
    .param p2, "focusedStackId"    # I
    .param p3, "focusRect"    # Landroid/graphics/Rect;
    .param p4, "displayOrientation"    # I

    .prologue
    .line 2591
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    .line 2592
    iput p2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    .line 2593
    iput-object p3, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    .line 2594
    iput p4, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDisplayOrientation:I

    .line 2595
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2596
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDisplayOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2597
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mNavigationBarHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2590
    :cond_0
    :goto_0
    return-void

    .line 2599
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mNavigationBarHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 2610
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2611
    .local v2, "guideParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2612
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2613
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2614
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2616
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2617
    .local v4, "guideRectParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2618
    .local v1, "guideDimParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDisplayOrientation:I

    if-ne v5, v8, :cond_2

    .line 2619
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2620
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2621
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v5, v9, :cond_1

    .line 2622
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2623
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2624
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2644
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    if-nez v5, :cond_0

    .line 2645
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v5, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2646
    .local v0, "guideAlpha":Landroid/view/animation/Animation;
    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2647
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDuration:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2648
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2650
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2651
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 2652
    .local v3, "guideRectAlpha":Landroid/animation/ValueAnimator;
    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2653
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDuration:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2654
    new-instance v5, Lcom/android/systemui/stackdivider/DividerView$GuideView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView$GuideView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2659
    new-instance v5, Lcom/android/systemui/stackdivider/DividerView$GuideView$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView$GuideView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2670
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 2671
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setGradient()V

    .line 2673
    iput-boolean v8, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    .line 2675
    .end local v0    # "guideAlpha":Landroid/view/animation/Animation;
    .end local v3    # "guideRectAlpha":Landroid/animation/ValueAnimator;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    .line 2676
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 2677
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    .line 2678
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 2679
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    .line 2680
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 2609
    return-void

    .line 2626
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2627
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2628
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0

    .line 2631
    :cond_2
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2632
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2633
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v5, v9, :cond_3

    .line 2634
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2635
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2636
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 2638
    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2639
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2640
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 2651
    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data
.end method
