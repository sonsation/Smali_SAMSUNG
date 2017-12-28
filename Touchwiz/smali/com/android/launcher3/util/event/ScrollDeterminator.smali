.class public Lcom/android/launcher3/util/event/ScrollDeterminator;
.super Ljava/lang/Object;
.source "ScrollDeterminator.java"

# interfaces
.implements Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;,
        Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;
    }
.end annotation


# static fields
.field private static final BOUNDARY:F = 1.0f

.field private static final DIRECTION_HORIZONTAL:I = 0x1

.field private static final DIRECTION_MOVE_ON_BLOCK:I = -0x2

.field private static final DIRECTION_UNINSPEDTED:I = -0x1

.field private static final DIRECTION_VERTICAL:I = 0x0

.field private static final LOCKED_COUNT:I = 0xa


# instance fields
.field private mAverageAcceleration:F

.field private mBlockArea:Landroid/graphics/Rect;

.field private mEnableHScroll:Z

.field private mIsBlocked:Z

.field private mIsTalkBackEnabled:Z

.field private mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

.field private mSlopCompensation:Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;

.field private mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mAverageAcceleration:F

    .line 41
    iput-boolean v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    .line 42
    iput-boolean v3, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mEnableHScroll:Z

    .line 43
    iput-boolean v3, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsTalkBackEnabled:Z

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    invoke-direct {v0, v2}, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;-><init>(Lcom/android/launcher3/util/event/ScrollDeterminator$1;)V

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    .line 47
    iput-object v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    .line 49
    new-instance v0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;

    invoke-direct {v0, v2}, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;-><init>(Lcom/android/launcher3/util/event/ScrollDeterminator$1;)V

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mSlopCompensation:Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;

    .line 52
    sget-object v0, Lcom/android/launcher3/common/view/LauncherRootView;->sScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    .line 53
    return-void
.end method

.method private getAverageAccelaration()F
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    iget v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mAverageAcceleration:F

    .line 103
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getAverageAccelaration()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mAverageAcceleration:F

    goto :goto_0
.end method

.method private isBlockedArea(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private setBlockArea(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 145
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 146
    .local v1, "location":[I
    const/4 v0, 0x1

    .line 147
    .local v0, "Y":I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 148
    iget-object v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 149
    iget-object v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 150
    iget-object v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getAvailableWidthPx()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 151
    iget-object v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 152
    return-void
.end method

.method private setScrollableId()V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsTalkBackEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getScrollId()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLongPressOnHScroll()Z
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mEnableHScroll:Z

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getXDistanceFromPress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    .line 170
    invoke-virtual {v1}, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;->getSystemTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCountTouchMove()I
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeltaXwithCompensation(I)I
    .locals 1
    .param p1, "delta"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mSlopCompensation:Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->getDeltaXwithCompensation(I)I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getAverageAccelaration()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 110
    .local v0, "absAccelaration":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 111
    iget-boolean v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x2

    goto :goto_0

    .line 112
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/android/launcher3/common/view/LauncherRootView;->sScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    return-object v0
.end method

.method public isHorizontalScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovingOnBlock()Z
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getDirection()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScroll()Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScrollWithSlop()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;->getSystemTouchSlop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isVerticalScrollWithThreshold(I)Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollWithThreshold(I)Z
    .locals 3
    .param p1, "threshold"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getYDistanceFromPress()F

    move-result v0

    .line 92
    .local v0, "distanceY":F
    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 220
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 221
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 230
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    :goto_0
    return v2

    .line 223
    :pswitch_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mEnableHScroll:Z

    .line 224
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isBlockedArea(FF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    .line 225
    const/4 v2, 0x0

    goto :goto_0

    .line 227
    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setScrollableId()V

    .line 228
    const/4 v2, 0x2

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registrateController(I)V
    .locals 1
    .param p1, "controller"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->addListener(ILcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;)V

    .line 64
    return-void
.end method

.method public setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z
    .locals 2
    .param p1, "pagedView"    # Lcom/android/launcher3/common/base/view/PagedView;
    .param p2, "inputX"    # F
    .param p3, "inputY"    # F

    .prologue
    const/4 v1, 0x0

    .line 133
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setBlockArea(Landroid/view/View;)V

    .line 135
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isBlockedArea(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    .line 141
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mBlockArea:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public setForceBlock()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsBlocked:Z

    .line 76
    return-void
.end method

.method setScrollableView(Lcom/android/launcher3/common/base/view/PagedView;)Z
    .locals 2
    .param p1, "pagedView"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mEnableHScroll:Z

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mEnableHScroll:Z

    return v0
.end method

.method public setScrollableView(Z)Z
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 123
    return p1
.end method

.method public setSlopCompensation()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mSlopCompensation:Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;

    invoke-virtual {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getScrollHelper()Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getXDistanceFromPress()F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    .line 179
    return-void
.end method

.method public setSystemTouchSlop(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    .line 160
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 161
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    if-eqz v0, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;->setSystemTouchSlop(I)V

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mTouchSlopHelper:Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;->getSystemTouchSlop()I

    move-result v1

    goto :goto_0
.end method

.method public setTalkBackEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator;->mIsTalkBackEnabled:Z

    return v0
.end method
