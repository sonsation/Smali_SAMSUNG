.class public abstract Lcom/android/launcher3/common/base/view/BaseRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "BaseRecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollListener;,
        Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;
    }
.end annotation


# static fields
.field private static final SCROLL_DELTA_THRESHOLD_DP:I = 0x4


# instance fields
.field protected mBackgroundPadding:Landroid/graphics/Rect;

.field private mDeltaThreshold:F

.field private mDownX:I

.field private mDownY:I

.field private mDy:I

.field private mLastY:I

.field protected mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDy:I

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDeltaThreshold:F

    .line 82
    new-instance v1, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;-><init>(Lcom/android/launcher3/common/base/view/BaseRecyclerView;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    .line 84
    new-instance v0, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollListener;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollListener;-><init>(Lcom/android/launcher3/common/base/view/BaseRecyclerView;)V

    .line 85
    .local v0, "listener":Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollListener;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 86
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/common/base/view/BaseRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/BaseRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDy:I

    return p1
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 135
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 136
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 137
    .local v2, "y":I
    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->isDraggingThumb()Z

    move-result v3

    return v3

    .line 140
    :pswitch_0
    iput v1, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDownX:I

    .line 141
    iput v2, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mLastY:I

    iput v2, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDownY:I

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->shouldStopScroll(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->stopScroll()V

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    iget v4, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDownX:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDownY:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mLastY:I

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 148
    :pswitch_1
    iput v2, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mLastY:I

    .line 149
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    iget v4, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDownX:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDownY:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mLastY:I

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->onFastScrollCompleted()V

    .line 154
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    iget v4, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDownX:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDownY:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mLastY:I

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->onUpdateScrollbar(I)V

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->draw(Landroid/graphics/Canvas;)V

    .line 236
    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 213
    .local v1, "visibleHeight":I
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->getThumbHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 214
    .local v0, "availableScrollBarHeight":I
    return v0
.end method

.method protected getAvailableScrollHeight(II)I
    .locals 5
    .param p1, "rowCount"    # I
    .param p2, "rowHeight"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v4

    .line 202
    .local v2, "visibleHeight":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getPaddingTop()I

    move-result v3

    mul-int v4, p1, p2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getPaddingBottom()I

    move-result v4

    add-int v1, v3, v4

    .line 203
    .local v1, "scrollHeight":I
    sub-int v0, v1, v2

    .line 204
    .local v0, "availableScrollHeight":I
    return v0
.end method

.method public getBackgroundPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected abstract getCurScrollState(Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;)V
.end method

.method public getFastScrollerThumbInactiveColor(I)I
    .locals 0
    .param p1, "defaultInactiveThumbColor"    # I

    .prologue
    .line 228
    return p1
.end method

.method public getFastScrollerTrackColor(I)I
    .locals 0
    .param p1, "defaultTrackColor"    # I

    .prologue
    .line 221
    return p1
.end method

.method public getMaxScrollbarWidth()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->getThumbMaxWidth()I

    move-result v0

    return v0
.end method

.method public onFastScrollCompleted()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onFinishInflate()V

    .line 112
    invoke-virtual {p0, p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 113
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 162
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 126
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 127
    return-void
.end method

.method public abstract onUpdateScrollbar(I)V
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->reattachThumbToScroll()V

    .line 107
    return-void
.end method

.method public abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method protected shouldStopScroll(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget v0, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDy:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mDeltaThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;I)V
    .locals 8
    .param p1, "scrollPosState"    # Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;
    .param p2, "rowCount"    # I

    .prologue
    const/4 v6, -0x1

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result v0

    .line 251
    .local v0, "availableScrollBarHeight":I
    iget v5, p1, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-virtual {p0, p2, v5}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getAvailableScrollHeight(II)I

    move-result v1

    .line 252
    .local v1, "availableScrollHeight":I
    if-gtz v1, :cond_0

    .line 253
    iget-object v5, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v5, v6, v6}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    .line 273
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getPaddingTop()I

    move-result v5

    iget v6, p1, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    iget v7, p1, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p1, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    sub-int v4, v5, v6

    .line 262
    .local v4, "scrollY":I
    iget-object v5, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v4

    int-to-float v7, v1

    div-float/2addr v6, v7

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 267
    .local v3, "scrollBarY":I
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_1

    .line 268
    iget-object v5, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 272
    .local v2, "scrollBarX":I
    :goto_1
    iget-object v5, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v5, v2, v3}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto :goto_0

    .line 270
    .end local v2    # "scrollBarX":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->getThumbWidth()I

    move-result v6

    sub-int v2, v5, v6

    .restart local v2    # "scrollBarX":I
    goto :goto_1
.end method

.method public updateBackgroundPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 181
    return-void
.end method
