.class Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$1;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final FLAG_FEATURE_AUTOCLICK:I = 0x8

.field static final FLAG_FEATURE_CONTROL_SCREEN_MAGNIFIER:I = 0x20

.field static final FLAG_FEATURE_ENABLED_ACCESSIBILITY_S_TALKBACK:I = 0x10000000

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_INJECT_MOTION_EVENTS:I = 0x10

.field static final FLAG_FEATURE_MAGNIFIER_WINDOW:I = 0x80

.field static final FLAG_FEATURE_OVERLAY_MAGNIFIER:I = 0x20000000

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field static final FLAG_FEATURE_UNIVERSAL_SWITCH_SCREEN_AS_SWITCH:I = 0x40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTouchDeviceId:I

.field private mEnabledFeatures:I

.field private mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

.field private mFilterKeyEvents:Z

.field private mHoverEventSequenceStarted:Z

.field private mInstalled:Z

.field private mKeyEventSequenceStarted:Z

.field private mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

.field private mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

.field private mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

.field private mMotionEventSequenceStarted:Z

.field private mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

.field private final mPm:Landroid/os/PowerManager;

.field private final mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

.field private mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

.field private mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

.field private mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

.field private mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityInputFilter;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityInputFilter;J)V
    .locals 1
    .param p1, "frameNanos"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 128
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    .line 211
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 213
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 214
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    .line 209
    return-void
.end method

.method private addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 1
    .param p1, "handler"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {p1, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 681
    :goto_0
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 675
    return-void

    .line 679
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_0
.end method

.method private batchMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-nez v1, :cond_0

    .line 489
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 490
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    .line 491
    return-void

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1, p1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    return-void

    .line 496
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v0

    .line 497
    .local v0, "holder":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 498
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 499
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 484
    return-void
.end method

.method private disableFeatures()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 687
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V

    .line 688
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->onDestroy()V

    .line 691
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController;->onDestroy()V

    .line 695
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-eqz v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->onDestroy()V

    .line 699
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    .line 701
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    if-eqz v0, :cond_3

    .line 702
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->onDestroy()V

    .line 703
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    .line 706
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    if-eqz v0, :cond_4

    .line 707
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->onDestroy()V

    .line 708
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v0, :cond_5

    .line 711
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    invoke-virtual {v0}, Lcom/android/server/accessibility/KeyboardInterceptor;->onDestroy()V

    .line 712
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 715
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    if-eqz v0, :cond_6

    .line 716
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/OverlayMagnifier;->clear()V

    .line 717
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/OverlayMagnifier;->onDestroy()V

    .line 718
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    .line 723
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    if-eqz v0, :cond_7

    .line 724
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->clear()V

    .line 725
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->onDestroy()V

    .line 726
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    .line 731
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    if-eqz v0, :cond_8

    .line 732
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->clear()V

    .line 733
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->onDestroy()V

    .line 734
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 738
    :cond_8
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 739
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    .line 684
    return-void
.end method

.method private enableFeatures()V
    .locals 5

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    .line 603
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    .line 604
    new-instance v2, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    .line 605
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 604
    invoke-direct {v2, v3, v4}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    .line 607
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 608
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 610
    new-instance v2, Lcom/android/server/accessibility/KeyboardInterceptor;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 611
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    invoke-interface {v2, v3}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 612
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 614
    :cond_0
    return-void

    .line 618
    :cond_1
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 619
    new-instance v2, Lcom/android/server/accessibility/AutoclickController;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v2, v3, v4}, Lcom/android/server/accessibility/AutoclickController;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 620
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 623
    :cond_2
    const/4 v1, 0x0

    .line 625
    .local v1, "nextEventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 626
    new-instance v2, Lcom/android/server/accessibility/OverlayMagnifier;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v2, v3, v4}, Lcom/android/server/accessibility/OverlayMagnifier;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 627
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/OverlayMagnifier;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 631
    :cond_3
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    .line 632
    sget-object v2, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "FLAG_FEATURE_MAGNIFIER_WINDOW is Enabled!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v2, v3, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 634
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 638
    :cond_4
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 639
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    .line 640
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v2, v3, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    .line 641
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 648
    :cond_5
    :goto_0
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_6

    .line 649
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    .line 650
    :cond_6
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    .line 652
    .local v0, "detectControlGestures":Z
    :goto_1
    new-instance v2, Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 653
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 652
    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 654
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 657
    .end local v0    # "detectControlGestures":Z
    :cond_7
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 658
    new-instance v2, Lcom/android/server/accessibility/MotionEventInjector;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/accessibility/MotionEventInjector;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    .line 659
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 660
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V

    .line 663
    :cond_8
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    .line 664
    new-instance v2, Lcom/android/server/accessibility/KeyboardInterceptor;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 665
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 599
    :cond_9
    return-void

    .line 643
    :cond_a
    new-instance v2, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v2, v3, v4}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    .line 644
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_0

    .line 650
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "detectControlGestures":Z
    goto :goto_1
.end method

.method private getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v1, 0x0

    .line 385
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 386
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 392
    :cond_1
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 393
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_2

    .line 394
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 398
    :cond_3
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_5

    .line 399
    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_4

    .line 401
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 403
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 406
    :cond_5
    return-object v1
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 535
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 536
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 537
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 527
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 429
    return-void
.end method

.method private processBatchedEvents(J)V
    .locals 5
    .param p1, "frameNanos"    # J

    .prologue
    const/4 v4, 0x0

    .line 503
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 504
    .local v0, "current":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    if-nez v0, :cond_0

    .line 505
    return-void

    .line 507
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-eqz v2, :cond_2

    .line 508
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_0

    .line 520
    :cond_1
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    iget v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->policyFlags:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    .line 521
    move-object v1, v0

    .line 522
    .local v1, "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 523
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->recycle()V

    .line 511
    .end local v1    # "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    :cond_2
    if-nez v0, :cond_3

    .line 512
    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 502
    :goto_1
    return-void

    .line 515
    :cond_3
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1

    .line 517
    iput-object v4, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_1
.end method

.method private processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 423
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 422
    return-void
.end method

.method private processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 410
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessScroll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 411
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 412
    return-void

    .line 415
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    return-void

    .line 419
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->batchMotionEvent(Landroid/view/MotionEvent;I)V

    .line 409
    return-void
.end method

.method private scheduleProcessBatchedEvents()V
    .locals 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    .line 481
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    .line 480
    const/4 v2, 0x0

    .line 481
    const/4 v3, 0x0

    .line 480
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 479
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0
    .param p1, "inputSource"    # I

    .prologue
    .line 575
    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 593
    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 563
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/16 v8, 0x4002

    .line 245
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v5, :cond_0

    .line 246
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 247
    return-void

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    move-result-object v4

    .line 251
    .local v4, "state":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    if-nez v4, :cond_1

    .line 252
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 253
    return-void

    .line 256
    :cond_1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 257
    .local v0, "eventSource":I
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, p2

    if-nez v5, :cond_3

    .line 267
    instance-of v5, v4, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    if-nez v5, :cond_2

    .line 268
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 270
    :cond_2
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v5, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 271
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 272
    return-void

    .line 275
    :cond_3
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->updateDeviceId(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 276
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v5, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 279
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->deviceIdValid()Z

    move-result v5

    if-nez v5, :cond_5

    .line 280
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 281
    return-void

    .line 284
    :cond_5
    instance-of v5, p1, Landroid/view/MotionEvent;

    if-eqz v5, :cond_a

    move-object v3, p1

    .line 285
    check-cast v3, Landroid/view/MotionEvent;

    .line 286
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v4, v3, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V

    .line 303
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    :cond_6
    :goto_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    if-eqz v5, :cond_8

    move-object v3, p1

    .line 304
    check-cast v3, Landroid/view/MotionEvent;

    .line 305
    .restart local v3    # "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v3, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 306
    sget-object v5, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Received event 4 "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-nez v5, :cond_7

    .line 308
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_8

    .line 309
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_8

    .line 310
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_8

    .line 311
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 315
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    :cond_8
    sget-object v5, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSamsungMagnifierWindow : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    if-eqz v5, :cond_9

    .line 322
    instance-of v5, p1, Landroid/view/KeyEvent;

    if-eqz v5, :cond_b

    .line 323
    const/16 v5, 0x101

    invoke-virtual {p1, v5}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v5

    .line 322
    if-eqz v5, :cond_b

    .line 324
    sget-object v5, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mSamsungMagnifierWindow Received event 1"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 325
    check-cast v1, Landroid/view/KeyEvent;

    .line 327
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 239
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_9
    :goto_1
    return-void

    .line 287
    :cond_a
    instance-of v5, p1, Landroid/view/KeyEvent;

    if-eqz v5, :cond_6

    move-object v1, p1

    .line 288
    check-cast v1, Landroid/view/KeyEvent;

    .line 289
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v4, v1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 328
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_b
    instance-of v5, p1, Landroid/view/MotionEvent;

    if-eqz v5, :cond_c

    invoke-virtual {p1, v8}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 329
    sget-object v5, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onInputEvent coming to InputDevice.SOURCE_STYLUS ."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v5, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mSamsungMagnifierWindow Received event 2"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    .line 331
    check-cast v2, Landroid/view/MotionEvent;

    .line 333
    .local v2, "mMotionevent":Landroid/view/MotionEvent;
    invoke-direct {p0, v2, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 334
    .end local v2    # "mMotionevent":Landroid/view/MotionEvent;
    :cond_c
    instance-of v5, p1, Landroid/view/MotionEvent;

    if-eqz v5, :cond_d

    .line 335
    const/16 v5, 0x1002

    invoke-virtual {p1, v5}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v5

    .line 334
    if-eqz v5, :cond_d

    .line 336
    invoke-virtual {p1, v8}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 342
    :cond_d
    sget-object v5, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mSamsungMagnifierWindow Received event 4"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_1

    .line 337
    :cond_e
    sget-object v5, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mSamsungMagnifierWindow Received event 3"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    .line 338
    check-cast v3, Landroid/view/MotionEvent;

    .line 339
    .restart local v3    # "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v3, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_1
.end method

.method public onInstalled()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 223
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 224
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 225
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 218
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 559
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 558
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "transformedEvent"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-nez v0, :cond_2

    .line 546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 550
    :cond_0
    return-void

    .line 548
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 554
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 543
    return-void
.end method

.method public onUninstalled()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 234
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 235
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 229
    return-void
.end method

.method resetStreamState()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 742
    :cond_2
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "sink"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 570
    return-void
.end method

.method setUserAndEnabledFeatures(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enabledFeatures"    # I

    .prologue
    .line 580
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    if-ne v0, p1, :cond_0

    .line 581
    return-void

    .line 583
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_1

    .line 584
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 586
    :cond_1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 587
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 588
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_2

    .line 589
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 579
    :cond_2
    return-void
.end method
