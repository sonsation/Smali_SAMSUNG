.class public Lcom/android/launcher3/common/view/ScrollHelperByRootView;
.super Ljava/lang/Object;
.source "ScrollHelperByRootView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;
    }
.end annotation


# static fields
.field private static final LIMIT_TRACE:I = 0x14

.field public static final LISTENER_APPSCONTROLLER:I = 0x1

.field public static final LISTENER_HOMECONTROLLER:I = 0x0

.field private static final LISTENER_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LauncherScroll"

.field private static final X:I = 0x0

.field private static final Y:I = 0x1


# instance fields
.field private mDistanceFromPress:[F

.field private mGradientCount:I

.field private mLastGradient:F

.field private mPressed:Z

.field private mPressedXY:[F

.field private mScrollId:I

.field private mScrollTouchListeners:[Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

.field private mSumOfAccelaration:F

.field private mTouch:[F

.field private mTraceTouchEvent:Ljava/lang/StringBuilder;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v0, v1, [Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollTouchListeners:[Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

    .line 19
    iput v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    .line 20
    iput v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    .line 21
    iput v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    .line 23
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    .line 24
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    .line 25
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    .line 27
    iput-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 28
    iput-boolean v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    .line 30
    iput v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollId:I

    .line 32
    iput-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 47
    return-void
.end method

.method private displayTrace(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 193
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "LauncherScroll"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    return-void
.end method

.method private enableTrace()Z
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getCount()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDistanceFromPress()[F
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    iget-object v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    iget-object v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    return-object v0
.end method

.method private noticeOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollTouchListeners:[Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollTouchListeners:[Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;->onTouchEvent(Landroid/view/MotionEvent;)I

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 40
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    .line 113
    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    .line 115
    return-void
.end method

.method private setMove()V
    .locals 5

    .prologue
    .line 94
    const/16 v0, 0x10

    .line 95
    .local v0, "UNIT_PIXEL":I
    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 97
    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 98
    .local v1, "velocityX":F
    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 99
    .local v2, "velocityY":F
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setMove(FF)V

    .line 101
    .end local v1    # "velocityX":F
    .end local v2    # "velocityY":F
    :cond_0
    return-void
.end method

.method private setMove(FF)V
    .locals 3
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 104
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    move v0, p2

    .line 105
    .local v0, "gradient":F
    :goto_0
    iget v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    iget v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    .line 106
    iget v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    .line 107
    iput v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    .line 108
    return-void

    .line 104
    .end local v0    # "gradient":F
    :cond_0
    div-float v0, p2, p1

    goto :goto_0
.end method

.method private setTouch([FFF)V
    .locals 1
    .param p1, "touch"    # [F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 158
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 160
    :cond_0
    return-void
.end method

.method private traceTouchEvent(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .locals 3
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getCount()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    const/4 p1, 0x0

    .line 186
    :cond_0
    if-eqz p1, :cond_1

    .line 187
    const-string v0, "|"

    .line 188
    .local v0, "END":Ljava/lang/String;
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .end local v0    # "END":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(ILcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;)V
    .locals 1
    .param p1, "controller"    # I
    .param p2, "scrollTouchListener"    # Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

    .prologue
    .line 171
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollTouchListeners:[Lcom/android/launcher3/common/view/ScrollHelperByRootView$ScrollTouchListener;

    aput-object p2, v0, p1

    .line 174
    :cond_0
    return-void
.end method

.method public getAverageAccelaration()F
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 127
    const v2, 0x3fd9999a    # 1.7f

    .line 128
    .local v2, "kI":F
    const v3, 0x3f4ccccd    # 0.8f

    .line 129
    .local v3, "kP":F
    iget v5, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    if-nez v5, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    .line 130
    .local v1, "id":F
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getDistanceFromPress()[F

    move-result-object v0

    .line 131
    .local v0, "diff":[F
    aget v5, v0, v7

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    aget v4, v0, v8

    .line 132
    .local v4, "p":F
    :goto_1
    mul-float v5, v3, v4

    mul-float v6, v2, v1

    add-float/2addr v5, v6

    return v5

    .line 129
    .end local v0    # "diff":[F
    .end local v1    # "id":F
    .end local v4    # "p":F
    :cond_0
    iget v5, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    iget v6, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    int-to-float v6, v6

    div-float v1, v5, v6

    goto :goto_0

    .line 131
    .restart local v0    # "diff":[F
    .restart local v1    # "id":F
    :cond_1
    aget v5, v0, v8

    aget v6, v0, v7

    div-float v4, v5, v6

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    return v0
.end method

.method public getScrollId()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollId:I

    return v0
.end method

.method public getXDistanceFromPress()F
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getDistanceFromPress()[F

    move-result-object v0

    .line 143
    .local v0, "diff":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public getYDistanceFromPress()F
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getDistanceFromPress()[F

    move-result-object v0

    .line 148
    .local v0, "diff":[F
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method requestPress()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->releaseVelocityTracker()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    .line 52
    return-void
.end method

.method setTouchEvent(Landroid/view/MotionEvent;)I
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 57
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 59
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v1, v4, 0x8

    .line 61
    .local v1, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 81
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->releaseVelocityTracker()V

    .line 82
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    .line 83
    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    float-to-int v5, v2

    float-to-int v6, v3

    const-string v7, "R"

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->traceTouchEvent(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 84
    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->displayTrace(Ljava/lang/StringBuilder;)V

    .line 85
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 89
    .local v0, "action":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->noticeOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 90
    return v0

    .line 63
    .end local v0    # "action":I
    :pswitch_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    .line 65
    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    float-to-int v5, v2

    float-to-int v6, v3

    const-string v7, "P"

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->traceTouchEvent(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->reset()V

    .line 67
    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    invoke-direct {p0, v4, v2, v3}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    .line 68
    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    invoke-direct {p0, v4, v2, v3}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    .line 69
    const/4 v0, 0x0

    .line 70
    .restart local v0    # "action":I
    goto :goto_0

    .line 72
    .end local v0    # "action":I
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    if-eqz v4, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->enableTrace()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTraceTouchEvent:Ljava/lang/StringBuilder;

    float-to-int v5, v2

    float-to-int v6, v3

    const-string v7, "M"

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->traceTouchEvent(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 74
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    invoke-direct {p0, v4, v2, v3}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    .line 75
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setMove()V

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mScrollId:I

    .line 78
    :cond_1
    const/4 v0, 0x2

    .line 79
    .restart local v0    # "action":I
    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
