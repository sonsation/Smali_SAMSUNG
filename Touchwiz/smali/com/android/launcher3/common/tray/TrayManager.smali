.class public Lcom/android/launcher3/common/tray/TrayManager;
.super Ljava/lang/Object;
.source "TrayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;,
        Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;,
        Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    }
.end annotation


# static fields
.field private static final BLUR_INTERVAL:I = 0x2

.field private static final BLUR_VALID_DECIMAL_PLACE:I = 0x2

.field private static final DIRECTION_BOTTOM:I = 0x1

.field private static final DIRECTION_NONE:I = -0x1

.field private static final DIRECTION_TOP:I = 0x0

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final INVALID_POINTER:I = -0x1

.field public static final KEY_SUPPRESS_CHANGE_STAGE_ONCE:Ljava/lang/String; = "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

.field private static final TAG:Ljava/lang/String; = "TrayManager"

.field private static final TOUCH_IGNORE_TIME_FOR_TNOTIFICATION_PANEL:I = 0x12c

.field private static final TRANSITION_BLUR_SLOP_COUNT:I = 0x6

.field private static final UNSET_SUPPRESS_CHANGE_STAGE_DELAY:I = 0x190


# instance fields
.field private mActivePointerId:I

.field private mCurrentChangedOffsetY:F

.field private mDirection:I

.field private mDisallowCallBacksVisibity:Z

.field private mDragManager:Lcom/android/launcher3/common/drag/DragManager;

.field private mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

.field private mFakeViewAnimationTime:I

.field private mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

.field private mFakeViewHeightToShow:I

.field private mFirstDownY:F

.field private mFlingThresholdVelocity:I

.field private mIsRunningSwipeAnimation:Z

.field private mLastDownX:F

.field private mLastDownY:F

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMaximumVelocity:I

.field private mMoveAndAnimated:Z

.field private mMoved:Z

.field private mNeedToShowLightingEffectLater:Z

.field private mOffset:F

.field private mStartOffsetY:F

.field private mSuppressChangeStage:Z

.field private mSwipeDistanceRatio:F

.field private mTouchSlop:I

.field private mTouchStartIndex:I

.field private mTouchUpVelocity:F

.field private mTouching:Z

.field private mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

.field private mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

.field private mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTrayHeight:I

.field private mTraySlipY:I

.field private mTraySlipYForNotificationPanel:I

.field private mUndergroundBgBlur:F

.field private final mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private final mUnsetSuppressChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 88
    new-instance v0, Lcom/android/launcher3/common/tray/TrayManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/TrayManager$1;-><init>(Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 119
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    .line 121
    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    .line 122
    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    .line 123
    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    .line 124
    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    .line 125
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoveAndAnimated:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouching:Z

    .line 128
    iput v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    .line 179
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 180
    new-instance v0, Lcom/android/launcher3/common/tray/TrayManager$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/TrayManager$2;-><init>(Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    .line 216
    new-instance v0, Lcom/android/launcher3/common/tray/FakeViewAnimation;

    invoke-direct {v0}, Lcom/android/launcher3/common/tray/FakeViewAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/tray/TrayManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSuppressChangeStage:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher3/common/tray/TrayManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSuppressChangeStage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/tray/TrayManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mNeedToShowLightingEffectLater:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/common/tray/TrayManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mNeedToShowLightingEffectLater:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/tray/TrayManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;
    .param p1, "x1"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/tray/TrayManager;->changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;
    .param p1, "x1"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->findDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 731
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 734
    return-void
.end method

.method private animateFakeView(Landroid/view/View;IZ)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "toTranslationY"    # I
    .param p3, "toBeShown"    # Z

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/launcher3/common/tray/FakeViewAnimation;->animate(Landroid/view/View;IZI)V

    .line 402
    return-void
.end method

.method private changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V
    .locals 4
    .param p1, "targetLevel"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .param p2, "toDirection"    # I
    .param p3, "dragSourceType"    # I

    .prologue
    .line 802
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    .line 803
    sget-object v2, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    if-ne p1, v2, :cond_0

    .line 804
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/common/tray/TrayManager;->loggingDirection(II)V

    .line 807
    :cond_0
    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/16 v2, 0xa

    invoke-virtual {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->ordinal()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    .line 808
    .local v1, "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 809
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_0

    .line 812
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .end local v1    # "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    :cond_1
    return-void
.end method

.method private determineStageChange(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;IF)Z
    .locals 6
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "velocity"    # I
    .param p3, "offset"    # F

    .prologue
    .line 797
    if-eqz p1, :cond_0

    iget v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iget v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFlingThresholdVelocity:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->determineStageChange(IFFFI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 4
    .param p1, "targetLevel"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .prologue
    .line 830
    const/4 v1, 0x0

    .line 831
    .local v1, "dropTarget":Lcom/android/launcher3/common/drag/DropTarget;
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    .line 832
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 833
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 834
    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v1

    .line 839
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    :cond_1
    return-object v1
.end method

.method private getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;
    .locals 3
    .param p1, "senderLevel"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .param p2, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 717
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 718
    .local v0, "limit":Landroid/graphics/Rect;
    if-lez p2, :cond_0

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-gez p2, :cond_2

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 719
    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 720
    :cond_1
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 721
    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 726
    :goto_0
    return-object v0

    .line 723
    :cond_2
    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 724
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private getScreenDivisionSection(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 927
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getScreenDivision()Lcom/android/launcher3/util/event/ScreenDivision;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 928
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getScreenDivision()Lcom/android/launcher3/util/event/ScreenDivision;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/event/ScreenDivision;->getNumOfSection(FF)I

    move-result v0

    .line 930
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleWallpaperBlur(FLcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V
    .locals 16
    .param p1, "offsetY"    # F
    .param p2, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/common/tray/TrayManager;->mIsRunningSwipeAnimation:Z

    if-nez v2, :cond_2

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v9

    .line 408
    .local v9, "movingRange":I
    if-eqz p2, :cond_0

    const/4 v2, 0x6

    .line 409
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isOverBlurSlop(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v8, 0x1

    .line 410
    .local v8, "isOverBlurSlop":Z
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    .line 411
    int-to-float v2, v9

    div-float v10, p1, v2

    .line 415
    .local v10, "value":F
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 417
    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-lez v2, :cond_5

    const/4 v3, 0x1

    .line 418
    .local v3, "show":Z
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/tray/TrayManager;->mUndergroundBgBlur:F

    mul-float/2addr v2, v10

    const/4 v4, 0x2

    const/4 v6, 0x2

    invoke-static {v2, v4, v6}, Lcom/android/launcher3/Utilities;->simplifyDecimalFraction(FII)F

    move-result v5

    .line 420
    .local v5, "blurAmount":F
    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_1

    float-to-double v6, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/tray/TrayManager;->mUndergroundBgBlur:F

    float-to-double v12, v2

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v12, v14

    cmpl-double v2, v6, v12

    if-gtz v2, :cond_1

    if-eqz v8, :cond_2

    .line 421
    :cond_1
    if-eqz p2, :cond_2

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v3, :cond_6

    const-wide/16 v6, 0x0

    :goto_3
    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->requestBlurChange(ZLandroid/view/Window;FJ)V

    .line 426
    .end local v3    # "show":Z
    .end local v5    # "blurAmount":F
    .end local v8    # "isOverBlurSlop":Z
    .end local v9    # "movingRange":I
    .end local v10    # "value":F
    :cond_2
    return-void

    .line 409
    .restart local v9    # "movingRange":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 413
    .restart local v8    # "isOverBlurSlop":Z
    :cond_4
    move/from16 v0, p1

    neg-float v2, v0

    int-to-float v4, v9

    div-float v10, v2, v4

    .restart local v10    # "value":F
    goto :goto_1

    .line 417
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 422
    .restart local v3    # "show":Z
    .restart local v5    # "blurAmount":F
    :cond_6
    const-wide/16 v6, 0x64

    goto :goto_3
.end method

.method private loggingDirection(II)V
    .locals 10
    .param p1, "direction"    # I
    .param p2, "dragSourceType"    # I

    .prologue
    const/4 v7, 0x1

    .line 862
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 863
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 864
    .local v3, "isMultiSelectMode":Z
    const/4 v6, 0x1

    .line 865
    .local v6, "value":I
    const/4 v5, 0x0

    .line 868
    .local v5, "screenID":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 869
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 870
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v8

    iget-object v1, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 871
    .local v1, "extraDragInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 872
    .local v2, "extraItemsCount":I
    if-lez v2, :cond_4

    move v3, v7

    .line 873
    :goto_0
    add-int/2addr v6, v2

    .line 877
    .end local v1    # "extraDragInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v2    # "extraItemsCount":I
    :cond_0
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v8

    if-nez v8, :cond_1

    if-ne p2, v7, :cond_6

    .line 878
    :cond_1
    if-eqz v3, :cond_5

    const v7, 0x7f0901b4

    .line 879
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 885
    :cond_2
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 895
    const v7, 0x7f090114

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "eventID":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_3

    .line 899
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v7

    int-to-long v8, v6

    invoke-virtual {v7, v5, v0, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 901
    :cond_3
    return-void

    .line 872
    .end local v0    # "eventID":Ljava/lang/String;
    .restart local v1    # "extraDragInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v2    # "extraItemsCount":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 879
    .end local v1    # "extraDragInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v2    # "extraItemsCount":I
    :cond_5
    const v7, 0x7f0901b5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 880
    :cond_6
    const/4 v7, 0x4

    if-ne p2, v7, :cond_2

    .line 881
    if-eqz v3, :cond_7

    const v7, 0x7f0901ad

    .line 882
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    goto :goto_1

    :cond_7
    const v7, 0x7f0901ae

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 887
    :pswitch_0
    const v7, 0x7f090115

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 888
    .restart local v0    # "eventID":Ljava/lang/String;
    goto :goto_2

    .line 891
    .end local v0    # "eventID":Ljava/lang/String;
    :pswitch_1
    const v7, 0x7f090113

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 892
    .restart local v0    # "eventID":Ljava/lang/String;
    goto :goto_2

    .line 885
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onSecondaryPointerUp(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 693
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v5, v9, 0x8

    .line 695
    .local v5, "pointerIndex":I
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 696
    .local v4, "pointerId":I
    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    if-ne v4, v9, :cond_0

    .line 699
    if-nez v5, :cond_1

    const/4 v1, 0x1

    .line 700
    .local v1, "newPointerIndex":I
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 701
    .local v2, "newX":F
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 702
    .local v3, "newY":F
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayScale()F

    move-result v8

    .line 703
    .local v8, "viewScale":F
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    mul-float/2addr v10, v8

    sub-float v6, v9, v10

    .line 704
    .local v6, "rawOffsetX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    mul-float/2addr v10, v8

    sub-float v7, v9, v10

    .line 705
    .local v7, "rawOffsetY":F
    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iget v10, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    sub-float v0, v9, v10

    .line 706
    .local v0, "gap":F
    add-float v9, v2, v6

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    .line 707
    add-float v9, v3, v7

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    .line 708
    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float/2addr v9, v0

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    .line 709
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    .line 710
    iget-object v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 711
    iget-object v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 714
    .end local v0    # "gap":F
    .end local v1    # "newPointerIndex":I
    .end local v2    # "newX":F
    .end local v3    # "newY":F
    .end local v6    # "rawOffsetX":F
    .end local v7    # "rawOffsetY":F
    .end local v8    # "viewScale":F
    :cond_0
    return-void

    .line 699
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 702
    .restart local v1    # "newPointerIndex":I
    .restart local v2    # "newX":F
    .restart local v3    # "newY":F
    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method private prepareTrayMove(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;FI)V
    .locals 7
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "rawOffsetY"    # F
    .param p4, "activePointerIndex"    # I

    .prologue
    .line 660
    :try_start_0
    invoke-virtual {p2, p4}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float v3, v4, p3

    .line 667
    .local v3, "y":F
    invoke-direct {p0}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveStart()V

    .line 669
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->onDestroyActivity()V

    .line 671
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDisallowCallBacksVisibity:Z

    .line 673
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 674
    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float v4, v3, v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 675
    iput v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    .line 677
    if-eqz p1, :cond_0

    .line 678
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v2

    .line 679
    .local v2, "senderLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    sget-object v4, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 680
    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    invoke-direct {p0, v2, v4}, Lcom/android/launcher3/common/tray/TrayManager;->getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 681
    .local v1, "limit":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 682
    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    .line 688
    .end local v1    # "limit":Landroid/graphics/Rect;
    .end local v2    # "senderLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    :cond_0
    :goto_0
    iput v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    .line 689
    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iput v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    .line 690
    .end local v3    # "y":F
    :goto_1
    return-void

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "TrayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activePointerIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 683
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "limit":Landroid/graphics/Rect;
    .restart local v2    # "senderLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .restart local v3    # "y":F
    :cond_1
    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 684
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 741
    :cond_0
    return-void
.end method

.method private setTrayTranslationY(F)V
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 744
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    .line 745
    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    .line 746
    .local v1, "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 747
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_0

    .line 750
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .end local v1    # "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    :cond_0
    return-void
.end method

.method private trayMoveStart()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 753
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouching:Z

    .line 754
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoveAndAnimated:Z

    .line 755
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    .line 756
    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v2, 0x4

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    .line 757
    .local v1, "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 758
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_0

    .line 761
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .end local v1    # "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    :cond_0
    return-void
.end method

.method private trayTouchUp(Z)V
    .locals 4
    .param p1, "changedStage"    # Z

    .prologue
    .line 774
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouching:Z

    .line 775
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    .line 776
    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {v1, v3, v2}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    .line 777
    .local v1, "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 778
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_1

    .line 776
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .end local v1    # "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 781
    :cond_1
    return-void
.end method

.method private willMove(FLcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)Z
    .locals 1
    .param p1, "deltaY"    # F
    .param p2, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .prologue
    .line 792
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 793
    invoke-interface {p2}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isVerticalScroll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isMovingOnBlock()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    if-ne v0, v1, :cond_0

    .line 275
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayBgBlurAmount()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUndergroundBgBlur:F

    .line 278
    :cond_0
    return-void
.end method

.method public calculateDuration(FI)I
    .locals 7
    .param p1, "movingDistance"    # F
    .param p2, "originDuration"    # I

    .prologue
    .line 911
    iget v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchUpVelocity:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 923
    .end local p2    # "originDuration":I
    :goto_0
    return p2

    .line 920
    .restart local p2    # "originDuration":I
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    iget v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchUpVelocity:F

    const v6, 0x44bb8000    # 1500.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 921
    .local v2, "velocityDivisor":F
    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 922
    .local v1, "travelDistance":F
    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v4, 0x44960000    # 1200.0f

    div-float/2addr v4, v2

    mul-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v0, v3

    .line 923
    .local v0, "retDuration":I
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public changeStageWithDrag(Lcom/android/launcher3/common/drag/DragSource;)V
    .locals 5
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;

    .prologue
    .line 815
    sget-object v2, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 816
    .local v2, "toLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 817
    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 818
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 819
    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    if-ne v3, v4, :cond_2

    sget-object v2, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 825
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v1

    .line 826
    .local v1, "dragSourceType":I
    :goto_1
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher3/common/tray/TrayManager;->changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V

    .line 827
    return-void

    .line 819
    .end local v1    # "dragSourceType":I
    .restart local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    :cond_2
    sget-object v2, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    goto :goto_0

    .line 825
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getHeightOfTrayForDrag()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    return v0
.end method

.method public getTrayMovingDistance()F
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    return v0
.end method

.method public getTrayMovingRange()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0
.end method

.method public isMoveAndAnimated()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoveAndAnimated:Z

    return v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    return v0
.end method

.method public isTouching()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouching:Z

    return v0
.end method

.method public onChangeTrayTranslationY(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;FI)V
    .locals 6
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "y"    # F
    .param p3, "trayHeight"    # I

    .prologue
    .line 287
    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    .line 288
    iput p3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    .line 290
    int-to-float v4, p3

    add-float v1, p2, v4

    .line 291
    .local v1, "borderY":F
    int-to-float v4, p3

    sub-float v0, v1, v4

    .line 292
    .local v0, "adjustedOffsetY":F
    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_0

    .line 293
    new-instance v3, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    .line 294
    .local v3, "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    iget-boolean v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDisallowCallBacksVisibity:Z

    iput-boolean v4, v3, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mDisallowVisible:Z

    .line 295
    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 296
    .local v2, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v2, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_0

    .line 299
    .end local v2    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .end local v3    # "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->handleWallpaperBlur(FLcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    .line 300
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    .prologue
    .line 904
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 905
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 907
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/tray/FakeView;->setDescriptionHeight(I)V

    .line 908
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    .line 269
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 456
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 457
    .local v0, "action":I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v9, :cond_0

    .line 512
    :goto_0
    return v8

    .line 460
    :cond_0
    const/4 v3, 0x0

    .line 462
    .local v3, "interceptMotion":Z
    packed-switch v0, :pswitch_data_0

    .line 512
    :cond_1
    :goto_1
    :pswitch_0
    if-nez v3, :cond_2

    iget-boolean v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v9, :cond_3

    :cond_2
    move v7, v8

    :cond_3
    move v8, v7

    goto :goto_0

    .line 464
    :pswitch_1
    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    if-eq v9, v10, :cond_1

    .line 465
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 466
    .local v6, "y":F
    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 467
    .local v2, "deltaY":F
    if-eqz p1, :cond_1

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/common/tray/TrayManager;->willMove(FLcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 468
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->startTrayMove()V

    .line 469
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->onDestroyActivity()V

    .line 470
    const/4 v3, 0x1

    .line 471
    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 472
    .local v1, "activePointerIndex":I
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayScale()F

    move-result v5

    .line 473
    .local v5, "viewScale":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    mul-float/2addr v10, v5

    sub-float v4, v9, v10

    .line 474
    .local v4, "rawOffsetY":F
    invoke-direct {p0, p1, p2, v4, v1}, Lcom/android/launcher3/common/tray/TrayManager;->prepareTrayMove(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;FI)V

    .line 475
    iput-boolean v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    goto :goto_1

    .line 481
    .end local v1    # "activePointerIndex":I
    .end local v2    # "deltaY":F
    .end local v4    # "rawOffsetY":F
    .end local v5    # "viewScale":F
    .end local v6    # "y":F
    :pswitch_2
    new-instance v9, Lcom/android/launcher3/util/DvfsUtil;

    iget-object v10, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v9, v10}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lcom/android/launcher3/util/DvfsUtil;->boostUpForSupportedModel()V

    .line 482
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    .line 483
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    .line 484
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    .line 485
    iput-boolean v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 486
    iput v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 487
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    .line 488
    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-interface {p1, v9, v10}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onSwipeBlockListener(FF)V

    .line 489
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/tray/TrayManager;->getScreenDivisionSection(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchStartIndex:I

    goto :goto_1

    .line 494
    :pswitch_3
    iput-boolean v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 495
    iput v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 496
    iput v10, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    goto/16 :goto_1

    .line 500
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/tray/TrayManager;->onSecondaryPointerUp(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)V

    .line 501
    invoke-direct {p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 516
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v15

    .line 517
    .local v15, "rawEv":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    sub-float v28, v28, v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    sub-float v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 518
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/common/tray/TrayManager;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 519
    invoke-virtual {v15}, Landroid/view/MotionEvent;->recycle()V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 522
    .local v5, "action":I
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayScale()F

    move-result v27

    .line 523
    .local v27, "viewScale":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    mul-float v29, v29, v27

    sub-float v16, v28, v29

    .line 524
    .local v16, "rawOffsetX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    mul-float v29, v29, v27

    sub-float v17, v28, v29

    .line 525
    .local v17, "rawOffsetY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 527
    .local v6, "activePointerIndex":I
    packed-switch v5, :pswitch_data_0

    .line 653
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v28, 0x1

    return v28

    .line 530
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    .line 532
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    .line 533
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 534
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 535
    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    .line 536
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mTouchUpVelocity:F

    goto :goto_0

    .line 540
    :pswitch_2
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v6, v0, :cond_0

    .line 541
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 542
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    add-float v28, v28, v16

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    .line 543
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    add-float v28, v28, v17

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    .line 545
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    move/from16 v29, v0

    mul-float v24, v28, v29

    .line 546
    .local v24, "touchDistance":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    move/from16 v28, v0

    add-float v14, v28, v24

    .line 547
    .local v14, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    move/from16 v28, v0

    if-lez v28, :cond_4

    .line 548
    const/4 v10, 0x0

    .line 549
    .local v10, "ignoredDistance":I
    const/16 v19, 0x0

    .line 550
    .local v19, "skipToAdjustFirstDownY":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;

    move-result-object v11

    .line 551
    .local v11, "limit":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/LauncherAppState;->getNotificationPanelExpansionEnabled()Z

    move-result v28

    if-eqz v28, :cond_1

    sget-object v28, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 552
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    move/from16 v28, v0

    if-lez v28, :cond_1

    .line 554
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNotificationPanelExpansionWithHomeMoving()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 555
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mDisallowCallBacksVisibity:Z

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v30

    sub-long v22, v28, v30

    .line 557
    .local v22, "takenTime":J
    const-wide/16 v28, 0x12c

    cmp-long v28, v22, v28

    if-gez v28, :cond_6

    .line 558
    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 559
    const/16 v19, 0x1

    .line 572
    .end local v22    # "takenTime":J
    :cond_1
    :goto_1
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpg-float v28, v14, v28

    if-gez v28, :cond_2

    .line 573
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v14, v28

    move/from16 v0, v28

    float-to-int v10, v0

    .line 574
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v14, v0

    .line 576
    :cond_2
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v14, v28

    if-lez v28, :cond_3

    .line 577
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v14, v28

    move/from16 v0, v28

    float-to-int v10, v0

    .line 578
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v14, v0

    .line 580
    :cond_3
    if-nez v19, :cond_4

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    move/from16 v28, v0

    int-to-float v0, v10

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    .line 584
    .end local v10    # "ignoredDistance":I
    .end local v11    # "limit":Landroid/graphics/Rect;
    .end local v19    # "skipToAdjustFirstDownY":Z
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isMovingOnBlock()Z

    move-result v28

    if-nez v28, :cond_5

    .line 585
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    .line 587
    :cond_5
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    goto/16 :goto_0

    .line 561
    .restart local v10    # "ignoredDistance":I
    .restart local v11    # "limit":Landroid/graphics/Rect;
    .restart local v19    # "skipToAdjustFirstDownY":Z
    .restart local v22    # "takenTime":J
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipYForNotificationPanel:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 562
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    move/from16 v28, v0

    sub-float v28, v14, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipYForNotificationPanel:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_1

    .line 563
    const-wide/16 v28, 0x12c

    sub-long v12, v22, v28

    .line 564
    .local v12, "maxOffset":J
    long-to-float v0, v12

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto/16 :goto_1

    .line 568
    .end local v12    # "maxOffset":J
    .end local v22    # "takenTime":J
    :cond_7
    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 569
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 594
    .end local v10    # "ignoredDistance":I
    .end local v11    # "limit":Landroid/graphics/Rect;
    .end local v14    # "offset":F
    .end local v19    # "skipToAdjustFirstDownY":Z
    .end local v24    # "touchDistance":F
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isMovingOnBlock()Z

    move-result v28

    if-nez v28, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    move/from16 v28, v0

    if-eqz v28, :cond_19

    .line 595
    const/4 v7, 0x0

    .line 596
    .local v7, "changedStage":Z
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v6, v0, :cond_c

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    const/16 v29, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMaximumVelocity:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v25

    .line 599
    .local v25, "velocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mTouchUpVelocity:F

    .line 601
    .local v26, "velocityY":F
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/LauncherAppState;->getNotificationPanelExpansionEnabled()Z

    move-result v28

    if-eqz v28, :cond_f

    sget-object v28, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 602
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    move/from16 v28, v0

    if-lez v28, :cond_f

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v30

    sub-long v22, v28, v30

    .line 605
    .restart local v22    # "takenTime":J
    const/16 v28, 0x0

    cmpl-float v28, v26, v28

    if-gtz v28, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipYForNotificationPanel:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x2

    div-int/lit8 v29, v29, 0x3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_d

    :cond_8
    const/4 v9, 0x1

    .line 606
    .local v9, "expandNotificationPanel":Z
    :goto_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNotificationPanelExpansionWithHomeMoving()Z

    move-result v28

    if-eqz v28, :cond_9

    const-wide/16 v28, 0x12c

    cmp-long v28, v22, v28

    if-gez v28, :cond_a

    .line 608
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move/from16 v29, v0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_e

    const/16 v28, 0x1

    :goto_3
    or-int v9, v9, v28

    .line 610
    :cond_a
    if-eqz v9, :cond_b

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/Utilities;->expandNotificationsPanel(Landroid/content/Context;)V

    .line 613
    :cond_b
    const-string v28, "TrayManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " : v = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", expand = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .end local v9    # "expandNotificationPanel":Z
    .end local v22    # "takenTime":J
    .end local v25    # "velocityX":F
    .end local v26    # "velocityY":F
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher3/common/tray/TrayManager;->trayTouchUp(Z)V

    .line 636
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 640
    .end local v7    # "changedStage":Z
    :goto_5
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 641
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    .line 642
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_0

    .line 605
    .restart local v7    # "changedStage":Z
    .restart local v22    # "takenTime":J
    .restart local v25    # "velocityX":F
    .restart local v26    # "velocityY":F
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 608
    .restart local v9    # "expandNotificationPanel":Z
    :cond_e
    const/16 v28, 0x0

    goto :goto_3

    .line 616
    .end local v9    # "expandNotificationPanel":Z
    .end local v22    # "takenTime":J
    :cond_f
    const v4, 0x3e4ccccd    # 0.2f

    .line 617
    .local v4, "THRESHOlD_SLOPEXY":F
    const/16 v28, 0x0

    cmpl-float v28, v25, v28

    if-eqz v28, :cond_15

    div-float v21, v26, v25

    .line 618
    .local v21, "slopeVecityXY":F
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->willMove(FLcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 619
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->isScrollLocked()Z

    move-result v28

    if-nez v28, :cond_16

    const/16 v18, 0x1

    .line 620
    .local v18, "scrollDetected":Z
    :goto_7
    const/16 v28, 0x0

    cmpl-float v28, v25, v28

    if-nez v28, :cond_10

    const/16 v28, 0x0

    cmpl-float v28, v26, v28

    if-eqz v28, :cond_11

    :cond_10
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v28

    const v29, 0x3e4ccccd    # 0.2f

    cmpl-float v28, v28, v29

    if-lez v28, :cond_17

    :cond_11
    const/16 v20, 0x1

    .line 622
    .local v20, "slopeOk":Z
    :goto_8
    if-eqz v20, :cond_12

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager;->determineStageChange(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;IF)Z

    move-result v28

    if-nez v28, :cond_13

    :cond_12
    if-eqz v18, :cond_18

    :cond_13
    const/4 v7, 0x1

    .line 625
    :goto_9
    if-eqz v7, :cond_14

    .line 626
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/tray/TrayManager;->getScreenDivisionSection(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)I

    move-result v8

    .line 627
    .local v8, "end":I
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v28

    .line 628
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->ordinal()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchStartIndex:I

    move/from16 v30, v0

    .line 627
    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertGesturePointOnTrayChange(III)V

    .line 630
    .end local v8    # "end":I
    :cond_14
    const-string v28, "TrayManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " : v = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", threshold = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFlingThresholdVelocity:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", scroll = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v18    # "scrollDetected":Z
    .end local v20    # "slopeOk":Z
    .end local v21    # "slopeVecityXY":F
    :cond_15
    move/from16 v21, v26

    .line 617
    goto/16 :goto_6

    .line 619
    .restart local v21    # "slopeVecityXY":F
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 620
    .restart local v18    # "scrollDetected":Z
    :cond_17
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 622
    .restart local v20    # "slopeOk":Z
    :cond_18
    const/4 v7, 0x0

    goto :goto_9

    .line 638
    .end local v4    # "THRESHOlD_SLOPEXY":F
    .end local v7    # "changedStage":Z
    .end local v18    # "scrollDetected":Z
    .end local v20    # "slopeOk":Z
    .end local v21    # "slopeVecityXY":F
    .end local v25    # "velocityX":F
    .end local v26    # "velocityY":F
    :cond_19
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->trayTouchUp(Z)V

    goto/16 :goto_5

    .line 646
    :pswitch_4
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/tray/TrayManager;->onSecondaryPointerUp(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)V

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public pullTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V
    .locals 10
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "trayHeight"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 317
    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    .line 318
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v4

    .line 320
    .local v4, "senderLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    move v3, v6

    .line 326
    .local v3, "isLandscape":Z
    :goto_0
    sget-object v8, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v8, v4}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 327
    sget-object v5, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 328
    .local v5, "toLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    const-string v2, ""

    .line 329
    .local v2, "descTop":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0901a2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "descBottom":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/common/tray/FakeView;->setTrayLevel(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V

    .line 337
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8, v2}, Lcom/android/launcher3/common/tray/FakeView;->setDescription(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0, v8, v7, v6}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    .line 340
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v3, :cond_1

    .line 341
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/common/tray/FakeView;->setTrayLevel(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V

    .line 342
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDescription(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8}, Lcom/android/launcher3/common/tray/FakeView;->getHeight()I

    move-result v0

    .line 344
    .local v0, "bottomViewHeight":I
    if-nez v0, :cond_0

    .line 345
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v8, v7, v7}, Lcom/android/launcher3/common/tray/FakeView;->measure(II)V

    .line 346
    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/tray/FakeView;->getMeasuredHeight()I

    move-result v0

    .line 348
    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    sub-int v8, p2, v0

    invoke-direct {p0, v7, v8, v6}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    .line 351
    .end local v0    # "bottomViewHeight":I
    :cond_1
    iget-boolean v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSuppressChangeStage:Z

    if-eqz v7, :cond_5

    .line 352
    iput-boolean v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mNeedToShowLightingEffectLater:Z

    .line 361
    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v6, :cond_2

    .line 362
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 363
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 364
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v3, :cond_2

    .line 365
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 366
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 369
    :cond_2
    return-void

    .end local v1    # "descBottom":Ljava/lang/String;
    .end local v2    # "descTop":Ljava/lang/String;
    .end local v3    # "isLandscape":Z
    .end local v5    # "toLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    :cond_3
    move v3, v7

    .line 320
    goto/16 :goto_0

    .line 331
    .restart local v3    # "isLandscape":Z
    :cond_4
    sget-object v5, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 332
    .restart local v5    # "toLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    iget-object v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090062

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    .restart local v2    # "descTop":Ljava/lang/String;
    const-string v1, ""

    .restart local v1    # "descBottom":Ljava/lang/String;
    goto :goto_1

    .line 354
    :cond_5
    if-eqz v3, :cond_6

    .line 355
    sget-object v7, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-virtual {v7, v6, v8, v6}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    goto :goto_2

    .line 357
    :cond_6
    sget-object v7, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget v8, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    goto :goto_2
.end method

.method public releaseTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V
    .locals 4
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "trayHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 372
    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    .line 374
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 375
    iput-boolean v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSuppressChangeStage:Z

    .line 376
    iput-boolean v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mNeedToShowLightingEffectLater:Z

    .line 378
    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    .line 379
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0, v0, v3, v3}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    .line 380
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/FakeView;->getHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1, v3}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    .line 382
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 386
    :cond_0
    return-void
.end method

.method public removeTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    return-void
.end method

.method public resetMoving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 443
    iget-boolean v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v1, :cond_1

    .line 444
    invoke-direct {p0, v3}, Lcom/android/launcher3/common/tray/TrayManager;->trayTouchUp(Z)V

    .line 445
    iput-boolean v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 446
    iput v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    goto :goto_0

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 451
    .local v0, "limit":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    goto :goto_0
.end method

.method public setBottomViewDragEnable()V
    .locals 3

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 852
    .local v0, "isLandscape":Z
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v1, :cond_0

    .line 853
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 854
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    .line 859
    :cond_0
    :goto_1
    return-void

    .line 849
    .end local v0    # "isLandscape":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 856
    .restart local v0    # "isLandscape":Z
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    goto :goto_1
.end method

.method public setDisallowCallBacksVisibity(Z)V
    .locals 1
    .param p1, "disallow"    # Z

    .prologue
    .line 843
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNotificationPanelExpansionWithHomeMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDisallowCallBacksVisibity:Z

    .line 846
    :cond_0
    return-void
.end method

.method public setSuppressChangeStageOnce()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 303
    const-string v0, "TrayManager"

    const-string v1, "setSuppressChangeStageOnce"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 308
    iput-boolean v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSuppressChangeStage:Z

    .line 309
    iput-boolean v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mNeedToShowLightingEffectLater:Z

    .line 311
    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

    .line 314
    return-void
.end method

.method public setSwipeAnimationStatus(ZFJ)V
    .locals 3
    .param p1, "isStart"    # Z
    .param p2, "toTranslation"    # F
    .param p3, "animDuration"    # J

    .prologue
    const/4 v1, 0x0

    .line 429
    if-eqz p1, :cond_1

    .line 430
    cmpl-float v2, p2, v1

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 431
    .local v0, "blur":Z
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportBackgroundBlurByWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mUndergroundBgBlur:F

    :cond_0
    invoke-static {v0, v2, v1, p3, p4}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    .line 435
    .end local v0    # "blur":Z
    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mIsRunningSwipeAnimation:Z

    .line 436
    return-void

    .line 430
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/tray/TrayManager;->setup(Landroid/app/Activity;Lcom/android/launcher3/common/drag/DragManager;)V

    .line 221
    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    const/4 v8, 0x1

    .line 224
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .local v1, "configuration":Landroid/view/ViewConfiguration;
    move-object v6, p1

    .line 225
    check-cast v6, Lcom/android/launcher3/Launcher;

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 226
    iput-object p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    .line 228
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 229
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v4

    .line 231
    .local v4, "screenHeight":I
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMaximumVelocity:I

    .line 232
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchSlop:I

    .line 233
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 234
    .local v2, "density":F
    const/high16 v6, 0x43fa0000    # 500.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFlingThresholdVelocity:I

    .line 236
    const v6, 0x7f1100b7

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    .line 237
    .local v5, "topStub":Landroid/view/ViewStub;
    const v6, 0x7f1100b9

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 239
    .local v0, "bottomStub":Landroid/view/ViewStub;
    const v6, 0x7f040057

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 240
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/tray/FakeView;

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    .line 241
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/tray/FakeView;->setDirection(I)V

    .line 242
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    .line 244
    const v6, 0x7f040056

    invoke-virtual {v0, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 245
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/tray/FakeView;

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    .line 246
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/common/tray/FakeView;->setDirection(I)V

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher3/common/tray/TrayManager;->setBottomViewDragEnable()V

    .line 249
    const v6, 0x7f0a019d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    .line 250
    const v6, 0x7f0b0037

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    .line 252
    iput v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    .line 253
    const v6, 0x7f0a01a4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    .line 254
    const v6, 0x7f10000c

    invoke-virtual {v3, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    .line 256
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNotificationPanelExpansionWithHomeMoving()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    div-int/lit8 v6, v6, 0x3

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipYForNotificationPanel:I

    .line 259
    :cond_0
    return-void
.end method

.method public trayMoveEnd(I)V
    .locals 4
    .param p1, "stageMode"    # I

    .prologue
    .line 764
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoveAndAnimated:Z

    .line 765
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    .line 766
    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v2, 0x5

    int-to-float v3, p1

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    .line 767
    .local v1, "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 768
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_0

    .line 771
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .end local v1    # "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    :cond_0
    return-void
.end method
