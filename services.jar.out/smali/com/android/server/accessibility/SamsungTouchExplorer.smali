.class Lcom/android/server/accessibility/SamsungTouchExplorer;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;
.implements Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungTouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapSlop:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

.field private final mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mMultiFingerDetected:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

.field private final mTempPoint:Landroid/graphics/Point;

.field private mTouchExplorationInProgress:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;III)V
    .locals 0
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 151
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 157
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    .line 183
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    .line 184
    iput-object p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 185
    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    .line 186
    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    .line 187
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    .line 188
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    .line 189
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    .line 190
    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    .line 191
    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    .line 192
    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    .line 193
    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    .line 195
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    .line 194
    const/16 v3, 0x400

    .line 193
    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    .line 196
    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    .line 198
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    .line 197
    const/high16 v3, 0x200000

    .line 196
    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    .line 199
    new-instance v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-direct {v1, p1, p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 202
    .local v0, "density":F
    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 201
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    .line 182
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 224
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 220
    :cond_0
    return-void
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 230
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 250
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 251
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 252
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 253
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 255
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->clear()V

    .line 256
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->clear()V

    .line 258
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clear()V

    .line 261
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    .line 262
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    .line 263
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    .line 264
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 265
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    .line 266
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 229
    return-void

    .line 233
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_0

    .line 236
    :pswitch_2
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 242
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .locals 6
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1204
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1205
    .local v0, "lastExploreEvent":Landroid/view/MotionEvent;
    if-eqz v0, :cond_3

    .line 1206
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1207
    .local v1, "lastExplorePointerIndex":I
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 1208
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 1217
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->isLastExploreWindowIsSIPType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1219
    return v5

    .line 1222
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1223
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1224
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1225
    return v4

    .line 1227
    :cond_2
    return v5

    .line 1231
    .end local v1    # "lastExplorePointerIndex":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1232
    return v4

    .line 1234
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private computeInjectionAction(II)I
    .locals 4
    .param p1, "actionMasked"    # I
    .param p2, "pointerIndex"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1152
    sparse-switch p1, :sswitch_data_0

    .line 1175
    return p1

    .line 1155
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    .line 1157
    .local v0, "injectedTracker":Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1158
    return v2

    .line 1160
    :cond_0
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 v1, v1, 0x5

    return v1

    .line 1165
    .end local v0    # "injectedTracker":Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    .line 1167
    .restart local v0    # "injectedTracker":Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1168
    return v3

    .line 1170
    :cond_1
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 v1, v1, 0x6

    return v1

    .line 1152
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private endGestureDetection()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 919
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 921
    const/high16 v0, 0x4000000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->resetMultiFingerGestureState()V

    .line 927
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 929
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 931
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 932
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 915
    return-void
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 1244
    packed-switch p0, :pswitch_data_0

    .line 1254
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :pswitch_1
    const-string/jumbo v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    .line 1248
    :pswitch_2
    const-string/jumbo v0, "STATE_DRAGGING"

    return-object v0

    .line 1250
    :pswitch_3
    const-string/jumbo v0, "STATE_DELEGATING"

    return-object v0

    .line 1252
    :pswitch_4
    const-string/jumbo v0, "STATE_GESTURE_DETECTING"

    return-object v0

    .line 1244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 910
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 876
    :goto_0
    return-void

    .line 882
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 883
    invoke-direct {p0, p1, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 890
    :pswitch_1
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    if-ltz v0, :cond_0

    .line 891
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v0, v0

    .line 892
    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v1, v1

    .line 891
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 894
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    .line 895
    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    .line 896
    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    .line 900
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 903
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 904
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 906
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 877
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 770
    const/4 v11, 0x0

    .line 772
    .local v11, "pointerIdBits":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    .line 773
    const-string/jumbo v14, "SamsungTouchExplorer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 774
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 773
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 775
    const-string/jumbo v16, ", Event: "

    .line 773
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    .line 780
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 769
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 778
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v15, 0x1

    shl-int v11, v15, v14

    goto :goto_0

    .line 785
    :pswitch_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 786
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 793
    :pswitch_2
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 794
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    .line 795
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 797
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 800
    :pswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 803
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    packed-switch v14, :pswitch_data_1

    .line 837
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 839
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 842
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 808
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 809
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 810
    .local v8, "firstPtrX":F
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 811
    .local v9, "firstPtrY":F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 812
    .local v12, "secondPtrX":F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    .line 814
    .local v13, "secondPtrY":F
    sub-float v4, v8, v12

    .line 815
    .local v4, "deltaX":F
    sub-float v5, v9, v13

    .line 816
    .local v5, "deltaY":F
    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 818
    .local v6, "distance":D
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v14, v14

    cmpl-double v14, v6, v14

    if-lez v14, :cond_3

    .line 819
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v4, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 823
    :cond_3
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_1

    .line 828
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "distance":D
    .end local v8    # "firstPtrX":F
    .end local v9    # "firstPtrY":F
    .end local v12    # "secondPtrX":F
    .end local v13    # "secondPtrY":F
    :cond_4
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 830
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 833
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_1

    .line 847
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 848
    .local v10, "pointerId":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-ne v10, v14, :cond_0

    .line 849
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    .line 851
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_1

    .line 855
    .end local v10    # "pointerId":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 858
    const/high16 v14, 0x200000

    .line 857
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 859
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 860
    .restart local v10    # "pointerId":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-ne v10, v14, :cond_5

    .line 861
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    .line 863
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 865
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_1

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 803
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    .line 605
    .local v14, "receivedTracker":Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 602
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 607
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    .line 609
    const/high16 v18, 0x100000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 621
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 625
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->firstTapDetected()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 629
    invoke-virtual {v14}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v9

    .line 630
    .local v9, "pointerId":I
    const/16 v18, 0x1

    shl-int v12, v18, v9

    .line 631
    .local v12, "pointerIdBits":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    goto/16 :goto_0

    .line 635
    .end local v9    # "pointerId":I
    .end local v12    # "pointerIdBits":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 643
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    goto/16 :goto_0

    .line 647
    :pswitch_3
    invoke-virtual {v14}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v9

    .line 648
    .restart local v9    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 649
    .local v13, "pointerIndex":I
    const/16 v18, 0x1

    shl-int v12, v18, v9

    .line 650
    .restart local v12    # "pointerIdBits":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    packed-switch v18, :pswitch_data_1

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 737
    :goto_1
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 738
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 654
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 658
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 659
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 660
    const/16 v18, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v12, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    .line 668
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 695
    :cond_5
    :goto_2
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 696
    .local v8, "firstPointerId":I
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 697
    .local v17, "secondPointerId":I
    invoke-virtual {v14, v8}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    sub-float v6, v18, v19

    .line 698
    .local v6, "firstDeltaX":F
    invoke-virtual {v14, v8}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    sub-float v7, v18, v19

    .line 699
    .local v7, "firstDeltaY":F
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    sub-float v15, v18, v19

    .line 700
    .local v15, "secondDeltaX":F
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    sub-float v16, v18, v19

    .line 701
    .local v16, "secondDeltaY":F
    float-to-double v0, v6

    move-wide/from16 v18, v0

    float-to-double v0, v7

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    float-to-double v0, v15

    move-wide/from16 v20, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 702
    .local v10, "moveDelta":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->TOUCH_SLOP:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v10, v18

    if-gez v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    .line 708
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 711
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 712
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    .line 713
    invoke-virtual {v14}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 714
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v12, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    .line 674
    .end local v6    # "firstDeltaX":F
    .end local v7    # "firstDeltaY":F
    .end local v8    # "firstPointerId":I
    .end local v10    # "moveDelta":D
    .end local v15    # "secondDeltaX":F
    .end local v16    # "secondDeltaY":F
    .end local v17    # "secondPointerId":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 680
    invoke-virtual {v14, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v18

    .line 681
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .line 680
    sub-float v4, v18, v19

    .line 682
    .local v4, "deltaX":F
    invoke-virtual {v14, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v18

    .line 683
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 682
    sub-float v5, v18, v19

    .line 684
    .local v5, "deltaY":F
    float-to-double v0, v4

    move-wide/from16 v18, v0

    float-to-double v0, v5

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    .line 685
    .restart local v10    # "moveDelta":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v10, v18

    if-ltz v18, :cond_0

    .line 690
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_2

    .line 718
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .restart local v6    # "firstDeltaX":F
    .restart local v7    # "firstDeltaY":F
    .restart local v8    # "firstPointerId":I
    .restart local v15    # "secondDeltaX":F
    .restart local v16    # "secondDeltaY":F
    .restart local v17    # "secondPointerId":I
    :cond_8
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 719
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 733
    .end local v6    # "firstDeltaX":F
    .end local v7    # "firstDeltaY":F
    .end local v8    # "firstPointerId":I
    .end local v10    # "moveDelta":D
    .end local v15    # "secondDeltaX":F
    .end local v16    # "secondDeltaY":F
    .end local v17    # "secondPointerId":I
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_1

    .line 743
    .end local v9    # "pointerId":I
    .end local v12    # "pointerIdBits":I
    .end local v13    # "pointerIndex":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 744
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 745
    .restart local v9    # "pointerId":I
    const/16 v18, 0x1

    shl-int v12, v18, v9

    .line 747
    .restart local v12    # "pointerIdBits":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    .line 755
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v18

    if-nez v18, :cond_0

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto/16 :goto_0

    .line 752
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_3

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 650
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1186
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    .line 1188
    .local v9, "receivedTracker":Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1189
    .local v4, "firstPtrX":F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1190
    .local v5, "firstPtrY":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1191
    .local v6, "secondPtrX":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1193
    .local v7, "secondPtrY":F
    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v0

    .line 1194
    .local v0, "firstPtrDownX":F
    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v1

    .line 1195
    .local v1, "firstPtrDownY":F
    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v2

    .line 1196
    .local v2, "secondPtrDownX":F
    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    .line 1200
    .local v3, "secondPtrDownY":F
    const v8, 0x3f067b80

    .line 1198
    invoke-static/range {v0 .. v8}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result v8

    return v8
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 1121
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1122
    return-object p1

    .line 1124
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v20

    .line 1125
    .local v20, "remappedIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    .line 1126
    .local v19, "pointerCount":I
    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 1127
    .local v8, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1128
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1129
    aget-object v2, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1130
    aget-object v2, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1131
    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 1132
    aget-object v2, v9, v18

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p2

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1133
    aget-object v2, v9, v18

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p3

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1128
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1136
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 1137
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 1138
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    .line 1139
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    .line 1140
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    .line 1139
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 1136
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    return-object v2
.end method

.method private sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 941
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 942
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 943
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 944
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 945
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 946
    sparse-switch p1, :sswitch_data_0

    .line 940
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    :goto_0
    return-void

    .line 948
    .restart local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    .line 951
    :sswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    .line 946
    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "targetAccessibilityFocus"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1046
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1047
    .local v0, "pointerId":I
    shl-int v1, v3, v0

    .line 1048
    .local v1, "pointerIdBits":I
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 1049
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 1050
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 1051
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 1044
    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 965
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    .line 968
    .local v2, "injectedPointers":Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    .line 969
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 970
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 971
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 973
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 974
    const/4 v6, 0x1

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 975
    const/4 v6, 0x0

    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeInjectionAction(II)I

    move-result v0

    .line 976
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 970
    .end local v0    # "action":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 964
    .end local v4    # "pointerId":I
    :cond_1
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .locals 4
    .param p1, "policyFlags"    # I

    .prologue
    const/16 v3, 0xa

    .line 988
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 989
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 990
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 991
    .local v1, "pointerIdBits":I
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-nez v2, :cond_0

    .line 992
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 994
    :cond_0
    invoke-direct {p0, v0, v3, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 987
    .end local v1    # "pointerIdBits":I
    :cond_1
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 5
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .prologue
    const/4 v4, 0x0

    .line 1064
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1066
    const/4 v0, 0x0

    .line 1067
    .local v0, "event":Landroid/view/MotionEvent;
    const/4 v1, -0x1

    if-ne p3, v1, :cond_3

    .line 1068
    move-object v0, p1

    .line 1072
    .local v0, "event":Landroid/view/MotionEvent;
    :goto_0
    if-nez p2, :cond_4

    .line 1073
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 1084
    :goto_1
    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    if-ltz v1, :cond_0

    .line 1085
    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v1, v1

    .line 1086
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v2, v2

    .line 1085
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1095
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p4, v1

    .line 1096
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_1

    .line 1100
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, v0, v4, p4}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1103
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 1105
    if-eq v0, p1, :cond_2

    .line 1106
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1063
    :cond_2
    return-void

    .line 1070
    .local v0, "event":Landroid/view/MotionEvent;
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "event":Landroid/view/MotionEvent;
    goto :goto_0

    .line 1075
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_1
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .locals 4
    .param p1, "policyFlags"    # I

    .prologue
    .line 1005
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1006
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1007
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 1008
    .local v1, "pointerIdBits":I
    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1009
    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 1004
    .end local v1    # "pointerIdBits":I
    :cond_0
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v7, 0x1

    .line 1021
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    .line 1022
    .local v2, "injectedTracked":Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    .line 1023
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1024
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1025
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1027
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1024
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    :cond_0
    shl-int v6, v7, v4

    or-int/2addr v5, v6

    .line 1031
    invoke-direct {p0, v7, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeInjectionAction(II)I

    move-result v0

    .line 1032
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_1

    .line 1020
    .end local v0    # "action":I
    .end local v4    # "pointerId":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    .prologue
    .line 207
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 206
    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 335
    .local v0, "eventType":I
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    if-ne v0, v3, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 338
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    if-ne v0, v3, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 346
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 351
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 330
    :cond_2
    return-void

    .line 354
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->-get0(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 355
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->-get0(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 356
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->-set0(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 358
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    .line 362
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear()V

    .line 216
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)Z
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 406
    const/4 v4, 0x0

    return v4

    .line 410
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 416
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 420
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v23

    .line 421
    .local v23, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    .line 423
    .local v22, "pointerId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v20, v0

    .line 424
    .local v20, "clickLocation":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v24

    .line 425
    .local v24, "result":I
    if-nez v24, :cond_3

    .line 428
    const/4 v4, 0x1

    return v4

    .line 432
    :cond_3
    const/4 v4, 0x1

    new-array v10, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 433
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v10, v5

    .line 434
    const/4 v4, 0x0

    aget-object v4, v10, v4

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 435
    const/4 v4, 0x1

    new-array v11, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 436
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v11, v5

    .line 437
    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 438
    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    .line 440
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    .line 440
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 441
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    .line 439
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v21

    .line 443
    .local v21, "click_event":Landroid/view/MotionEvent;
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_4

    const/16 v25, 0x1

    .line 444
    .local v25, "targetAccessibilityFocus":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    .line 445
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    .line 446
    const/4 v4, 0x1

    return v4

    .line 443
    .end local v25    # "targetAccessibilityFocus":Z
    :cond_4
    const/16 v25, 0x0

    goto :goto_0
.end method

.method public onDoubleTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 373
    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 374
    return-void

    .line 378
    :cond_0
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 379
    return-void

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 383
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 385
    .local v1, "pointerId":I
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 386
    .local v0, "clickLocation":Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v3

    .line 388
    .local v3, "result":I
    if-nez v3, :cond_2

    .line 389
    return-void

    .line 392
    :cond_2
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    .line 393
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    .line 394
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    .line 396
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 398
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 371
    return-void
.end method

.method public onGestureCancelled(Landroid/view/MotionEvent;I)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    .line 486
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->endGestureDetection()V

    .line 488
    return v4

    .line 489
    :cond_0
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    if-ne v2, v4, :cond_1

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 492
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    .line 493
    .local v0, "pointerId":I
    shl-int v1, v4, v0

    .line 497
    .local v1, "pointerIdBits":I
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 498
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    .line 499
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 500
    const/4 v2, 0x7

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 501
    return v4

    .line 504
    .end local v0    # "pointerId":I
    .end local v1    # "pointerIdBits":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onGestureCompleted(I)Z
    .locals 2
    .param p1, "gestureId"    # I

    .prologue
    .line 473
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 474
    const/4 v0, 0x0

    return v0

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->endGestureDetection()V

    .line 479
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method public onGestureStarted()Z
    .locals 2

    .prologue
    .line 453
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 454
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 455
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 456
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    .line 460
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 463
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 465
    const/high16 v0, 0x2000000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 468
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 323
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 276
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 280
    :cond_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 294
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->onMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    return-void

    .line 299
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 300
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 301
    return-void

    .line 304
    :cond_3
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 318
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 275
    :goto_0
    :pswitch_2
    return-void

    .line 309
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 312
    :pswitch_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onMultiFingerStarted(I)V
    .locals 2
    .param p1, "pointer"    # I

    .prologue
    .line 509
    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    .line 510
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->setTwoFingerEnabled(Z)V

    .line 508
    :cond_0
    return-void
.end method

.method public onMultiFingerStopped(I)V
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    .line 514
    return-void
.end method

.method public onMultiFingerTapDetected(IIZ)V
    .locals 5
    .param p1, "pointer"    # I
    .param p2, "multitap"    # I
    .param p3, "hold"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 518
    const/4 v0, -0x1

    .line 519
    .local v0, "gestureId":I
    if-ne p1, v1, :cond_8

    .line 520
    if-ne p2, v3, :cond_3

    .line 521
    if-eqz p3, :cond_2

    .line 587
    :cond_0
    :goto_0
    const-string/jumbo v1, "SamsungTouchExplorer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MultiFinger TAP GestureId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    if-lez v0, :cond_1

    .line 589
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    .line 517
    :cond_1
    return-void

    .line 523
    :cond_2
    const/16 v0, 0x21

    goto :goto_0

    .line 525
    :cond_3
    if-ne p2, v1, :cond_5

    .line 526
    if-eqz p3, :cond_4

    .line 527
    const/16 v0, 0x25

    goto :goto_0

    .line 529
    :cond_4
    const/16 v0, 0x23

    goto :goto_0

    .line 531
    :cond_5
    if-ne p2, v2, :cond_7

    .line 532
    if-eqz p3, :cond_6

    .line 533
    const/16 v0, 0x2a

    goto :goto_0

    .line 535
    :cond_6
    const/16 v0, 0x27

    goto :goto_0

    .line 537
    :cond_7
    if-ne p2, v4, :cond_0

    .line 538
    if-nez p3, :cond_0

    .line 540
    const/16 v0, 0x2c

    goto :goto_0

    .line 543
    :cond_8
    if-ne p1, v2, :cond_e

    .line 544
    if-ne p2, v3, :cond_9

    .line 545
    if-nez p3, :cond_0

    .line 547
    const/16 v0, 0x22

    goto :goto_0

    .line 549
    :cond_9
    if-ne p2, v1, :cond_b

    .line 550
    if-eqz p3, :cond_a

    .line 551
    const/16 v0, 0x26

    goto :goto_0

    .line 553
    :cond_a
    const/16 v0, 0x24

    goto :goto_0

    .line 555
    :cond_b
    if-ne p2, v2, :cond_d

    .line 556
    if-eqz p3, :cond_c

    .line 557
    const/16 v0, 0x2b

    goto :goto_0

    .line 559
    :cond_c
    const/16 v0, 0x28

    goto :goto_0

    .line 561
    :cond_d
    if-ne p2, v4, :cond_0

    .line 562
    if-nez p3, :cond_0

    .line 564
    const/16 v0, 0x2d

    goto :goto_0

    .line 567
    :cond_e
    if-ne p1, v4, :cond_0

    .line 568
    if-ne p2, v3, :cond_f

    .line 569
    if-nez p3, :cond_0

    .line 571
    const/16 v0, 0x2e

    goto :goto_0

    .line 573
    :cond_f
    if-ne p2, v1, :cond_10

    .line 574
    if-nez p3, :cond_0

    .line 577
    const/16 v0, 0x2f

    goto :goto_0

    .line 579
    :cond_10
    if-ne p2, v2, :cond_0

    .line 580
    if-nez p3, :cond_0

    .line 583
    const/16 v0, 0x30

    goto :goto_0
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1476
    const-string/jumbo v0, "SamsungTouchExplorer"

    return-object v0
.end method
