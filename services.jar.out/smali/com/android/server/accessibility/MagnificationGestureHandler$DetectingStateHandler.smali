.class final Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DetectingStateHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;
    }
.end annotation


# static fields
.field private static final ACTION_TAP_COUNT:I = 0x3

.field private static final MESSAGE_ON_ACTION_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private mLastTapUpEvent:Landroid/view/MotionEvent;

.field private final mMultiTapDistanceSlop:I

.field private final mMultiTapTimeSlop:I

.field private mTapCount:I

.field private final mTapDistanceSlop:I

.field private final mTapTimeSlop:I

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->onActionTapAndHold(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->sendDelayedMotionEvents()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapTimeSlop:I

    .line 557
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    .line 550
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 551
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 552
    const v2, 0x10e0095

    .line 551
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 550
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    .line 553
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapDistanceSlop:I

    .line 554
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapDistanceSlop:I

    .line 549
    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 698
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v0

    .line 700
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-nez v2, :cond_0

    .line 701
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 697
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 704
    .local v1, "tail":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :goto_1
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 705
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    goto :goto_1

    .line 707
    :cond_1
    invoke-static {v1, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-set0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    goto :goto_0
.end method

.method private clearDelayedMotionEvents()V
    .locals 2

    .prologue
    .line 722
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-eqz v1, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 724
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 725
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    goto :goto_0

    .line 721
    .end local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :cond_0
    return-void
.end method

.method private clearLastDownEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 692
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 689
    :cond_0
    return-void
.end method

.method private clearLastTapUpEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 685
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    .line 682
    :cond_0
    return-void
.end method

.method private clearTapDetectionState()V
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    .line 678
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastTapUpEvent()V

    .line 679
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastDownEvent()V

    .line 676
    return-void
.end method

.method private onActionTap(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "up"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    .line 740
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getPersistedScale()F

    move-result v6

    .line 742
    .local v6, "targetScale":F
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v6, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 743
    .local v1, "scale":F
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 744
    const/4 v5, 0x0

    .line 743
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(FFFZI)Z

    .line 735
    .end local v1    # "scale":F
    .end local v6    # "targetScale":F
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    goto :goto_0
.end method

.method private onActionTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    .line 756
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-set0(Lcom/android/server/accessibility/MagnificationGestureHandler;Z)Z

    .line 758
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getPersistedScale()F

    move-result v6

    .line 759
    .local v6, "targetScale":F
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v6, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 760
    .local v1, "scale":F
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    .line 761
    const/4 v5, 0x0

    .line 760
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(FFFZI)Z

    .line 763
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    .line 750
    return-void
.end method

.method private sendDelayedMotionEvents()V
    .locals 5

    .prologue
    .line 712
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-eqz v1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 714
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 715
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    iget-object v3, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 716
    iget v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mPolicyFlags:I

    .line 715
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 717
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    goto :goto_0

    .line 711
    .end local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :cond_0
    return-void
.end method

.method private transitionToDelegatingStateAndClear()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    .line 731
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->sendDelayedMotionEvents()V

    .line 732
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    .line 729
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearTapDetectionState()V

    .line 673
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearDelayedMotionEvents()V

    .line 669
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 583
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 585
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 582
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 587
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v4

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 588
    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 590
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    .line 591
    return-void

    .line 593
    :cond_1
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_3

    .line 594
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 595
    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapDistanceSlop:I

    .line 594
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    .line 593
    if-eqz v4, :cond_3

    .line 596
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 598
    .local v1, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    .line 599
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v6, v5

    .line 598
    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 605
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastDownEvent()V

    .line 606
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 600
    :cond_3
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    if-ge v4, v10, :cond_2

    .line 601
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 603
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    int-to-long v6, v5

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 610
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 611
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    .line 612
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    goto :goto_0

    .line 614
    :cond_4
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto :goto_0

    .line 619
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    if-ge v4, v8, :cond_0

    .line 620
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-static {v4, p1, v7}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    move-result-wide v2

    .line 622
    .local v2, "distance":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapDistanceSlop:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 629
    .end local v2    # "distance":D
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_5

    .line 630
    return-void

    .line 632
    :cond_5
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 633
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v4

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 633
    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v4

    if-nez v4, :cond_6

    .line 635
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    .line 636
    return-void

    .line 638
    :cond_6
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapTimeSlop:I

    .line 639
    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapDistanceSlop:I

    .line 638
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-nez v4, :cond_7

    .line 640
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    .line 641
    return-void

    .line 643
    :cond_7
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    .line 644
    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapDistanceSlop:I

    .line 643
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 648
    :cond_8
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    .line 652
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    if-ne v4, v10, :cond_a

    .line 653
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    .line 654
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->onActionTap(Landroid/view/MotionEvent;I)V

    .line 655
    return-void

    .line 645
    :cond_9
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    .line 646
    return-void

    .line 657
    :cond_a
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastTapUpEvent()V

    .line 658
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
