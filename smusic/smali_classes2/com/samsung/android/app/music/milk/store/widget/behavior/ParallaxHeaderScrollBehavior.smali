.class public Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;
.super Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;
.source "ParallaxHeaderScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;,
        Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior",
        "<",
        "Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final HEADER_SCROLL_VELOCITY_FACTOR:F = 4.0f

.field private static final TAG:Ljava/lang/String;

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

.field private mDependencyView:Landroid/view/View;

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mParallaxHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private mParent:Landroid/support/design/widget/CoordinatorLayout;

.field private mScrollToTopRunnable:Ljava/lang/Runnable;

.field private mScrolling:Z

.field mSecondScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mSkipNestedPreScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    .line 444
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrolling:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrolling:Z

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParallaxHeaderScrollBehavior. attrs - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mDependencyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrolling:Z

    return v0
.end method

.method private findCurrentScrollableView(Landroid/view/View;)Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 402
    instance-of v9, p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v9, :cond_0

    .line 403
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    .line 439
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 407
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v9, p1, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v9, :cond_1

    move-object p1, v8

    .line 408
    goto :goto_0

    .line 412
    :cond_1
    instance-of v9, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v9, :cond_2

    instance-of v9, p1, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChild;

    if-eqz v9, :cond_3

    :cond_2
    move-object p1, v8

    .line 413
    goto :goto_0

    .line 416
    :cond_3
    instance-of v9, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v9, :cond_4

    move-object v5, p1

    .line 417
    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 418
    .local v5, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 419
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    instance-of v9, v0, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    if-eqz v9, :cond_4

    .line 420
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    .end local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v3

    .line 421
    .local v3, "fragment":Landroid/app/Fragment;
    invoke-virtual {v3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->findCurrentScrollableView(Landroid/view/View;)Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    move-result-object p1

    goto :goto_0

    .line 425
    .end local v3    # "fragment":Landroid/app/Fragment;
    .end local v5    # "pager":Landroid/support/v4/view/ViewPager;
    :cond_4
    instance-of v9, p1, Landroid/view/ViewGroup;

    if-eqz v9, :cond_7

    move-object v7, p1

    .line 426
    check-cast v7, Landroid/view/ViewGroup;

    .line 427
    .local v7, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 428
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    if-ge v4, v2, :cond_7

    .line 429
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 430
    .local v1, "child":Landroid/view/View;
    instance-of v9, v1, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v9, :cond_6

    .line 428
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 433
    :cond_6
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->findCurrentScrollableView(Landroid/view/View;)Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    move-result-object v6

    .line 434
    .local v6, "scrollableView":Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;
    if-eqz v6, :cond_5

    move-object p1, v6

    .line 435
    goto :goto_0

    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v4    # "index":I
    .end local v6    # "scrollableView":Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;
    .end local v7    # "viewGroup":Landroid/view/ViewGroup;
    :cond_7
    move-object p1, v8

    .line 439
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->canDragView(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)Z

    move-result v0

    return v0
.end method

.method protected canDragView(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)Z
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mParallaxHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 199
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mParallaxHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 201
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->getTopAndBottomOffset()I

    move-result v2

    add-int v0, v1, v2

    .line 202
    .local v0, "remainScrollableHeaderHeight":I
    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canDragView. current - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->canScroll(II)Z

    move-result v1

    .line 206
    .end local v0    # "remainScrollableHeaderHeight":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected canScroll(I)Z
    .locals 4
    .param p1, "dy"    # I

    .prologue
    .line 255
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mParallaxHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v2, :cond_0

    .line 256
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    .line 257
    .local v1, "scrollable":Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mParallaxHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 258
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->getTopAndBottomOffset()I

    move-result v3

    add-int v0, v2, v3

    .line 260
    .local v0, "remainScrollableHeaderHeight":I
    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->canScroll(II)Z

    move-result v2

    .line 262
    .end local v0    # "remainScrollableHeaderHeight":I
    .end local v1    # "scrollable":Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->canScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method dispatchFling(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;F)V
    .locals 10
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityY"    # F

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    .line 156
    .local v9, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_1

    .line 157
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float p4, v0

    .line 158
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchFling. new velocityY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mSecondScroller:Landroid/support/v4/widget/ScrollerCompat;

    if-nez v0, :cond_2

    .line 162
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mSecondScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 165
    :cond_2
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchFling. velocityY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mSecondScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 168
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, v1

    move v3, v1

    move v7, v5

    move v8, v6

    .line 167
    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mSecondScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;-><init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    goto :goto_0
.end method

.method dispatchGoToTop(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;)V
    .locals 3
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "target"    # Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    .prologue
    .line 137
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchGoToTop. runnable - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrollToTopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrolling:Z

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrollToTopRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrollToTopRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrollToTopRunnable:Ljava/lang/Runnable;

    .line 143
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;-><init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrollToTopRunnable:Ljava/lang/Runnable;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrollToTopRunnable:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->getMaxDragOffset(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)I

    move-result v0

    return v0
.end method

.method getMaxDragOffset(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)I
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method protected bridge synthetic isPointInChildBounds(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->isPointInChildBounds(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected isPointInChildBounds(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->canHandleScrollEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->isPointInChildBounds(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;)Z
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 72
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDependentViewChanged. dep - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method bridge synthetic onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 25
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    return-void
.end method

.method onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V
    .locals 2
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "layout"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 182
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    const-string v1, "onFlingFinished."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 25
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;I)Z

    move-result v0

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;I)Z
    .locals 7
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 268
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    .line 269
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v1

    .line 272
    .local v1, "handled":Z
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getPendingAction()I

    move-result v2

    .line 273
    .local v2, "pendingAction":I
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLayoutChild. pendingAction - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->findCurrentScrollableView(Landroid/view/View;)Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    move-result-object v3

    .line 276
    .local v3, "scrollable":Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 277
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLayoutChild. old - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    .line 281
    :cond_0
    if-eqz v2, :cond_1

    .line 282
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 284
    .local v0, "animate":Z
    :goto_0
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_1

    .line 285
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v4, :cond_1

    .line 286
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-virtual {p0, p1, p2, v4}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->dispatchGoToTop(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;)V

    .line 290
    .end local v0    # "animate":Z
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->resetPendingAction()V

    .line 292
    return v1

    .line 282
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    .prologue
    .line 25
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;IIII)Z

    move-result v0

    return v0
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;IIII)Z
    .locals 7
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    .prologue
    const/4 v2, 0x0

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 104
    .local v6, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v0, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 110
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 111
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7

    .prologue
    .line 25
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z

    .prologue
    .line 122
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedFling. velocityY - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", consumed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 6

    .prologue
    .line 25
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;FF)Z
    .locals 3
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F

    .prologue
    .line 130
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedPreFling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->dispatchFling(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;F)V

    .line 132
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    .prologue
    .line 25
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;II[I)V
    .locals 7
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I

    .prologue
    .line 247
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mDependencyView:Landroid/view/View;

    .line 248
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mSkipNestedPreScroll:Z

    if-nez v0, :cond_0

    .line 249
    const/4 v6, 0x1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v0

    neg-int v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v6

    .line 251
    :cond_0
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 25
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;IIII)V
    .locals 6
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I

    .prologue
    const/4 v5, 0x0

    .line 218
    invoke-super/range {p0 .. p7}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 220
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mDependencyView:Landroid/view/View;

    .line 222
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedScroll : dyConsumed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dyUnconsumed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    if-gez p7, :cond_0

    .line 227
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mSkipNestedPreScroll:Z

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mSkipNestedPreScroll:Z

    goto :goto_0
.end method

.method public bridge synthetic onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 25
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedScrollAccepted. target - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", directTargetChild - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 62
    return-void
.end method

.method public bridge synthetic onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .prologue
    .line 25
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "rectangle"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    const-string v1, "onRequestChildRectangleOnScreen"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 25
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 4
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I

    .prologue
    const/4 v1, 0x1

    .line 79
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mParallaxHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 80
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_2

    .line 81
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartNestedScroll : height - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", range - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " top - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->getTopAndBottomOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrolling:Z

    .line 85
    instance-of v0, p4, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v0, :cond_0

    move-object v0, p4

    .line 86
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    .line 88
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartNestedScroll. new scrollable - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mCurrentScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    instance-of v0, p4, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-eqz v0, :cond_1

    .line 91
    check-cast p4, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    .end local p4    # "target":Landroid/view/View;
    invoke-interface {p4, p2}, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;->setExpandable(Lcom/samsung/android/app/music/milk/store/widget/Expandable;)V

    :cond_1
    move v0, v1

    .line 95
    :goto_0
    return v0

    .restart local p4    # "target":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 25
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;)V
    .locals 2
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p3, "target"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 240
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->TAG:Ljava/lang/String;

    const-string v1, "onStopNestedScroll. "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mScrolling:Z

    .line 242
    return-void
.end method

.method protected onTopOffsetChanged(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onTopOffsetChanged(I)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mParallaxHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mParallaxHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->onTopOffsetChanged(I)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mDependencyView:Landroid/view/View;

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mDependencyView:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mParallaxHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->onParallaxScrolled(II)V

    .line 304
    :cond_0
    return-void
.end method
