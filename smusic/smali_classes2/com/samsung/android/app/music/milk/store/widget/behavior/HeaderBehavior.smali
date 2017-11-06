.class public Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;
.super Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HeaderBehavior"


# instance fields
.field private mActivePointerId:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;-><init>()V

    .line 30
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mActivePointerId:I

    .line 34
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mTouchSlop:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mActivePointerId:I

    .line 34
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mTouchSlop:I

    .line 47
    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .prologue
    .line 295
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 296
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 298
    :cond_0
    return-void
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderBehavior"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method canDragView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->isPointInChildBounds(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canDragView(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method protected canScroll(I)Z
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 219
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method final fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 9
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "minOffset"    # I
    .param p4, "maxOffset"    # I
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p2, "layout":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    if-nez v0, :cond_1

    .line 241
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v2

    .line 245
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, p3

    move v8, p4

    .line 244
    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;-><init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 252
    const/4 v1, 0x1

    .line 255
    :goto_0
    return v1

    .line 254
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    goto :goto_0
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method protected isPointInChildBounds(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 273
    .local v0, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 274
    .local v1, "y":I
    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v2

    return v2
.end method

.method onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p2, "layout":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 51
    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mTouchSlop:I

    if-gez v6, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mTouchSlop:I

    .line 55
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 58
    .local v0, "action":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    iget-boolean v6, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v6, :cond_1

    .line 110
    :goto_0
    return v5

    .line 62
    :cond_1
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 106
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_3

    .line 107
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 110
    :cond_3
    iget-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mIsBeingDragged:Z

    goto :goto_0

    .line 64
    :pswitch_0
    iput-boolean v8, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->canDragView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mLastMotionY:I

    .line 67
    invoke-virtual {p3, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mActivePointerId:I

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_1

    .line 74
    :pswitch_1
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mActivePointerId:I

    .line 75
    .local v1, "activePointerId":I
    if-eq v1, v7, :cond_2

    .line 79
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 80
    .local v2, "pointerIndex":I
    if-eq v2, v7, :cond_2

    .line 84
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v3, v6

    .line 85
    .local v3, "y":I
    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mLastMotionY:I

    sub-int v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 86
    .local v4, "yDiff":I
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptTouchEvent. move. yDiff - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", touchSlop - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mTouchSlop:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mTouchSlop:I

    if-le v4, v6, :cond_2

    .line 88
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 89
    iput v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mLastMotionY:I

    goto :goto_1

    .line 96
    .end local v1    # "activePointerId":I
    .end local v2    # "pointerIndex":I
    .end local v3    # "y":I
    .end local v4    # "yDiff":I
    :pswitch_2
    iput-boolean v8, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 97
    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mActivePointerId:I

    .line 98
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 99
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 100
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mTouchSlop:I

    .line 118
    :cond_0
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 181
    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 120
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->canDragView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mLastMotionY:I

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mActivePointerId:I

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_0

    .line 125
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 131
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mActivePointerId:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 132
    .local v10, "activePointerIndex":I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_4

    .line 133
    const/4 v0, 0x0

    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {p3, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v11, v0

    .line 137
    .local v11, "y":I
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mLastMotionY:I

    sub-int v3, v0, v11

    .line 139
    .local v3, "dy":I
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mIsBeingDragged:Z

    if-nez v0, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 141
    if-lez v3, :cond_6

    .line 142
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mTouchSlop:I

    sub-int/2addr v3, v0

    .line 148
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    .line 149
    iput v11, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mLastMotionY:I

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent. last motion - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mLastMotionY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_0

    .line 144
    :cond_6
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mTouchSlop:I

    add-int/2addr v3, v0

    goto :goto_2

    .line 158
    .end local v3    # "dy":I
    .end local v10    # "activePointerIndex":I
    .end local v11    # "y":I
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mActivePointerId:I

    .line 162
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v9

    .line 163
    .local v9, "yvel":F
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v0

    neg-int v7, v0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 167
    .end local v9    # "yvel":F
    :cond_7
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mIsBeingDragged:Z

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mActivePointerId:I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected final scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "dy"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 229
    .line 230
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v3, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 229
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method protected setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v1

    .line 192
    .local v1, "curOffset":I
    const/4 v0, 0x0

    .line 194
    .local v0, "consumed":I
    if-eqz p4, :cond_2

    if-lt v1, p4, :cond_2

    if-gt v1, p5, :cond_2

    .line 197
    invoke-static {p3, p4, p5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->constrain(III)I

    move-result p3

    .line 199
    sub-int v2, v1, p3

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->canScroll(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHeaderTopBottomOffset. can\'t scroll. cur - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v2, 0x0

    .line 215
    :goto_0
    return v2

    .line 204
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v2

    if-gt p3, v2, :cond_1

    .line 205
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result p3

    .line 208
    :cond_1
    if-eq v1, p3, :cond_2

    .line 209
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->setTopAndBottomOffset(I)Z

    .line 211
    sub-int v0, v1, p3

    :cond_2
    move v2, v0

    .line 215
    goto :goto_0
.end method
