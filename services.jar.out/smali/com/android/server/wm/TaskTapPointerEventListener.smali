.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;
    }
.end annotation


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInGestureDetection:Z

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private final mNonResizeableRegion:Landroid/graphics/Region;

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTapOutsideTaskMessageSent:Z

.field private mTmpExcludeRegion:Landroid/graphics/Region;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;

.field private mTwoFingerScrolling:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/TaskTapPointerEventListener;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->onTwoFingerScroll(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/TaskTapPointerEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTapOutsideTaskMessageSent:Z

    .line 68
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 74
    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 72
    return-void
.end method

.method private doGestureDetection(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 272
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 273
    :cond_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 276
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 277
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 278
    .local v4, "y":I
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    .line 279
    .local v2, "isTouchInside":Z
    iget-boolean v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    if-nez v7, :cond_2

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 282
    :cond_2
    if-eqz v2, :cond_5

    .line 283
    if-eq v0, v5, :cond_5

    .line 284
    const/4 v7, 0x6

    if-eq v0, v7, :cond_5

    .line 285
    const/4 v7, 0x3

    if-eq v0, v7, :cond_4

    .line 282
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    .line 286
    iget-boolean v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    if-eqz v5, :cond_6

    .line 287
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 271
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v5, v6

    .line 285
    goto :goto_0

    :cond_5
    move v5, v6

    .line 282
    goto :goto_0

    .line 289
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    .line 290
    .local v1, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->cancel()V

    .line 291
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 292
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto :goto_1
.end method

.method private onTwoFingerScroll(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 298
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    .line 299
    .local v0, "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v1, v2

    .line 300
    .local v1, "y":I
    iget-boolean v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    if-nez v2, :cond_0

    .line 301
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    .line 302
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 303
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v4, 0x2c

    .line 302
    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 297
    :cond_0
    return-void
.end method

.method private stopTwoFingerScroll()V
    .locals 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Landroid/view/GestureDetector;

    .line 82
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;-><init>(Lcom/android/server/wm/TaskTapPointerEventListener;Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 81
    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 85
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 80
    return-void
.end method

.method onConfigurationChanged()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    .line 262
    :cond_0
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/16 v12, 0x3e8

    const/4 v10, 0x1

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->doGestureDetection(Landroid/view/MotionEvent;)V

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 96
    .local v0, "action":I
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_2

    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    if-eqz v9, :cond_2

    .line 97
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v9, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 98
    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 100
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 101
    .local v8, "y":I
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Region;->contains(II)Z

    move-result v9

    if-nez v9, :cond_0

    .line 103
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v10, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v11, 0x1f

    invoke-virtual {v9, v11, v7, v8, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 107
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_1
    return-void

    .line 101
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 112
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_2
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    .line 91
    :cond_3
    :goto_0
    :pswitch_0
    return-void

    .line 114
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 115
    .restart local v7    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 117
    .restart local v8    # "y":I
    monitor-enter p0

    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, "tapOutsideTask":Z
    :try_start_1
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_5

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-eq v9, v11, :cond_4

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 123
    :cond_4
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(II)Lcom/android/server/wm/Task;

    move-result-object v6

    .line 124
    .local v6, "touchTask":Lcom/android/server/wm/Task;
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v10, 0x1

    invoke-virtual {v9, v7, v8, v10}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 125
    .local v5, "task":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    .line 126
    const/4 v4, 0x1

    .line 131
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "touchTask":Lcom/android/server/wm/Task;
    :cond_5
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Region;->contains(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-nez v9, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 133
    :cond_7
    :try_start_2
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_8

    .line 138
    :cond_8
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 139
    iget-object v10, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 138
    const/16 v11, 0x1f

    invoke-virtual {v9, v11, v7, v8, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 117
    :catchall_1
    move-exception v9

    monitor-exit p0

    throw v9

    .line 146
    .end local v4    # "tapOutsideTask":Z
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-eq v9, v11, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto :goto_0

    .line 153
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 154
    .restart local v7    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 155
    .restart local v8    # "y":I
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 157
    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    .line 159
    .local v3, "inputDevice":Landroid/view/InputDevice;
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_a

    .line 160
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(II)Lcom/android/server/wm/Task;

    move-result-object v6

    .line 161
    .restart local v6    # "touchTask":Lcom/android/server/wm/Task;
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v11, 0x1

    invoke-virtual {v9, v7, v8, v11}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 162
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_b

    if-nez v5, :cond_b

    if-eqz v3, :cond_b

    iget v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v9, v12, :cond_b

    .line 163
    const/16 v9, 0x3e8

    invoke-virtual {v3, v9}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 164
    const/16 v9, 0x3e8

    iput v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v6    # "touchTask":Lcom/android/server/wm/Task;
    :cond_9
    :goto_2
    monitor-exit v10

    goto/16 :goto_0

    .line 169
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_a
    :try_start_4
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(II)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 171
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    :cond_b
    if-eqz v5, :cond_c

    if-nez v3, :cond_d

    .line 172
    :cond_c
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 155
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :catchall_2
    move-exception v9

    monitor-exit v10

    throw v9

    .line 175
    .restart local v3    # "inputDevice":Landroid/view/InputDevice;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    :cond_d
    :try_start_5
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 176
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 227
    :cond_e
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    goto :goto_2

    .line 177
    :cond_f
    const/16 v2, 0x3e8

    .line 178
    .local v2, "iconType":I
    const/4 v1, 0x0

    .line 179
    .local v1, "diagonalDelta":I
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_10

    .line 180
    const/16 v1, 0x8

    .line 182
    :cond_10
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v1

    if-ge v7, v9, :cond_14

    .line 184
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v1

    if-ge v8, v9, :cond_12

    const/16 v2, 0x3f9

    .line 195
    :cond_11
    :goto_3
    iget v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v9, v2, :cond_9

    .line 223
    iput v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 224
    invoke-virtual {v3, v2}, Landroid/view/InputDevice;->setPointerType(I)V

    goto :goto_2

    .line 185
    :cond_12
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    if-le v8, v9, :cond_13

    const/16 v2, 0x3f8

    goto :goto_3

    .line 186
    :cond_13
    const/16 v2, 0x3f6

    goto :goto_3

    .line 187
    :cond_14
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v1

    if-le v7, v9, :cond_17

    .line 189
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v1

    if-ge v8, v9, :cond_15

    const/16 v2, 0x3f8

    goto :goto_3

    .line 190
    :cond_15
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    if-le v8, v9, :cond_16

    const/16 v2, 0x3f9

    goto :goto_3

    .line 191
    :cond_16
    const/16 v2, 0x3f6

    goto :goto_3

    .line 192
    :cond_17
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-lt v8, v9, :cond_18

    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-le v8, v9, :cond_11

    .line 193
    :cond_18
    const/16 v2, 0x3f7

    goto :goto_3

    .line 233
    .end local v1    # "diagonalDelta":I
    .end local v2    # "iconType":I
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_4
    iput v10, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    .line 235
    .restart local v3    # "inputDevice":Landroid/view/InputDevice;
    if-eqz v3, :cond_3

    .line 236
    invoke-virtual {v3, v12}, Landroid/view/InputDevice;->setPointerType(I)V

    goto/16 :goto_0

    .line 242
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :pswitch_5
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_19

    .line 255
    :cond_19
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1
    .param p1, "newRegion"    # Landroid/graphics/Region;
    .param p2, "nonResizeableRegion"    # Landroid/graphics/Region;

    .prologue
    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 327
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
