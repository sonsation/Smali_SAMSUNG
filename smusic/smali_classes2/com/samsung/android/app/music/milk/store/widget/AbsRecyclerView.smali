.class public abstract Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "AbsRecyclerView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/ClipableView;
.implements Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;
.implements Lcom/samsung/android/app/music/milk/store/widget/FastScroller$FastScrollPositionChangedListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;,
        Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final EXPAND_DELAY:I = 0x14

.field private static final GTP_STATE_NONE:I = 0x0

.field private static final GTP_STATE_PRESSED:I = 0x2

.field private static final GTP_STATE_SHOWN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AbsRecyclerView"

.field private static final MAX_EXPAND_CHECK_LOOP_COUNT:I = 0x14


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private itemClickListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAutoHide:Ljava/lang/Runnable;

.field private mBaseBottomPadding:F

.field mClipTop:I

.field private mContainer:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private mEnableGoToTop:Z

.field private mExpandableHeader:Lcom/samsung/android/app/music/milk/store/widget/Expandable;

.field private mFastScrollEnabled:Z

.field private mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private mGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mGoToTopBottomPadding:I

.field private mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mGoToTopLastState:I

.field private mGoToTopMoved:Z

.field private mGoToTopRect:Landroid/graphics/Rect;

.field private mGoToTopSize:I

.field private mGoToTopState:I

.field private mGoToToping:Z

.field private mIsActionMode:Z

.field private mIsShowingLoading:Z

.field private mListPadding:Landroid/graphics/Rect;

.field private mLoadingProgressView:Landroid/view/View;

.field private mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

.field private mParallaxRecyclerHelper:Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;

.field private mPrimaryColorChangeListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

.field private mShowFadeOutGTP:I

.field private mSizeChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;-><init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mParallaxRecyclerHelper:Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;

    .line 119
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mPrimaryColorChangeListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .line 149
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mClipTop:I

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->initialized(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/FastScroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->playGotoToFadeOut()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->playGotoToFadeIn()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setupGoToTop(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/Expandable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mExpandableHeader:Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mShowFadeOutGTP:I

    return p1
.end method

.method private autoHide(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    .line 889
    packed-switch p1, :pswitch_data_0

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 891
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isFastScrollerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 893
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 897
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 898
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 889
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private canScrollDown()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 769
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getChildCount()I

    move-result v2

    .line 771
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    if-nez v5, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string v5, "No adapter attached; skipping canScrollDown"

    invoke-static {v3, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :goto_0
    return v4

    .line 775
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->findFirstChildPosition()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    move v0, v3

    .line 776
    .local v0, "canScrollDown":Z
    :goto_1
    if-nez v0, :cond_1

    if-lez v2, :cond_1

    .line 777
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 778
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_3

    move v0, v3

    .end local v1    # "child":Landroid/view/View;
    :cond_1
    :goto_2
    move v4, v0

    .line 781
    goto :goto_0

    .end local v0    # "canScrollDown":Z
    :cond_2
    move v0, v4

    .line 775
    goto :goto_1

    .restart local v0    # "canScrollDown":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    move v0, v4

    .line 778
    goto :goto_2
.end method

.method private canScrollUp()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 759
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->findFirstChildPosition()I

    move-result v4

    if-lez v4, :cond_1

    move v0, v2

    .line 760
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 761
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 762
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getPaddingTop()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v0, v2

    .line 765
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .end local v0    # "canScrollUp":Z
    :cond_1
    move v0, v3

    .line 759
    goto :goto_0

    .restart local v0    # "canScrollUp":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    move v0, v3

    .line 762
    goto :goto_1
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getScrollY()I

    move-result v1

    .line 668
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 669
    .local v0, "restoreCount":I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 670
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopState:I

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 671
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setupGoToTop(I)V

    .line 674
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 675
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 676
    return-void
.end method

.method private findFirstChildPosition()I
    .locals 3

    .prologue
    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 747
    .local v1, "layoutmanager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_0

    .line 748
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v1    # "layoutmanager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 751
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 752
    const/4 v0, 0x0

    .line 755
    :cond_1
    return v0
.end method

.method private initialized(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->newLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v7

    .line 218
    .local v7, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v7, :cond_0

    .line 219
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 225
    .local v0, "animator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    instance-of v8, v0, Landroid/support/v7/widget/SimpleItemAnimator;

    if-eqz v8, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v8

    const-string v9, "initialized : SimpleItemAnimator"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    .end local v0    # "animator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    invoke-virtual {v0, v11}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020316

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d07af

    .line 234
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopBottomPadding:I

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d07b0

    .line 236
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopSize:I

    .line 238
    iput-boolean v11, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEnableGoToTop:Z

    .line 239
    iput-boolean v11, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mSizeChange:Z

    .line 240
    iput-boolean v11, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToToping:Z

    .line 241
    iput-boolean v11, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopMoved:Z

    .line 243
    const/16 v8, 0x9c4

    iput v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->GO_TO_TOP_HIDE:I

    .line 244
    const/4 v8, 0x0

    iput v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mBaseBottomPadding:F

    .line 246
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 247
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 248
    new-instance v8, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$3;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$3;-><init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V

    iput-object v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 253
    new-instance v8, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$4;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$4;-><init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V

    iput-object v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 258
    new-instance v8, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$5;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$5;-><init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V

    iput-object v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    .line 264
    iput-boolean v11, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mIsShowingLoading:Z

    .line 266
    const/4 v5, 0x1

    .line 267
    .local v5, "fastScrollEnabled":Z
    const/4 v4, 0x1

    .line 268
    .local v4, "enableGoToTop":Z
    if-eqz p2, :cond_5

    .line 269
    sget-object v8, Lcom/samsung/android/app/music/R$styleable;->MilkRecyclerView:[I

    .line 270
    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 271
    .local v1, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 272
    .local v3, "count":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    if-ge v6, v3, :cond_4

    .line 273
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 274
    .local v2, "attr":I
    if-nez v2, :cond_3

    .line 275
    invoke-virtual {v1, v6, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 272
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 276
    :cond_3
    const/4 v8, 0x1

    if-ne v2, v8, :cond_2

    .line 277
    invoke-virtual {v1, v6, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    goto :goto_1

    .line 280
    .end local v2    # "attr":I
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    .end local v1    # "array":Landroid/content/res/TypedArray;
    .end local v3    # "count":I
    .end local v6    # "index":I
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initialized. fast scroll - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", go to top - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setFastScrollEnabled(Z)V

    .line 284
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->enableGoToTop(Z)V

    .line 285
    return-void
.end method

.method private isSupportGotoTop()Z
    .locals 1

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkBackIsRunning()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 642
    .line 643
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 644
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v2

    .line 647
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "enabledServices":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "(?i).*TalkBackService.*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private playGotoToFadeIn()V
    .locals 4

    .prologue
    .line 877
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 883
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 885
    :cond_1
    return-void
.end method

.method private playGotoToFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 866
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 872
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 874
    :cond_1
    return-void
.end method

.method private setupGoToTop(I)V
    .locals 12
    .param p1, "state"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 786
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEnableGoToTop:Z

    if-eqz v4, :cond_a

    .line 787
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 788
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopLastState:I

    if-eq p1, v4, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setup GOTOTOP = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mGoToTopLastState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopLastState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_0
    if-ne p1, v10, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollUp()Z

    move-result v4

    if-nez v4, :cond_1

    .line 794
    const/4 p1, 0x0

    .line 797
    :cond_1
    if-ne p1, v7, :cond_c

    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mSizeChange:Z

    if-eqz v4, :cond_c

    .line 798
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollUp()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollDown()Z

    move-result v4

    if-nez v4, :cond_b

    .line 799
    const/4 p1, 0x0

    .line 807
    :cond_2
    :goto_0
    if-eqz p1, :cond_e

    .line 808
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 813
    :cond_3
    :goto_1
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mShowFadeOutGTP:I

    if-nez v4, :cond_4

    if-nez p1, :cond_4

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopLastState:I

    if-eqz v4, :cond_4

    .line 815
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 818
    :cond_4
    if-eq p1, v11, :cond_5

    .line 819
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 822
    :cond_5
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopState:I

    .line 823
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getMeasuredWidth()I

    move-result v3

    .line 824
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 826
    .local v1, "h":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getPaddingLeft()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 827
    .local v2, "realWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getPaddingLeft()I

    move-result v4

    div-int/lit8 v5, v2, 0x2

    add-int v0, v4, v5

    .line 829
    .local v0, "centerX":I
    packed-switch p1, :pswitch_data_0

    .line 843
    :cond_6
    :goto_2
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mShowFadeOutGTP:I

    if-ne v4, v11, :cond_7

    .line 844
    iput v9, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mShowFadeOutGTP:I

    .line 847
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 849
    if-ne p1, v10, :cond_9

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopLastState:I

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 850
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mSizeChange:Z

    if-eqz v4, :cond_9

    .line 852
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 855
    :cond_9
    iput-boolean v9, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mSizeChange:Z

    .line 856
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopState:I

    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopLastState:I

    .line 858
    .end local v0    # "centerX":I
    .end local v1    # "h":I
    .end local v2    # "realWidth":I
    .end local v3    # "w":I
    :cond_a
    return-void

    .line 801
    :cond_b
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopLastState:I

    goto :goto_0

    .line 803
    :cond_c
    if-ne p1, v7, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollUp()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollDown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 804
    :cond_d
    const/4 p1, 0x1

    goto :goto_0

    .line 809
    :cond_e
    if-eq p1, v10, :cond_3

    .line 810
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 831
    .restart local v0    # "centerX":I
    .restart local v1    # "h":I
    .restart local v2    # "realWidth":I
    .restart local v3    # "w":I
    :pswitch_0
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mShowFadeOutGTP:I

    if-ne v4, v11, :cond_6

    .line 832
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    goto :goto_2

    .line 837
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 838
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopSize:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopBottomPadding:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopSize:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopBottomPadding:I

    sub-int v8, v1, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    goto :goto_2

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showGotoTop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 737
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 738
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setupGoToTop(I)V

    .line 739
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->autoHide(I)V

    .line 741
    :cond_0
    return-void
.end method


# virtual methods
.method public canHandleScrollEvent()Z
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mParallaxRecyclerHelper:Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->canHandleScrollEvent()Z

    move-result v0

    return v0
.end method

.method public canScroll(II)Z
    .locals 1
    .param p1, "dy"    # I
    .param p2, "remainHeaderHeight"    # I

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mParallaxRecyclerHelper:Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->canScroll(II)Z

    move-result v0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 862
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clipExpandableTop(I)V
    .locals 2
    .param p1, "top"    # I

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getClipToPadding()Z

    move-result v0

    .line 502
    .local v0, "clipPadding":Z
    if-eqz v0, :cond_0

    .line 503
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setClipToPadding(Z)V

    .line 505
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->clipTop(I)V

    .line 506
    return-void
.end method

.method public clipTop(I)V
    .locals 3
    .param p1, "top"    # I

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipTop : top - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mClipTop:I

    .line 497
    return-void
.end method

.method protected dispatchAdapterDataChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 160
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<*>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 163
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mIsShowingLoading:Z

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setVisibility(I)V

    .line 177
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->onAdapterDataChanged()V

    .line 178
    return-void

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->shouldHandleClip()Z

    move-result v0

    .line 520
    .local v0, "clip":Z
    const/4 v2, 0x0

    .line 521
    .local v2, "count":I
    if-eqz v0, :cond_0

    .line 522
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mClipTop:I

    .line 523
    .local v1, "clipTop":I
    if-gtz v1, :cond_2

    .line 524
    const/4 v0, 0x0

    .line 530
    .end local v1    # "clipTop":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 531
    if-eqz v0, :cond_1

    .line 532
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 534
    :cond_1
    return-void

    .line 526
    .restart local v1    # "clipTop":I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 527
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 545
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v2, v4

    .line 546
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v3, v4

    .line 548
    .local v3, "y":I
    packed-switch v0, :pswitch_data_0

    .line 638
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_1
    return v4

    .line 550
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isSupportGotoTop()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 551
    iput-boolean v7, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopMoved:Z

    .line 552
    iput-boolean v7, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToToping:Z

    .line 555
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isSupportGotoTop()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopState:I

    if-eq v4, v6, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 556
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setupGoToTop(I)V

    .line 558
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 559
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move v4, v5

    .line 562
    goto :goto_1

    .line 566
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isSupportGotoTop()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopState:I

    if-ne v4, v6, :cond_0

    .line 567
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 568
    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopState:I

    .line 569
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 570
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->autoHide(I)V

    .line 571
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopMoved:Z

    :cond_2
    move v4, v5

    .line 573
    goto :goto_1

    .line 577
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isSupportGotoTop()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopState:I

    if-eqz v4, :cond_0

    .line 578
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopState:I

    if-ne v4, v6, :cond_3

    .line 579
    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopState:I

    .line 582
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 586
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isSupportGotoTop()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopState:I

    if-ne v4, v6, :cond_7

    .line 587
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollUp()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 588
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getChildCount()I

    move-result v1

    .line 589
    .local v1, "childCount":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->computeVerticalScrollOffset()I

    move-result v4

    if-eqz v4, :cond_5

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->stopScroll()V

    .line 591
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToToping:Z

    .line 592
    if-lez v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->findFirstChildPosition()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 593
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v4, :cond_6

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v4, v1, v7}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 599
    :cond_4
    :goto_2
    new-instance v4, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;-><init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 627
    .end local v1    # "childCount":I
    :cond_5
    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->autoHide(I)V

    .line 628
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 629
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->playSoundEffect(I)V

    move v4, v5

    .line 630
    goto/16 :goto_1

    .line 596
    .restart local v1    # "childCount":I
    :cond_6
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->scrollToPosition(I)V

    goto :goto_2

    .line 633
    .end local v1    # "childCount":I
    :cond_7
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopMoved:Z

    if-eqz v4, :cond_0

    .line 634
    iput-boolean v7, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopMoved:Z

    goto/16 :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 559
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 659
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 661
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    .line 662
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 664
    :cond_0
    return-void
.end method

.method public enableGoToTop(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    .line 679
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 680
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEnableGoToTop:Z

    .line 681
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 682
    new-array v0, v8, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 683
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 684
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 685
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$7;-><init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 694
    new-array v0, v8, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 695
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 696
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 697
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$8;-><init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 707
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$9;-><init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 730
    :cond_0
    return-void

    .line 681
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 682
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 694
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public getClipTop()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mClipTop:I

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "AbsRecyclerView"

    return-object v0
.end method

.method public getScrollVelocityY()I
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mParallaxRecyclerHelper:Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->getScrollVelocityY()I

    move-result v0

    return v0
.end method

.method public getScrolledPosition()I
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mParallaxRecyclerHelper:Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->getScrolledPosition()I

    move-result v0

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 959
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 961
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getmEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public isEmptyViewShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 448
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 451
    :cond_0
    return v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScrollEnabled:Z

    return v0
.end method

.method public isFastScrollerEnabled()Z
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mParallaxRecyclerHelper:Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public isSelectMode()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowLoading()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mIsShowingLoading:Z

    return v0
.end method

.method public abstract newLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onAdapterDataChanged()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdapterDataChanged : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAttachedToWindow : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setScrollbarPosition(I)V

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mPrimaryColorChangeListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 297
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 457
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick : pos - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isSelectMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;

    if-eqz v1, :cond_1

    .line 460
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setSelection(I)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->itemClickListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->isClickable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    if-ltz v0, :cond_0

    .line 465
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->itemClickListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;

    .line 466
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-interface {v1, p0, p1, v2, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;->onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateActionMode : listener - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 403
    :goto_0
    return v0

    .line 402
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mActionMode:Landroid/view/ActionMode;

    .line 403
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyActionMode : listener - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mActionMode:Landroid/view/ActionMode;

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;->setSelectMode(Z)V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDetachedFromWindow : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mPrimaryColorChangeListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 306
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 936
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x1

    .line 974
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    .line 975
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout. changed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", left - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->updateThumbPosition()V

    .line 979
    :cond_0
    if-eqz p1, :cond_1

    .line 980
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mSizeChange:Z

    .line 981
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setupGoToTop(I)V

    .line 982
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->autoHide(I)V

    .line 984
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const/4 v1, 0x0

    .line 479
    :goto_0
    return v1

    .line 477
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 478
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setSelection(I)V

    .line 479
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onParallaxScrolled(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "scrollRange"    # I

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mParallaxRecyclerHelper:Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->onParallaxScrolled(II)V

    .line 1032
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 411
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 949
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onRtlPropertiesChanged(I)V

    .line 950
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setScrollbarPosition(I)V

    .line 953
    :cond_0
    return-void
.end method

.method public onScrollPositionChanged(FIZ)V
    .locals 2
    .param p1, "y"    # F
    .param p2, "targetIndex"    # I
    .param p3, "fromScroller"    # Z

    .prologue
    .line 1055
    if-eqz p3, :cond_0

    .line 1056
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->showGotoTop()V

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mExpandableHeader:Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mExpandableHeader:Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/Expandable;->expand(Z)Z

    .line 1061
    :cond_0
    return-void

    .line 1058
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1049
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 1050
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mParallaxRecyclerHelper:Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->onScrollStateChanged(I)V

    .line 1051
    return-void
.end method

.method public onScrolled(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1036
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 1037
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isLayoutFrozen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1038
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    const/4 p2, 0x0

    .line 1041
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 1042
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->showGotoTop()V

    .line 1045
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 941
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 942
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->updateLayout()V

    .line 945
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 930
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 213
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 333
    if-eqz p1, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 335
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAdapter : manager - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->newLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mExpandableHeader:Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mExpandableHeader:Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/Expandable;->expand(Z)Z

    .line 344
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 345
    instance-of v1, p1, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 346
    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, p1

    .line 347
    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->setItemLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 360
    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :goto_0
    return-void

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_4
    :goto_1
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public setContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mContainer:Landroid/view/View;

    .line 437
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    .line 441
    return-void
.end method

.method public setExpandable(Lcom/samsung/android/app/music/milk/store/widget/Expandable;)V
    .locals 3
    .param p1, "expandable"    # Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExpandable : header - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mExpandableHeader:Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    .line 540
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .param p1, "fastScrollEnabled"    # Z

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 997
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScrollEnabled:Z

    .line 998
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScrollEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setEnabled(Z)V

    .line 1000
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->updateLayout()V

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    .line 1002
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    .line 1003
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setEnabled(Z)V

    .line 1004
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->updateLayout()V

    goto :goto_0
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layout"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLayoutManager : layout - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 207
    return-void
.end method

.method public setLoadingProgressView(Landroid/view/View;)V
    .locals 0
    .param p1, "progress"    # Landroid/view/View;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mLoadingProgressView:Landroid/view/View;

    .line 908
    return-void
.end method

.method public setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->itemClickListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;

    .line 201
    return-void
.end method

.method public setOnMultiChoiceModeListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    .line 192
    return-void
.end method

.method public setSelection(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 367
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    if-nez v5, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "setSelection : multi listener is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 373
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v2, :cond_2

    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSelection : no holder at position - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    instance-of v5, v5, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;

    if-eqz v5, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;

    .line 380
    .local v0, "adapter":Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;->isSelectable(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 381
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;->isSelected(I)Z

    move-result v1

    .line 382
    .local v1, "checked":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isSelectMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 383
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_3

    .line 384
    :goto_1
    invoke-interface {v5, v6, v2, p1, v3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;Landroid/support/v7/widget/RecyclerView$ViewHolder;IZ)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 383
    goto :goto_1

    .line 386
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->startSelectMode()V

    .line 387
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mMultiChoiceModeListener:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_5

    .line 388
    :goto_2
    invoke-interface {v5, v6, v2, p1, v3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnMultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;Landroid/support/v7/widget/RecyclerView$ViewHolder;IZ)V

    goto :goto_0

    :cond_5
    move v3, v4

    .line 387
    goto :goto_2

    .line 391
    .end local v1    # "checked":Z
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "setSelection : this item is not selectable"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 966
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollbarPosition(I)V

    .line 967
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mFastScroller:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setScrollbarPosition(I)V

    .line 970
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_0
    return-void
.end method

.method protected shouldHandleClip()Z
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mClipTop:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLoading(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    .line 915
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mLoadingProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 916
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mLoadingProgressView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 918
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mIsShowingLoading:Z

    .line 919
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 920
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mIsShowingLoading:Z

    if-eqz v0, :cond_3

    .line 921
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 926
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 916
    goto :goto_0

    .line 923
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->dispatchAdapterDataChanged()V

    goto :goto_1
.end method

.method public startSelectMode()V
    .locals 3

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startSelectMode : start to select mode"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->mActionMode:Landroid/view/ActionMode;

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 326
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;->setSelectMode(Z)V

    .line 329
    :cond_0
    return-void
.end method
