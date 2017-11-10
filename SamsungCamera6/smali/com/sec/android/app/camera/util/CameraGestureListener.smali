.class public Lcom/sec/android/app/camera/util/CameraGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;,
        Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;
    }
.end annotation


# static fields
.field public static final SCROLL_THRESHOLD_DISTANCE:F

.field public static final SWIPE_DIRECTION_DOWN:I = 0x3

.field public static final SWIPE_DIRECTION_LEFT:I = 0x1

.field public static final SWIPE_DIRECTION_RIGHT:I = 0x0

.field public static final SWIPE_DIRECTION_UNKNOWN:I = -0x1

.field public static final SWIPE_DIRECTION_UP:I = 0x2

.field public static final SWIPE_IGNORE_AREA_LANDSCAPE:F

.field public static final SWIPE_IGNORE_AREA_PORTRAIT:F

.field public static final SWIPE_THRESHOLD_DISTANCE:F

.field public static final SWIPE_THRESHOLD_VELOCITY:F

.field public static final SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F


# instance fields
.field private SCROLL_LIMITATION_TIME:I

.field private mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

.field private mFlingListenerLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDirection:I

.field private mScrollEventTime:J

.field private mSwipeEventEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0b0362

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    const v0, 0x7f0b0359

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    const v0, 0x7f0b0205

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY:F

    const v0, 0x7f0b0206

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

    const v0, 0x7f0b0361

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_PORTRAIT:F

    const v0, 0x7f0b0360

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_LANDSCAPE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mLastDirection:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_LIMITATION_TIME:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public disableSwipeEvent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    return-void
.end method

.method public getLastDirection()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mLastDirection:I

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;->onDoubleTap(FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, 0x1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_LANDSCAPE:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_3

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_LANDSCAPE:F

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    :cond_1
    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_PORTRAIT:F

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_PORTRAIT:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_LIMITATION_TIME:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    iget-boolean v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    if-nez v7, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_5

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-eq v7, v8, :cond_6

    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float v0, v7, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float v1, v7, v8

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isFixedOrientation()Z

    move-result v3

    const/4 v2, -0x1

    rem-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_7

    if-nez v3, :cond_f

    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    const/4 v4, 0x0

    goto :goto_0

    :cond_8
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_a

    const/4 v2, 0x0

    :cond_9
    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mLastDirection:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_17

    iget-object v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;

    invoke-interface {v7, v2, v6}, Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;->onFlingDirection(II)Z

    move-result v7

    or-int/2addr v4, v7

    goto :goto_2

    :cond_a
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_9

    const/4 v2, 0x1

    goto :goto_1

    :cond_b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_d

    const/4 v2, 0x3

    goto :goto_1

    :cond_d
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_9

    const/4 v2, 0x2

    goto :goto_1

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_12

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_10

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_10
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_11

    const/4 v2, 0x3

    goto/16 :goto_1

    :cond_11
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_9

    const/4 v2, 0x2

    goto/16 :goto_1

    :cond_12
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_15

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_13

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_13
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_14

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_14
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_9

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_16
    if-eqz v4, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    goto/16 :goto_0

    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 12

    iget-boolean v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    if-nez v7, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_5

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-eq v7, v8, :cond_8

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    const/4 v4, 0x0

    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float v0, v7, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float v1, v7, v8

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isFixedOrientation()Z

    move-result v3

    const/4 v2, -0x1

    rem-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_9

    if-nez v3, :cond_11

    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    const/4 v4, 0x0

    goto :goto_0

    :cond_a
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_c

    const/4 v2, 0x0

    :cond_b
    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mLastDirection:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_19

    iget-object v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;

    invoke-interface {v7, v2, v6}, Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;->onScrollDirection(II)Z

    move-result v7

    or-int/2addr v4, v7

    goto :goto_2

    :cond_c
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_b

    const/4 v2, 0x1

    goto :goto_1

    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_10

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_e

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_e
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_f

    const/4 v2, 0x3

    goto :goto_1

    :cond_f
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_14

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_12

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_12
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_13

    const/4 v2, 0x3

    goto :goto_1

    :cond_13
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    :cond_14
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_17

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_15

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_15
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_16

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_16
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_b

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_18
    if-eqz v4, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    goto/16 :goto_0

    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDoubleTapEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

    return-void
.end method

.method public unregisterFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
