.class public abstract Lcom/samsung/android/glview/GLAbsList;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "GLAbsList.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;
.implements Lcom/samsung/android/glview/GLView$DragListener;
.implements Lcom/samsung/android/glview/GLView$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLAbsList$MainHandler;,
        Lcom/samsung/android/glview/GLAbsList$ScrollListener;,
        Lcom/samsung/android/glview/GLAbsList$ItemSelectListener;,
        Lcom/samsung/android/glview/GLAbsList$Adapter;
    }
.end annotation


# static fields
.field private static final BOUNCE_DECELERATION_POSITION_DIVIDE_FACTOR:F = 1.0f

.field private static final BOUNCE_SMOOTH_LANDING_FACTOR:F = 0.5f

.field private static final BOUNCING_DECELERATION_DIP:F = 30.0f

.field private static final DEFAULT_OVER_SCROLL_START_OFFSET_DIP:I = -0x2

.field private static final DEFAULT_SCROLLBAR_PADDING_DIP:I = 0x1

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final DRAG_ATTENUATION_RATE_FACTOR:F = 0.2f

.field private static final DRAG_OUT_DISTANCE_LIMIT_DIP:F = 25.0f

.field private static final ENABLE_DECELERATION_TIMEOUT:I = 0x1f4

.field private static final FLING_DECELERATION_DIP:F = 40.0f

.field private static final MESSAGE_ENABLE_DECELERATION:I = 0x2

.field private static final MESSAGE_HIDE_SCROLLBAR:I = 0x1

.field private static final SCROLLBAR_ID:I = 0xfffff

.field private static final SCROLLBAR_TIMEOUT:I = 0x3e8

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_PORTRAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLAbsList"

.field private static final VELOCITY_MODERATION_RATIO:F = 0.01f

.field private static final VELOCITY_REVISE_THRESHOLD_DIP:F = 5.0f


# instance fields
.field protected mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

.field private mBounceImageTop:Lcom/samsung/android/glview/GLImage;

.field private mBouncing:Z

.field private final mBouncingDeceleration:F

.field protected mContentHeight:F

.field protected mContentWidth:F

.field private mDownEventX:F

.field private mDownEventY:F

.field private final mDragOutDistanceLimit:F

.field private mEnableBounceDeceleration:Z

.field private mEnableOverScrollEffect:Z

.field private mFirstFullyVisibleViewIndex:I

.field private final mFlingDeceleration:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mIsDecelerationHandlerMessageExecuted:Z

.field private mLandscapeBounceMaxOffset:F

.field private mLandscapeBounceOffset:F

.field private mLastEventX:F

.field private mLastEventY:F

.field private mLastFullyVisibleViewIndex:I

.field private mListHeight:F

.field private mListVisibleHeight:F

.field private mListVisibleWidth:F

.field private mListWidth:F

.field protected mMainHandler:Landroid/os/Handler;

.field private mOverScrollStartOffset:F

.field private mPortraitBounceMaxOffset:F

.field private mPortraitBounceOffset:F

.field protected mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

.field private mScrollBarAlpha:F

.field private mScrollBarAutoHide:Z

.field private mScrollBarOffset:F

.field private mScrollBarPadding:F

.field private mScrollBarSize:F

.field private mScrollBarVisible:Z

.field private mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

.field protected mScrollOrientation:I

.field private mScrollRequested:Z

.field protected mScrollSumX:F

.field protected mScrollSumY:F

.field private mScrollThreshold:F

.field private mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

.field private mScrolling:Z

.field private final mVelocityReviseThreshold:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 6

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    new-instance v0, Lcom/samsung/android/glview/GLAbsList$MainHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLAbsList$MainHandler;-><init>(Lcom/samsung/android/glview/GLAbsList;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    iput v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    iput v2, p0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z

    iput v4, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    iput p4, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    iput p5, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/glview/GLAbsList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/glview/GLAbsList;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->enableBoundDeceleration(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/glview/GLAbsList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    return p1
.end method

.method private declared-synchronized enableBoundDeceleration(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 5

    const/4 v3, 0x0

    instance-of v2, p1, Lcom/samsung/android/glview/GLAbsList;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :goto_3
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_2
    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method protected declared-synchronized checkBoundary()Z
    .locals 6

    const v5, 0x3c23d70a    # 0.01f

    const/4 v4, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    :cond_1
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    :cond_2
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    :cond_7
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    :cond_8
    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_a
    :try_start_2
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    :cond_b
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_d

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    :cond_c
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_e
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    :cond_10
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_12
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(FF)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public getContentHeight()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    return v0
.end method

.method public getContentWidth()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    return v0
.end method

.method public getFirstFullyVisibleViewIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    return v0
.end method

.method public getLastFullyVisibleViewIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I

    return v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getScrollBarLength()F
    .locals 2

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "GLAbsList"

    const-string v1, "orientation value is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    return v0
.end method

.method public getScrollThreshold()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    return v0
.end method

.method protected declared-synchronized hideScrollBar()V
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getScrollBarAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->getAlphaOffAnimation(F)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v1, Lcom/samsung/android/glview/GLAbsList$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLAbsList$1;-><init>(Lcom/samsung/android/glview/GLAbsList;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/glview/GLAbsList;->setSize(FF)V

    iput v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iput v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->refreshList()V

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v1}, Lcom/samsung/android/glview/GLAbsList$Adapter;->reset()V

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    return-void
.end method

.method public isOverScrollEffectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v3, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public onAlphaUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->onAlphaUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    :cond_2
    return-void
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 0

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLAbsList;->translate(FF)V

    return-void
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 0

    return-void
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 17

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->scrollToVisible()Z

    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v12

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    :cond_8
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getMatrix()[F

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_42

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    if-nez v2, :cond_9

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->isClipped()Z

    move-result v12

    if-nez v12, :cond_9

    if-nez v6, :cond_41

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    const/4 v2, 0x1

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->isClipped()Z

    move-result v12

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    invoke-virtual {v10, v8, v3}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    if-eqz v12, :cond_3a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_19

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float v1, v12, v13

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v13}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_17

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    :cond_15
    :goto_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_16

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_18

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float v14, v5, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_b

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    :cond_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v13}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_20

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    :cond_1f
    :goto_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float v13, v5, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    :cond_20
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_21

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto :goto_c

    :cond_21
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto/16 :goto_c

    :cond_22
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v11

    :goto_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_24

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_f

    :cond_23
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_d

    :cond_24
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float v1, v12, v13

    goto :goto_e

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_28

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_28

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_27

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    :cond_27
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_2a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_29

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    :cond_29
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    :cond_2a
    :goto_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_16

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    :cond_2b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto :goto_10

    :cond_2c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto :goto_10

    :cond_2d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v11, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_11

    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_2f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_2f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    neg-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_31

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_31

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_30

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    :cond_31
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_33

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_32

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    :cond_32
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_34

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    :cond_33
    :goto_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v11, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    :cond_34
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_35

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto :goto_12

    :cond_35
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto/16 :goto_12

    :cond_36
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_37

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_37

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    :cond_37
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_38

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_38

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_39

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    :cond_38
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto/16 :goto_2

    :cond_39
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    goto :goto_13

    :cond_3a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3c

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    :cond_3b
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto/16 :goto_2

    :cond_3c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    :goto_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_14

    :cond_3d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_15

    :cond_3e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3f

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_14

    :cond_3f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v11

    :goto_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_14

    :cond_40
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_16

    :cond_41
    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v7, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v12}, Lcom/samsung/android/glview/GLView;->isClipped()Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_42
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_43

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_43

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v12, v8, v3}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    :cond_43
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v8, v3}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    :cond_44
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v8, v3}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    :cond_45
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDrawFirstTime:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutUpdated()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->onLayoutUpdated()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setScrollBarLayout()V

    return-void
.end method

.method public onReset()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->reset()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->reset()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->reset()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/glview/GLAbsList;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const v11, 0x3e4ccccd    # 0.2f

    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/android/glview/GLAbsList;->mapPointReverse([FFF)V

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v5

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    :try_start_2
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragging:Z

    if-nez v7, :cond_4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v12, :cond_4

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_2

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v12, :cond_3

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    :cond_4
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eqz v7, :cond_1f

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragging:Z

    if-nez v7, :cond_1f

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v12, :cond_1f

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_f

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    sub-float v0, v5, v7

    move v1, v0

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_7

    cmpg-float v5, v0, v10

    if-gez v5, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v3, 0x0

    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLView;

    if-nez v3, :cond_b

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v1, v8}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    :cond_7
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_9

    cmpl-float v5, v0, v10

    if-lez v5, :cond_8

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    :cond_9
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v0

    cmpl-float v5, v5, v10

    if-lez v5, :cond_a

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    sub-float v1, v0, v5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    :cond_a
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v7

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v7

    sub-float v1, v0, v5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    :cond_b
    const/4 v7, 0x0

    mul-float v8, v1, v11

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_2

    :cond_c
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_d

    if-nez v3, :cond_11

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x0

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v8, v8

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    :cond_d
    if-nez v3, :cond_12

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    :cond_e
    :goto_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    :cond_f
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v12, :cond_1c

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    sub-float v0, v5, v7

    move v1, v0

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_14

    cmpg-float v5, v0, v10

    if-gez v5, :cond_13

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_13

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v3, 0x0

    :cond_10
    :goto_5
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLView;

    if-nez v3, :cond_18

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v1, v7, v8}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_6

    :cond_11
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    mul-float/2addr v5, v11

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    goto :goto_3

    :cond_12
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_e

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float v7, v0, v11

    add-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_4

    :cond_13
    const/4 v1, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_5

    :cond_14
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_16

    cmpl-float v5, v0, v10

    if-lez v5, :cond_15

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v3, 0x0

    goto :goto_5

    :cond_15
    const/4 v1, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_5

    :cond_16
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v0

    cmpl-float v5, v5, v10

    if-lez v5, :cond_17

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    sub-float v1, v0, v5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_5

    :cond_17
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v7

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v7

    sub-float v1, v0, v5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_5

    :cond_18
    mul-float v7, v1, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto/16 :goto_6

    :cond_19
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_1a

    if-nez v3, :cond_1d

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    :goto_7
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    :cond_1a
    if-nez v3, :cond_1e

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    :cond_1b
    :goto_8
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    move v5, v6

    goto/16 :goto_0

    :cond_1d
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    mul-float/2addr v5, v11

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    goto :goto_7

    :cond_1e
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-nez v5, :cond_1b

    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1b

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float v7, v0, v11

    add-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_8

    :cond_1f
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v6, :cond_20

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_21

    :cond_20
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    :cond_21
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eqz v7, :cond_26

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v6, :cond_22

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_26

    :cond_22
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLView;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_9

    :cond_23
    if-nez v3, :cond_25

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    if-nez v7, :cond_25

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_24

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    neg-float v6, v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v7, v8

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    :cond_24
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v12, :cond_25

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    neg-float v6, v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v7, v8

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    :cond_25
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    const-string v6, "GLAbsList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "estimated fps = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    :cond_26
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized refreshList()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method protected declared-synchronized restartScrollBarTimer()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scrollList(FF)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v1

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_d

    move v0, p2

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_5

    cmpg-float v5, p2, v7

    if-gez v5, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v1, 0x0

    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    if-nez v1, :cond_3

    invoke-virtual {v2, v7, v0, v4}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    cmpl-float v5, p2, v7

    if-lez v5, :cond_6

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, p2, v5

    if-lez v5, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, p2

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v6

    add-float/2addr v5, p2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_2

    if-nez v1, :cond_a

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v6, v6

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    goto :goto_2

    :cond_b
    if-nez v1, :cond_c

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, p2

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    :cond_c
    :goto_4
    if-nez v1, :cond_19

    :goto_5
    move v4, v3

    goto/16 :goto_0

    :cond_d
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    move v0, p1

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_12

    cmpg-float v5, p1, v7

    if-gez v5, :cond_11

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v1, 0x0

    :cond_e
    :goto_6
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-nez v5, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    :cond_f
    :goto_7
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    if-nez v1, :cond_10

    invoke-virtual {v2, v0, v7, v4}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    goto :goto_6

    :cond_12
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_14

    cmpl-float v5, p1, v7

    if-lez v5, :cond_13

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v1, 0x0

    goto :goto_6

    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    :cond_14
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, p1

    cmpl-float v5, v5, v7

    if-lez v5, :cond_15

    const/4 v1, 0x1

    goto :goto_6

    :cond_15
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v6

    add-float/2addr v5, p1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_e

    const/4 v1, 0x1

    goto :goto_6

    :cond_16
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_f

    if-nez v1, :cond_17

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    goto :goto_7

    :cond_18
    if-nez v1, :cond_c

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, p1

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_4

    :cond_19
    move v3, v4

    goto/16 :goto_5
.end method

.method public scrollToVisible(Lcom/samsung/android/glview/GLView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    return-void
.end method

.method public scrollToVisible()Z
    .locals 13

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    if-nez v9, :cond_0

    :goto_0
    return v7

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v9

    if-eqz v9, :cond_1

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    const-string v7, "GLAbsList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scrollToVisible : do nothing, view = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", visibility = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v9, v8, :cond_8

    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_3

    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    :cond_2
    :goto_1
    iget v9, v1, Landroid/graphics/RectF;->top:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v9, v10}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v9

    if-eqz v9, :cond_5

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    move v7, v8

    goto :goto_0

    :cond_3
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v0

    :goto_2
    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v0, v9

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_2

    :cond_5
    iget v9, v1, Landroid/graphics/RectF;->top:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7

    iget v9, v2, Landroid/graphics/RectF;->top:F

    iget v10, v1, Landroid/graphics/RectF;->top:F

    sub-float v4, v9, v10

    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v9, v4

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    :cond_6
    :goto_3
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLView;

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    invoke-virtual {v5, v10, v11, v7}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_4

    :cond_7
    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v9, v10

    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v9, v4

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_3

    :cond_8
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_a

    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    :cond_9
    :goto_5
    iget v9, v1, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v9, v10}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v9

    if-eqz v9, :cond_c

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    move v7, v8

    goto/16 :goto_0

    :cond_a
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v6

    :goto_6
    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v9, v6, v9

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_5

    :cond_b
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_6

    :cond_c
    iget v9, v1, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_d

    iget v9, v2, Landroid/graphics/RectF;->left:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    sub-float v3, v9, v10

    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v9, v3

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_3

    :cond_d
    iget v9, v1, Landroid/graphics/RectF;->right:F

    iget v10, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    iget v9, v2, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v9, v10

    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v9, v3

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_3

    :cond_e
    iget-boolean v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v12, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v11, v12

    iget v12, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float/2addr v11, v12

    neg-float v11, v11

    invoke-virtual {v9, v10, v11, v7}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v7, v8

    goto/16 :goto_0
.end method

.method public sendAccessibilityEvent()V
    .locals 0

    return-void
.end method

.method public setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    return-void
.end method

.method public setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    .locals 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v0, v6, :cond_3

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v4

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_portrait_top:I

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v4

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_portrait_bottom:I

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setVisibleArea()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setScrollBarLayout()V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_landscape_left:I

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_landscape_right:I

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    goto :goto_0
.end method

.method protected declared-synchronized setBouncing(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setHeight(F)V

    return-void
.end method

.method public setOverScrollEffect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 10

    const/4 v9, 0x0

    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v7

    sub-float/2addr v7, v2

    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v7

    cmpl-float v7, v7, v2

    if-ltz v7, :cond_2

    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v8

    sub-float/2addr v8, v2

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v7

    sub-float v7, v3, v7

    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v7

    cmpl-float v7, v3, v7

    if-ltz v7, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v8

    sub-float v8, v3, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    :goto_2
    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v7

    sub-float/2addr v7, v4

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v7

    cmpl-float v7, v7, v4

    if-ltz v7, :cond_4

    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v8

    sub-float/2addr v8, v4

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    :goto_3
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v7

    sub-float v7, v0, v7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v8

    sub-float v8, v0, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    :goto_4
    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    :cond_1
    invoke-virtual {v5, v1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setVisibleArea()V

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setScrollBarLayout()V

    :cond_7
    return-void
.end method

.method public setScrollBarAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z

    return-void
.end method

.method protected setScrollBarLayout()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v0, v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    :goto_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    :goto_3
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_3
.end method

.method public setScrollBarPadding(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    return-void
.end method

.method public setScrollBarResource(I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setTag(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    return-void
.end method

.method public setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    return-void
.end method

.method public setScrollOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    return-void
.end method

.method public setScrollThreshold(F)V
    .locals 3

    const-string v0, "GLAbsList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollThreshold : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    return-void
.end method

.method public setScrolling(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    invoke-interface {v0}, Lcom/samsung/android/glview/GLAbsList$ScrollListener;->onScrollStart()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->resetDrag()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    invoke-interface {v0}, Lcom/samsung/android/glview/GLAbsList$ScrollListener;->onScrollEnd()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    iput p2, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    return-void
.end method

.method protected setVisibleArea()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setWidth(F)V

    return-void
.end method

.method public showScrollBar()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAlpha(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    goto :goto_0
.end method
