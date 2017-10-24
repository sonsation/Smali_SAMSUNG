.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$1;,
        Landroid/view/ViewRootImpl$2;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$HCTRelayoutHandler;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$MotionEventMonitor;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_KEEP_SCREEN_ON:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_ATTACHED_DISPLAY_CHANGED:I = 0x3e8

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_COVER_STATE:I = 0x1d

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_HIGHTEXT_CONTRAST_CHANGED:I = 0x1c

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_REQUEST_KEYBOARD_SHORTCUTS:I = 0x1a

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_UPDATE_POINTER_ICON:I = 0x1b

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field public static final PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX:Ljava/lang/String; = "ro.emu.win_outset_bottom_px"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final USE_MT_RENDERER:Z = true

.field private static final bDTSEnabled:Z = true

.field static final bFactoryBinary:Z

.field private static final bODTCEnabled:Z = true

.field private static final sAODEnabled:Z

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsHighContrastTextEnabled:Z

.field static sRendererDemoted:Z

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/HandlerActionQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sSTSOption:D


# instance fields
.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityRelaunched:Z

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field private mCanvasOffsetX:I

.field private mCanvasOffsetY:I

.field mCapturingView:Landroid/view/View;

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field final mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field private mCurrentDirectPenInputView:Landroid/view/View;

.field mCurrentDragView:Landroid/view/View;

.field private mCustomPointerIcon:Landroid/view/PointerIcon;

.field private final mDensity:I

.field private mDesktopMode:Z

.field private mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field private mDragResizing:Z

.field mDrawingAllowed:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mForceDecorViewVisibility:Z

.field private mForceDraw:Z

.field mForceNextWindowRelayout:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field final mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

.field mHadWindowFocus:Z

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private mInLayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field private mInvalidateRootRequested:Z

.field mIsAmbientMode:Z

.field mIsAnimating:Z

.field mIsCreating:Z

.field private mIsDexCompatMode:Z

.field mIsDrawing:Z

.field mIsInTraversal:Z

.field mIsThisWindowDontNeedSurfaceBuffer:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastOverscanRequested:Z

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTouchSource:I

.field mLastWasImTarget:Z

.field private mLastWindowInsets:Landroid/view/WindowInsets;

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mLostWindowFocus:Z

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

.field private mNeedsHwRendererSetup:Z

.field mNewSurfaceNeeded:Z

.field private final mNoncompatDensity:I

.field mOrigWindowType:I

.field mPausedForTransition:Z

.field mPendingAlwaysConsumeNavBar:Z

.field final mPendingBackDropFrame:Landroid/graphics/Rect;

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field final mPendingOutsets:Landroid/graphics/Rect;

.field final mPendingOverscanInsets:Landroid/graphics/Rect;

.field final mPendingStableInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field private mPointerIconType:I

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field private final mRequestLayoutTask:Ljava/lang/Runnable;

.field private mResizeMode:I

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

.field mSoftInputMode:I

.field mStopped:Z

.field final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mTag:Ljava/lang/String;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field mTranslatedPoint:Landroid/graphics/PointF;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field mTraversalScheduled:Z

.field mUnbufferedInputDispatch:Z

.field public mUseFloatingToolBox:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field final mWindowCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWindowCallbacks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

.field final mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/view/ViewRootImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    return v0
.end method

.method static synthetic -get2(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method static synthetic -get3(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic -get4(Landroid/view/ViewRootImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic -get5(Landroid/view/ViewRootImpl;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mResizeMode:I

    return v0
.end method

.method static synthetic -get6(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Landroid/view/ViewRootImpl;->sAODEnabled:Z

    return v0
.end method

.method static synthetic -set0(Landroid/view/ViewRootImpl;I)I
    .locals 0

    iput p1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    return p1
.end method

.method static synthetic -set1(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->resetPointerIcon(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap15(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->sendUserActionEvent()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/view/ViewRootImpl;Z)Z
    .locals 1
    .param p1, "inTouchMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/view/ViewRootImpl;)Z
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->processDirectPenInputKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->dispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p1, "fromHandler"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->doRelayoutForHCT(Z)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    .line 209
    const-string/jumbo v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/view/ViewRootImpl;->sAODEnabled:Z

    .line 234
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 237
    sput-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 283
    sput-boolean v1, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    .line 376
    const-wide/16 v2, 0x0

    sput-wide v2, Landroid/view/ViewRootImpl;->sSTSOption:D

    .line 487
    sput-boolean v1, Landroid/view/ViewRootImpl;->sIsHighContrastTextEnabled:Z

    .line 507
    const-string/jumbo v0, "ro.factory.factory_binary"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "factory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->bFactoryBinary:Z

    .line 184
    return-void

    :cond_0
    move v0, v1

    .line 209
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 253
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 255
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 265
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 290
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 295
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    .line 296
    iput v5, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 310
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 314
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    .line 317
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 319
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 380
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    .line 400
    const-string/jumbo v0, "pq"

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 406
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 407
    iput v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 411
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 419
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 420
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 421
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 422
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 423
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    .line 424
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    .line 427
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    .line 426
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 429
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 434
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 435
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 452
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 453
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 464
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mUseFloatingToolBox:Z

    .line 468
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 469
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 472
    iput v6, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    .line 473
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 497
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 499
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 521
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    .line 525
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mIsDexCompatMode:Z

    .line 528
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 530
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 532
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    .line 534
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mMotionEvent:Landroid/view/MotionEvent;

    .line 540
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v4}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    .line 539
    :goto_0
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 550
    const-string/jumbo v0, "ViewRootImpl"

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 667
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1225
    new-instance v0, Landroid/view/ViewRootImpl$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1289
    new-instance v0, Landroid/view/ViewRootImpl$2;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRequestLayoutTask:Ljava/lang/Runnable;

    .line 4237
    new-instance v0, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 7094
    new-instance v0, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 7141
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    .line 7140
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 7151
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    .line 7150
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    .line 7237
    new-instance v0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    .line 7236
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 553
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 554
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 555
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 556
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 558
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 560
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 562
    new-instance v0, Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HCTRelayoutHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    .line 564
    new-instance v0, Landroid/view/WindowLeaked;

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 565
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 566
    iput v5, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 567
    iput v5, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 568
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 569
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 570
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 571
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 572
    new-instance v0, Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 573
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 574
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 575
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 576
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 577
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 578
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 579
    new-instance v0, Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object v3, p2

    move-object v4, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 580
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 582
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    .line 581
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 583
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 584
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 583
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 585
    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 586
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 587
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 586
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    .line 588
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 589
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 590
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    .line 591
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 592
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 593
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->getRootContext(Landroid/content/Context;)V

    .line 594
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 595
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 598
    new-instance v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;-><init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    .line 622
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 623
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_0

    .line 624
    const-string/jumbo v0, "com.sec.feature.spen_usp"

    const/4 v1, 0x3

    invoke-virtual {v7, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Landroid/view/ViewRootImpl$MotionEventMonitor;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$MotionEventMonitor;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    .line 552
    :cond_0
    return-void

    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move-object v0, v1

    .line 541
    goto/16 :goto_0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p0, "callback"    # Landroid/content/ComponentCallbacks;

    .prologue
    .line 639
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 640
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 638
    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 631
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 632
    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v0, :cond_0

    .line 633
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 630
    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private adjustInputEventForCompatibility(Landroid/view/InputEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/InputEvent;

    .prologue
    .line 7021
    iget v4, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_0

    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 7022
    check-cast v3, Landroid/view/MotionEvent;

    .line 7024
    .local v3, "motion":Landroid/view/MotionEvent;
    const/16 v2, 0x60

    .line 7025
    .local v2, "mask":I
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 7026
    .local v0, "buttonState":I
    and-int/lit8 v4, v0, 0x60

    shr-int/lit8 v1, v4, 0x4

    .line 7027
    .local v1, "compatButtonState":I
    if-eqz v1, :cond_0

    .line 7028
    or-int v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 7020
    .end local v0    # "buttonState":I
    .end local v1    # "compatButtonState":I
    .end local v2    # "mask":I
    .end local v3    # "motion":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1528
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    .line 1529
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1524
    :goto_0
    return-void

    .line 1531
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    .line 1532
    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    .line 1531
    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 6176
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v1, :cond_0

    .line 6177
    return v2

    .line 6181
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 6182
    .local v0, "action":I
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 6183
    return v2

    .line 6187
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6188
    return v2

    .line 6196
    :cond_2
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6197
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    return v1

    .line 6203
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6204
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 6205
    return v2

    .line 6208
    :cond_4
    return v2
.end method

.method private checkPalmRejection(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4362
    const/4 v1, 0x0

    .line 4363
    .local v1, "SsumMajor":I
    const/4 v2, 0x0

    .line 4365
    .local v2, "bPalm":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 4366
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 4367
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 4368
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v4

    float-to-int v1, v4

    .line 4366
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4372
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v4

    const/high16 v5, -0x40000000    # -2.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    return v6

    .line 4374
    :cond_3
    const/16 v4, 0x64

    if-ge v1, v4, :cond_4

    if-eqz v2, :cond_5

    .line 4375
    :cond_4
    const/4 v4, 0x1

    return v4

    .line 4377
    :cond_5
    return v6
.end method

.method private collectViewAttributes()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1537
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v2, :cond_2

    .line 1539
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1540
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1541
    .local v0, "oldScreenOn":Z
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1542
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v5, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1543
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1544
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1545
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    not-int v4, v4

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1546
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1547
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1548
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v2, v0, :cond_0

    .line 1549
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eq v2, v3, :cond_1

    .line 1551
    :cond_0
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1552
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1553
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1554
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1555
    const/4 v2, 0x1

    return v2

    .line 1550
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v3, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-ne v2, v3, :cond_0

    .line 1558
    .end local v0    # "oldScreenOn":Z
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    return v5
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 8
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v5, 0x0

    .line 6941
    const-string/jumbo v3, "deliverInputEvent"

    .line 6942
    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    .line 6941
    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v3, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 6944
    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v3, Landroid/view/MotionEvent;

    .line 6947
    .local v1, "isMotionEvent":Z
    if-eqz v1, :cond_1

    .line 6948
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    .line 6949
    :cond_0
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 6955
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    neg-int v3, v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->setWindowOffset(II)V

    .line 6968
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_1
    if-eqz v1, :cond_2

    .line 6969
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 6970
    .restart local v0    # "event":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getDssScale()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setDssScale(F)V

    .line 6975
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_2
    if-eqz v1, :cond_3

    .line 6976
    sget-boolean v3, Landroid/view/ViewRootImpl;->bFactoryBinary:Z

    if-nez v3, :cond_3

    .line 6978
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 6979
    .restart local v0    # "event":Landroid/view/MotionEvent;
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->checkPalmRejection(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6980
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getPalmRejection(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6981
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 6988
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_3
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_4

    .line 6989
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 6993
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6994
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 6999
    .local v2, "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_0
    if-eqz v2, :cond_7

    .line 7000
    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 6940
    :goto_1
    return-void

    .line 6996
    .end local v2    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .restart local v2    # "stage":Landroid/view/ViewRootImpl$InputStage;
    goto :goto_0

    .end local v2    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_6
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .restart local v2    # "stage":Landroid/view/ViewRootImpl$InputStage;
    goto :goto_0

    .line 7002
    :cond_7
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_1
.end method

.method private destroyHardwareRenderer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 6677
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    .line 6679
    .local v0, "hardwareRenderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_1

    .line 6680
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 6681
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 6683
    :cond_0
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 6684
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "mHardwareRenderer.destroy()#4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6685
    invoke-virtual {v0, v4}, Landroid/view/ThreadedRenderer;->setRequested(Z)V

    .line 6687
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    .line 6688
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 6676
    :cond_1
    return-void
.end method

.method private dipToPx(I)I
    .locals 3
    .param p1, "dip"    # I

    .prologue
    .line 1709
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1710
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dispatchCoverStateChanged(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 7518
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7519
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7520
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7521
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7516
    return-void

    .line 7520
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doRelayoutForHCT(Z)V
    .locals 2
    .param p1, "fromHandler"    # Z

    .prologue
    .line 8326
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 8329
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 8330
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->resetSoftwareCaches(Landroid/view/View;)V

    .line 8333
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 8335
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 8336
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8337
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 8321
    :cond_0
    :goto_0
    return-void

    .line 8340
    :cond_1
    if-nez p1, :cond_2

    .line 8341
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$HCTRelayoutHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 8343
    :cond_2
    const-string/jumbo v0, "ViewRootImpl"

    const-string/jumbo v1, "Recursion detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private draw(Z)V
    .locals 32
    .param p1, "fullRedrawNeeded"    # Z

    .prologue
    .line 2986
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 2987
    .local v9, "surface":Landroid/view/Surface;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3001
    sget-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v2, :cond_4

    .line 3002
    sget-object v3, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3003
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 3004
    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3005
    .local v19, "count":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 3006
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v4, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3005
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 2988
    .end local v19    # "count":I
    .end local v24    # "i":I
    :cond_0
    if-nez v9, :cond_2

    .line 2989
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "ViewRootImpl #1 Surface is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :cond_1
    :goto_1
    return-void

    .line 2991
    :cond_2
    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2992
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "ViewRootImpl #2 Surface is not valid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local v19    # "count":I
    .restart local v24    # "i":I
    :cond_3
    monitor-exit v3

    .line 3011
    .end local v19    # "count":I
    .end local v24    # "i":I
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 3013
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v2, :cond_5

    .line 3014
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 3015
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 3018
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v16

    .line 3020
    :goto_2
    if-eqz v16, :cond_9

    .line 3021
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v20

    .line 3025
    .local v20, "curScrollY":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move/from16 v0, v20

    if-eq v2, v0, :cond_6

    .line 3026
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 3027
    const/16 p1, 0x1

    .line 3028
    .local p1, "fullRedrawNeeded":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v2, :cond_6

    .line 3029
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v2, v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 3033
    .end local p1    # "fullRedrawNeeded":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v17, v0

    .line 3034
    .local v17, "appScale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v13, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 3036
    .local v13, "scalingRequired":Z
    const/16 v27, 0x0

    .line 3038
    .local v27, "resizeAlpha":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 3039
    .local v14, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v2, :cond_a

    .line 3041
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 3042
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_7

    .line 3043
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3045
    :cond_7
    return-void

    .line 3002
    .end local v13    # "scalingRequired":Z
    .end local v14    # "dirty":Landroid/graphics/Rect;
    .end local v17    # "appScale":F
    .end local v20    # "curScrollY":I
    .end local v27    # "resizeAlpha":I
    .local p1, "fullRedrawNeeded":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 3018
    :cond_8
    const/16 v16, 0x0

    .local v16, "animating":Z
    goto :goto_2

    .line 3023
    .end local v16    # "animating":Z
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move/from16 v20, v0

    .restart local v20    # "curScrollY":I
    goto :goto_3

    .line 3048
    .end local p1    # "fullRedrawNeeded":Z
    .restart local v13    # "scalingRequired":Z
    .restart local v14    # "dirty":Landroid/graphics/Rect;
    .restart local v17    # "appScale":F
    .restart local v27    # "resizeAlpha":I
    :cond_a
    if-eqz p1, :cond_b

    .line 3049
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3050
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3062
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    .line 3064
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    neg-int v11, v2

    .line 3065
    .local v11, "xOffset":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    neg-int v2, v2

    add-int v12, v2, v20

    .line 3066
    .local v12, "yOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    .line 3067
    .local v26, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v26, :cond_17

    move-object/from16 v0, v26

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3068
    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    :goto_4
    if-eqz v7, :cond_c

    .line 3069
    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    .line 3070
    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v2

    .line 3073
    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3076
    :cond_c
    const/4 v15, 0x0

    .line 3077
    .local v15, "accessibilityFocusDirty":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    .line 3078
    .local v21, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v21, :cond_e

    .line 3079
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 3080
    .local v18, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v23

    .line 3081
    .local v23, "hasFocus":Z
    if-nez v23, :cond_d

    .line 3082
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->setEmpty()V

    .line 3084
    :cond_d
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 3085
    const/4 v15, 0x1

    .line 3089
    .end local v18    # "bounds":Landroid/graphics/Rect;
    .end local v23    # "hasFocus":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3090
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v4

    const-wide/32 v30, 0xf4240

    div-long v4, v4, v30

    .line 3089
    iput-wide v4, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 3092
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v2, :cond_f

    if-eqz v15, :cond_15

    .line 3093
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3095
    if-nez v15, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    move/from16 v25, v0

    .line 3096
    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    .line 3099
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 3101
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-ne v2, v12, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    if-eq v2, v11, :cond_11

    .line 3102
    :cond_10
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 3103
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    .line 3104
    const/16 v25, 0x1

    .line 3107
    :cond_11
    if-eqz v25, :cond_12

    .line 3108
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 3111
    :cond_12
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 3115
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateContentDrawBounds()Z

    move-result v28

    .line 3117
    .local v28, "updated":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v2, :cond_13

    .line 3121
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 3124
    :cond_13
    if-eqz v28, :cond_14

    .line 3125
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestDrawWindow()V

    .line 3128
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/ThreadedRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;)V

    .line 3162
    .end local v28    # "updated":Z
    :cond_15
    if-eqz v16, :cond_16

    .line 3163
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3164
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2985
    :cond_16
    return-void

    .line 3067
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v15    # "accessibilityFocusDirty":Z
    .end local v21    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 3095
    .restart local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v15    # "accessibilityFocusDirty":Z
    .restart local v21    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_18
    const/16 v25, 0x1

    .local v25, "invalidateRoot":Z
    goto :goto_5

    .line 3138
    .end local v25    # "invalidateRoot":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_1a

    .line 3139
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3156
    :cond_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 3157
    return-void

    .line 3140
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v2

    .line 3138
    if-eqz v2, :cond_1a

    .line 3143
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    .line 3144
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 3143
    invoke-virtual/range {v2 .. v7}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z

    .line 3145
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "mHardwareRenderer.initializeIfNeeded()#1 mSurface={%s}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isValid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-wide v0, v6, Landroid/view/Surface;->mNativeObject:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3151
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3152
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3153
    return-void

    .line 3146
    :catch_0
    move-exception v22

    .line 3147
    .local v22, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 3148
    return-void
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 3289
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 3290
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3291
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3292
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 3293
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3294
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3288
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 3296
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 3297
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "scalingRequired"    # Z
    .param p6, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 3175
    sget-boolean v7, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    if-eqz v7, :cond_0

    .line 3176
    const/4 v7, 0x0

    return v7

    .line 3183
    :cond_0
    :try_start_0
    iget v4, p6, Landroid/graphics/Rect;->left:I

    .line 3184
    .local v4, "left":I
    iget v6, p6, Landroid/graphics/Rect;->top:I

    .line 3185
    .local v6, "top":I
    iget v5, p6, Landroid/graphics/Rect;->right:I

    .line 3186
    .local v5, "right":I
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 3188
    .local v0, "bottom":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7, p6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 3191
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-boolean v7, p2, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setHighContrastText(Z)V

    .line 3196
    iget v7, p6, Landroid/graphics/Rect;->left:I

    if-ne v4, v7, :cond_1

    iget v7, p6, Landroid/graphics/Rect;->top:I

    if-eq v6, v7, :cond_7

    .line 3198
    :cond_1
    :goto_0
    const/4 v7, 0x1

    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3202
    :cond_2
    iget v7, p0, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3230
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p4, :cond_8

    .line 3231
    :cond_3
    :goto_1
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3234
    :cond_4
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 3235
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 3236
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v7, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3245
    neg-int v7, p3

    int-to-float v7, v7

    neg-int v8, p4

    int-to-float v8, v8

    :try_start_2
    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3246
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v7, :cond_5

    .line 3247
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v7, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 3249
    :cond_5
    if-eqz p5, :cond_9

    iget v7, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    :goto_2
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 3250
    const/4 v7, 0x0

    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 3252
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3254
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3256
    :try_start_3
    iget-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v7, :cond_6

    .line 3258
    const/4 v7, 0x0

    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3263
    :cond_6
    :try_start_4
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3275
    const/4 v7, 0x1

    return v7

    .line 3196
    :cond_7
    :try_start_5
    iget v7, p6, Landroid/graphics/Rect;->right:I

    if-ne v5, v7, :cond_1

    .line 3197
    iget v7, p6, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    if-eq v0, v7, :cond_2

    goto :goto_0

    .line 3206
    .end local v0    # "bottom":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    :catch_0
    move-exception v3

    .line 3207
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v8, "Could not lock surface"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3211
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3212
    const/4 v7, 0x0

    return v7

    .line 3203
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 3204
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 3205
    const/4 v7, 0x0

    return v7

    .line 3230
    .end local v2    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v0    # "bottom":I
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "left":I
    .restart local v5    # "right":I
    .restart local v6    # "top":I
    :cond_8
    if-eqz p3, :cond_4

    goto :goto_1

    .line 3249
    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    .line 3255
    :catchall_0
    move-exception v7

    .line 3256
    :try_start_6
    iget-boolean v8, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v8, :cond_a

    .line 3258
    const/4 v8, 0x0

    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3255
    :cond_a
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3261
    :catchall_1
    move-exception v7

    .line 3263
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    .line 3261
    throw v7

    .line 3264
    :catch_2
    move-exception v3

    .line 3265
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v8, "Could not unlock surface"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3266
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3268
    const/4 v7, 0x0

    return v7

    .line 3264
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 3265
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v8, "Could not unlock surface"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3266
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3268
    const/4 v7, 0x0

    return v7
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 6537
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6538
    if-nez p3, :cond_0

    .line 6539
    const-string/jumbo v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6540
    return-void

    .line 6542
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6543
    instance-of v3, p3, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 6544
    return-void

    :cond_1
    move-object v1, p3

    .line 6546
    check-cast v1, Landroid/view/ViewGroup;

    .line 6547
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6548
    .local v0, "N":I
    if-gtz v0, :cond_2

    .line 6549
    return-void

    .line 6551
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6552
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 6553
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 6552
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6536
    :cond_3
    return-void
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1064
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 1065
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 1068
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v7, :cond_0

    return-void

    .line 1072
    :cond_0
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x1000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    move v2, v6

    .line 1074
    .local v2, "hardwareAccelerated":Z
    :cond_1
    if-eqz v2, :cond_3

    .line 1075
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1076
    return-void

    .line 1088
    :cond_2
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    .line 1090
    .local v0, "fakeHwAccelerated":Z
    :goto_0
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    const/4 v1, 0x1

    .line 1093
    .local v1, "forceHwAccelerated":Z
    :goto_1
    if-eqz v0, :cond_6

    .line 1097
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 1063
    .end local v0    # "fakeHwAccelerated":Z
    .end local v1    # "forceHwAccelerated":Z
    :cond_3
    :goto_2
    return-void

    .line 1088
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "fakeHwAccelerated":Z
    goto :goto_0

    .line 1090
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "forceHwAccelerated":Z
    goto :goto_1

    .line 1098
    :cond_6
    sget-boolean v7, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    if-eqz v7, :cond_7

    .line 1099
    sget-boolean v7, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    if-eqz v7, :cond_3

    .line 1098
    if-eqz v1, :cond_3

    .line 1100
    :cond_7
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v7, :cond_8

    .line 1101
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v7}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 1102
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v8, "mHardwareRenderer.destroy()#2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_8
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1106
    .local v4, "insets":Landroid/graphics/Rect;
    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_9

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-eqz v7, :cond_a

    :cond_9
    const/4 v3, 0x1

    .line 1108
    .local v3, "hasSurfaceInsets":Z
    :goto_3
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_c

    move v5, v3

    .line 1109
    :goto_4
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    sget-boolean v9, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    invoke-static {v8, v5, v9}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZZ)Landroid/view/ThreadedRenderer;

    move-result-object v8

    iput-object v8, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    .line 1110
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ThreadedRenderer.create() translucent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v7, :cond_3

    .line 1112
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ThreadedRenderer;->setName(Ljava/lang/String;)V

    .line 1113
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1114
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 1113
    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    goto :goto_2

    .line 1107
    .end local v3    # "hasSurfaceInsets":Z
    :cond_a
    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_9

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v7, :cond_b

    const/4 v3, 0x1

    .restart local v3    # "hasSurfaceInsets":Z
    goto :goto_3

    .end local v3    # "hasSurfaceInsets":Z
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "hasSurfaceInsets":Z
    goto :goto_3

    .line 1108
    :cond_c
    const/4 v5, 0x1

    .local v5, "translucent":Z
    goto :goto_4
.end method

.method private endDragResizing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8181
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v1, :cond_1

    .line 8182
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 8183
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 8184
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    invoke-interface {v1}, Landroid/view/WindowCallbacks;->onWindowDragResizeEnd()V

    .line 8183
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8186
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 8180
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 5
    .param p1, "inTouchMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4274
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    return v4

    .line 4276
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4277
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 4280
    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4281
    :catch_0
    move-exception v0

    .line 4282
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ensureTouchModeLocally() error occurred. inTouchMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 4285
    return v4
.end method

.method private enterTouchMode()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4289
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4293
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 4294
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4309
    .end local v1    # "focused":Landroid/view/View;
    :cond_0
    return v4

    .line 4295
    .restart local v1    # "focused":Landroid/view/View;
    :cond_1
    invoke-static {v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 4296
    .local v0, "ancestorToTakeFocus":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 4300
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    return v2

    .line 4304
    :cond_2
    invoke-virtual {v1, v3, v5, v4}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    .line 4305
    return v5
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "focused"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 4319
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4320
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 4321
    check-cast v1, Landroid/view/ViewGroup;

    .line 4322
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_0

    .line 4323
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v2

    .line 4322
    if-eqz v2, :cond_0

    .line 4324
    return-object v1

    .line 4326
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4327
    return-object v4

    .line 4329
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 4332
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_2
    return-object v4
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 7007
    const-string/jumbo v1, "deliverInputEvent"

    .line 7008
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 7007
    const-wide/16 v4, 0x8

    invoke-static {v4, v5, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 7010
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v1, :cond_1

    .line 7011
    iget v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 7012
    .local v0, "handled":Z
    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 7017
    .end local v0    # "handled":Z
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7006
    return-void

    .line 7011
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "handled":Z
    goto :goto_0

    .line 7014
    .end local v0    # "handled":Z
    :cond_1
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    goto :goto_1
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3784
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 3785
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 3786
    check-cast v1, Landroid/view/ViewGroup;

    .line 3787
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3788
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3789
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 3788
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3783
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 13

    .prologue
    .line 3342
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_0

    .line 3343
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 3344
    .local v8, "value":Landroid/util/TypedValue;
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v9, v9, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    .line 3345
    const v10, 0x1160030

    const/4 v11, 0x1

    .line 3344
    invoke-virtual {v9, v10, v8, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 3346
    .local v4, "resolved":Z
    if-eqz v4, :cond_0

    .line 3347
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3348
    iget-object v10, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v10, v10, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v11, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 3347
    iput-object v10, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3353
    .end local v4    # "resolved":Z
    .end local v8    # "value":Landroid/util/TypedValue;
    :cond_0
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 3354
    const-string/jumbo v10, "enabled_accessibility_s_talkback"

    const/4 v11, 0x0

    .line 3353
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 3354
    const/4 v10, 0x1

    .line 3353
    if-ne v9, v10, :cond_5

    .line 3354
    const/4 v2, 0x1

    .line 3356
    .local v2, "galaxyTalkBackEnabled":Z
    :goto_0
    const/high16 v9, 0x40000000    # 2.0f

    .line 3357
    iget-object v10, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 3355
    const/4 v11, 0x1

    invoke-static {v11, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v3, v9

    .line 3358
    .local v3, "px":I
    if-eqz v2, :cond_6

    .line 3360
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "accessibility_large_cursor"

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    .line 3361
    iget-object v10, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 3359
    const/4 v11, 0x1

    invoke-static {v11, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v6, v9

    .line 3362
    .local v6, "strokeWidth":I
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 3363
    const-string/jumbo v10, "accessibility_cursor_color"

    .line 3364
    iget-object v11, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1060172

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 3362
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3365
    .local v5, "strokeColor":I
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 3366
    .local v1, "draw2":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v1, :cond_1

    .line 3367
    invoke-virtual {v1, v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3368
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3380
    .end local v5    # "strokeColor":I
    .end local v6    # "strokeWidth":I
    :cond_1
    :goto_1
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 3381
    const-string/jumbo v10, "universal_switch_enabled"

    const/4 v11, 0x0

    .line 3380
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 3381
    const/4 v10, 0x1

    .line 3380
    if-ne v9, v10, :cond_7

    .line 3381
    const/4 v7, 0x1

    .line 3382
    .local v7, "universalSwitchEnabled":Z
    :goto_2
    sget-boolean v9, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v9, :cond_2

    .line 3383
    const-string/jumbo v9, "ViewRootImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "universal Switch enabled:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    :cond_2
    if-eqz v7, :cond_4

    .line 3387
    const v0, -0xff432c

    .line 3388
    .local v0, "defCursorColor":I
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 3389
    const-string/jumbo v10, "accessibility_universal_switch_cursor_color"

    .line 3388
    invoke-static {v9, v10, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3390
    .restart local v5    # "strokeColor":I
    sget-boolean v9, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v9, :cond_3

    .line 3391
    const-string/jumbo v9, "ViewRootImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "universal Switch current stroke color:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    :cond_3
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .end local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 3396
    .restart local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v9, 0x40000000    # 2.0f

    .line 3397
    iget-object v10, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 3396
    const/4 v11, 0x1

    invoke-static {v11, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v6, v9

    .line 3398
    .restart local v6    # "strokeWidth":I
    invoke-virtual {v1, v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3399
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3400
    const-string/jumbo v9, "ViewRootImpl"

    .line 3401
    const-string/jumbo v10, "Changing accessibility focused drawable according to Universal Switch settings"

    .line 3400
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    .end local v0    # "defCursorColor":I
    .end local v5    # "strokeColor":I
    .end local v6    # "strokeWidth":I
    :cond_4
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v9

    .line 3354
    .end local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "galaxyTalkBackEnabled":Z
    .end local v3    # "px":I
    .end local v7    # "universalSwitchEnabled":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "galaxyTalkBackEnabled":Z
    goto/16 :goto_0

    .line 3371
    .restart local v3    # "px":I
    :cond_6
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 3372
    .restart local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v1, :cond_1

    .line 3373
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060172

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3374
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 3381
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "universalSwitchEnabled":Z
    goto/16 :goto_2
.end method

.method private getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3302
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v7, v7, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 3303
    .local v2, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3304
    return v5

    .line 3305
    :cond_0
    const/4 v4, 0x0

    .line 3306
    .local v4, "universalSwitchEnabled":Z
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 3307
    const-string/jumbo v8, "universal_switch_enabled"

    .line 3306
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_3

    move v4, v6

    .line 3310
    .local v4, "universalSwitchEnabled":Z
    :goto_0
    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3314
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3315
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_2

    iget-object v7, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v7, :cond_5

    .line 3316
    :cond_2
    return v5

    .end local v1    # "host":Landroid/view/View;
    .local v4, "universalSwitchEnabled":Z
    :cond_3
    move v4, v5

    .line 3307
    goto :goto_0

    .line 3311
    .local v4, "universalSwitchEnabled":Z
    :cond_4
    return v5

    .line 3319
    .restart local v1    # "host":Landroid/view/View;
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 3320
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v3, :cond_7

    .line 3321
    invoke-virtual {v1, p1, v6}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 3329
    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3330
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v7, v7, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 3331
    iget v7, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v7, v7

    iget v8, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 3332
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v7, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 3333
    iget-object v8, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v8, v8, Landroid/view/ViewRootImpl;->mHeight:I

    .line 3332
    invoke-virtual {p1, v5, v5, v7, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-nez v7, :cond_6

    .line 3335
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3337
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    :goto_2
    return v5

    .line 3322
    .end local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_7
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v7, :cond_8

    .line 3323
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3325
    :cond_8
    return v5

    .restart local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_9
    move v5, v6

    .line 3337
    goto :goto_2
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 6370
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 6371
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6373
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 6374
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 6376
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 7775
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v5, :cond_0

    .line 7776
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 7778
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 7779
    .local v4, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 7780
    move-object v0, p1

    .line 7781
    :goto_0
    if-eqz v0, :cond_2

    .line 7782
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7783
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7784
    .local v1, "firstCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_1

    move-object v0, v1

    .line 7785
    check-cast v0, Landroid/view/View;

    .local v0, "firstCurrent":Landroid/view/View;
    goto :goto_0

    .line 7787
    .end local v0    # "firstCurrent":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .local v0, "firstCurrent":Landroid/view/View;
    goto :goto_0

    .line 7790
    .end local v0    # "firstCurrent":Landroid/view/View;
    .end local v1    # "firstCurrentParent":Landroid/view/ViewParent;
    :cond_2
    move-object v2, p2

    .line 7791
    :goto_1
    if-eqz v2, :cond_5

    .line 7792
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7793
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 7794
    return-object v2

    .line 7796
    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7797
    .local v3, "secondCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_4

    move-object v2, v3

    .line 7798
    check-cast v2, Landroid/view/View;

    .local v2, "secondCurrent":Landroid/view/View;
    goto :goto_1

    .line 7800
    .end local v2    # "secondCurrent":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    .local v2, "secondCurrent":Landroid/view/View;
    goto :goto_1

    .line 7803
    .end local v2    # "secondCurrent":Landroid/view/View;
    .end local v3    # "secondCurrentParent":Landroid/view/ViewParent;
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 7804
    return-object v6
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # [I

    .prologue
    .line 6565
    iget-object v3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 6566
    .local v3, "renderNode":Landroid/view/RenderNode;
    const/4 v4, 0x0

    aget v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v4

    .line 6567
    if-eqz v3, :cond_0

    .line 6568
    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v3}, Landroid/view/RenderNode;->getDebugSize()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p1, v4

    .line 6571
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v1, p0

    .line 6572
    check-cast v1, Landroid/view/ViewGroup;

    .line 6574
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6575
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6576
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 6575
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6564
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1562
    const/4 v0, 0x0

    .line 1564
    .local v0, "vis":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1565
    const/16 v0, 0x500

    .line 1567
    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1568
    or-int/lit16 v0, v0, 0x300

    .line 1570
    :cond_1
    return v0
.end method

.method private getPalmRejection(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4382
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v13, v0, [I

    .line 4383
    .local v13, "Sxd":[I
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v14, v0, [I

    .line 4384
    .local v14, "Syd":[I
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v2, v0, [I

    .line 4385
    .local v2, "Major":[I
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v3, v0, [I

    .line 4387
    .local v3, "Minor":[I
    const/4 v12, 0x0

    .line 4389
    .local v12, "SvarX":F
    const/4 v10, 0x0

    .line 4390
    .local v10, "SsumX":F
    const/4 v11, 0x0

    .line 4391
    .local v11, "SsumY":F
    const/4 v7, 0x0

    .line 4392
    .local v7, "SsumEccen":F
    const/4 v8, 0x0

    .line 4393
    .local v8, "SsumMajor":F
    const/4 v9, 0x0

    .line 4394
    .local v9, "SsumMinor":F
    const/4 v5, 0x0

    .line 4395
    .local v5, "SmeanX":F
    const/4 v6, 0x0

    .line 4396
    .local v6, "SmeanY":F
    const/16 v16, 0x0

    .line 4398
    .local v16, "bPalm":Z
    const/high16 v15, 0x43480000    # 200.0f

    .line 4400
    .local v15, "TILT_TO_ZOOM_XVAR":F
    const/16 v21, 0x0

    .line 4401
    .local v21, "mScreenWidth":I
    const/16 v20, 0x0

    .line 4402
    .local v20, "mScreenHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 4405
    .local v4, "N":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 4406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "window"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    .line 4407
    .local v23, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    .line 4408
    .local v17, "disp":Landroid/view/Display;
    new-instance v22, Landroid/util/DisplayMetrics;

    invoke-direct/range {v22 .. v22}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4409
    .local v22, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4411
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    .line 4412
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4414
    .end local v17    # "disp":Landroid/view/Display;
    .end local v22    # "metrics":Landroid/util/DisplayMetrics;
    .end local v23    # "wm":Landroid/view/WindowManager;
    :cond_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 4415
    move/from16 v0, v21

    int-to-float v15, v0

    .line 4423
    :goto_0
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    .line 4424
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v13, v19

    .line 4425
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v14, v19

    .line 4426
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v2, v19

    .line 4427
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v3, v19

    .line 4423
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 4417
    .end local v19    # "i":I
    :cond_1
    move/from16 v0, v20

    int-to-float v15, v0

    goto :goto_0

    .line 4419
    :catch_0
    move-exception v18

    .line 4420
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v24, "ViewRootImpl"

    const-string/jumbo v25, "[Surface touch] Default Rotate = false"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4430
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v19    # "i":I
    :cond_2
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    .line 4431
    aget v24, v13, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v10, v10, v24

    .line 4432
    aget v24, v14, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v11, v11, v24

    .line 4433
    aget v24, v2, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v8, v8, v24

    .line 4434
    aget v24, v3, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v9, v9, v24

    .line 4430
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 4437
    :cond_3
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v5, v10, v24

    .line 4438
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v6, v11, v24

    .line 4439
    div-float v7, v8, v9

    .line 4441
    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v0, v4, :cond_6

    .line 4442
    aget v24, v13, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v5

    aget v25, v13, v19

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v5

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    add-float v12, v12, v24

    .line 4443
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v24

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v24

    const/high16 v25, 0x40400000    # 3.0f

    cmpl-float v24, v24, v25

    if-nez v24, :cond_5

    :cond_4
    const/16 v16, 0x1

    .line 4441
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 4445
    :cond_6
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v12, v12, v24

    .line 4447
    if-eqz v16, :cond_7

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 4448
    const-string/jumbo v24, "ViewRootImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ViewRootImpl] action cancel - 1, eccen:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    const/16 v24, 0x1

    return v24

    .line 4451
    :cond_7
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const/high16 v24, 0x42c80000    # 100.0f

    cmpl-float v24, v8, v24

    if-ltz v24, :cond_8

    const/high16 v24, 0x40000000    # 2.0f

    cmpl-float v24, v7, v24

    if-lez v24, :cond_8

    .line 4452
    add-int/lit8 v24, v4, 0x4

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v15, v24

    cmpg-float v24, v12, v24

    if-gez v24, :cond_8

    .line 4453
    const-string/jumbo v24, "ViewRootImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ViewRootImpl] action cancel - 2, Palm Sweep, SsumMajor:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " eccen:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " varX:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    const/16 v24, 0x1

    return v24

    .line 4457
    :cond_8
    const/16 v24, 0x0

    return v24
.end method

.method private static getRootMeasureSpec(II)I
    .locals 2
    .param p0, "windowSize"    # I
    .param p1, "rootDimension"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 2799
    packed-switch p1, :pswitch_data_0

    .line 2811
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2814
    .local v0, "measureSpec":I
    :goto_0
    return v0

    .line 2803
    .end local v0    # "measureSpec":I
    :pswitch_0
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "measureSpec":I
    goto :goto_0

    .line 2807
    .end local v0    # "measureSpec":I
    :pswitch_1
    const/high16 v1, -0x80000000

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "measureSpec":I
    goto :goto_0

    .line 2799
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/HandlerActionQueue;
    .locals 2

    .prologue
    .line 8153
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HandlerActionQueue;

    .line 8154
    .local v0, "rq":Landroid/view/HandlerActionQueue;
    if-eqz v0, :cond_0

    .line 8155
    return-object v0

    .line 8157
    :cond_0
    new-instance v0, Landroid/view/HandlerActionQueue;

    .end local v0    # "rq":Landroid/view/HandlerActionQueue;
    invoke-direct {v0}, Landroid/view/HandlerActionQueue;-><init>()V

    .line 8158
    .restart local v0    # "rq":Landroid/view/HandlerActionQueue;
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8159
    return-object v0
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 8
    .param p2, "secondLayoutRequests"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2722
    .local p1, "layoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2723
    .local v2, "numViewsRequestingLayout":I
    const/4 v4, 0x0

    .line 2724
    .local v4, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .end local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 2725
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2726
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_3

    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3

    .line 2727
    if-nez p2, :cond_0

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    .line 2728
    const/16 v7, 0x1000

    .line 2727
    if-ne v6, v7, :cond_3

    .line 2729
    :cond_0
    const/4 v0, 0x0

    .line 2730
    .local v0, "gone":Z
    move-object v3, v5

    .line 2732
    :goto_1
    if-eqz v3, :cond_1

    .line 2733
    iget v6, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 2734
    const/4 v0, 0x1

    .line 2743
    :cond_1
    if-nez v0, :cond_3

    .line 2744
    if-nez v4, :cond_2

    .line 2745
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2747
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2724
    .end local v0    # "gone":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2737
    .restart local v0    # "gone":Z
    :cond_4
    iget-object v6, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_5

    .line 2738
    iget-object v3, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    .local v3, "parent":Landroid/view/View;
    goto :goto_1

    .line 2740
    .end local v3    # "parent":Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .local v3, "parent":Landroid/view/View;
    goto :goto_1

    .line 2751
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_6
    if-nez p2, :cond_9

    .line 2753
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_9

    .line 2754
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2755
    :goto_3
    if-eqz v5, :cond_8

    .line 2756
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_8

    .line 2757
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x1001

    iput v6, v5, Landroid/view/View;->mPrivateFlags:I

    .line 2758
    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_7

    .line 2759
    iget-object v5, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/View;

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_3

    .line 2761
    .end local v5    # "view":Landroid/view/View;
    :cond_7
    const/4 v5, 0x0

    .local v5, "view":Landroid/view/View;
    goto :goto_3

    .line 2753
    .end local v5    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2766
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2767
    return-object v4
.end method

.method private handleDispatchCoverStateChanged(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 6330
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 6331
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    if-ne v0, p1, :cond_1

    .line 6332
    return-void

    .line 6334
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    .line 6335
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCoverStateChanged(Z)V

    .line 6328
    return-void
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 6220
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_0

    .line 6221
    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    .line 6223
    .local v3, "what":I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 6228
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 6296
    .end local v3    # "what":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 6216
    return-void

    .line 6232
    .restart local v3    # "what":I
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 6233
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6234
    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 6240
    :goto_1
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-ne v3, v8, :cond_5

    .line 6241
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 6242
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_3

    .line 6243
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 6246
    :cond_3
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v4, :cond_4

    .line 6247
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v5, 0x0

    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->offset(FF)V

    .line 6250
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/view/DragEvent;->mX:F

    .line 6251
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/view/DragEvent;->mY:F

    .line 6255
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6258
    .local v1, "prevDragView":Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 6261
    .local v2, "result":Z
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v1, v4, :cond_7

    .line 6263
    if-eqz v1, :cond_6

    .line 6264
    :try_start_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 6266
    :cond_6
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 6267
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6275
    :cond_7
    :goto_2
    if-ne v3, v8, :cond_8

    .line 6276
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 6278
    :try_start_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Reporting drop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6279
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6286
    :cond_8
    :goto_3
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 6287
    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 6288
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v7, v4, Landroid/view/View$AttachInfo;->mDragToken:Landroid/os/IBinder;

    .line 6289
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    .line 6290
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 6291
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v7, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    goto/16 :goto_0

    .line 6236
    .end local v1    # "prevDragView":Landroid/view/View;
    .end local v2    # "result":Z
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    goto/16 :goto_1

    .line 6269
    .restart local v1    # "prevDragView":Landroid/view/View;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 6270
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "Unable to note drag target change"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6280
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 6281
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "Unable to report drop result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 3
    .param p1, "e"    # Landroid/view/Surface$OutOfResourcesException;

    .prologue
    .line 2561
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "OutOfResourcesException initializing HW surface"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2563
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2564
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 2565
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "No processes killed for memory; killing self"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2570
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2560
    return-void

    .line 2568
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 7646
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 7647
    .local v7, "focusedHost":Landroid/view/View;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 7649
    :cond_0
    return-void

    .line 7652
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v14

    .line 7653
    .local v14, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v14, :cond_2

    .line 7655
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 7656
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7657
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 7658
    return-void

    .line 7663
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v3

    .line 7664
    .local v3, "changes":I
    and-int/lit8 v16, v3, 0x1

    if-nez v16, :cond_3

    .line 7665
    if-eqz v3, :cond_3

    .line 7666
    return-void

    .line 7669
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    .line 7670
    .local v4, "eventSourceNodeId":J
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    .line 7673
    .local v2, "changedViewId":I
    const/4 v10, 0x0

    .line 7674
    .local v10, "hostInSubtree":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 7675
    :goto_0
    if-eqz v15, :cond_4

    if-eqz v10, :cond_5

    .line 7689
    :cond_4
    if-nez v10, :cond_8

    .line 7690
    return-void

    .line 7676
    :cond_5
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v16

    move/from16 v0, v16

    if-ne v2, v0, :cond_6

    .line 7677
    const/4 v10, 0x1

    goto :goto_0

    .line 7679
    :cond_6
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 7680
    .local v13, "parent":Landroid/view/ViewParent;
    instance-of v0, v13, Landroid/view/View;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object v15, v13

    .line 7681
    check-cast v15, Landroid/view/View;

    .local v15, "root":Landroid/view/View;
    goto :goto_0

    .line 7683
    .end local v15    # "root":Landroid/view/View;
    :cond_7
    const/4 v15, 0x0

    .local v15, "root":Landroid/view/View;
    goto :goto_0

    .line 7693
    .end local v13    # "parent":Landroid/view/ViewParent;
    .end local v15    # "root":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v8

    .line 7694
    .local v8, "focusedSourceNodeId":J
    invoke-static {v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 7695
    .local v6, "focusedChildId":I
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v6, v0, :cond_9

    .line 7697
    const/4 v6, -0x1

    .line 7701
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 7702
    .local v12, "oldBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 7703
    invoke-virtual {v14, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7704
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-nez v16, :cond_b

    .line 7706
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 7707
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 7712
    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v16

    const/16 v17, 0x0

    .line 7711
    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v6, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 7713
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    .line 7645
    :cond_a
    :goto_1
    return-void

    .line 7716
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v11

    .line 7717
    .local v11, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 7718
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 7719
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method private invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 1368
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 1369
    .local v2, "localDirty":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1375
    :cond_0
    :goto_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1378
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1380
    .local v0, "appScale":F
    iget v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    .line 1379
    invoke-virtual {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 1381
    .local v1, "intersected":Z
    if-nez v1, :cond_1

    .line 1382
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1384
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v3, :cond_3

    .line 1385
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1367
    :cond_3
    return-void

    .line 1370
    .end local v0    # "appScale":F
    .end local v1    # "intersected":Z
    :cond_4
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 1371
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    goto :goto_0
.end method

.method public static invokeFunctor(JZ)V
    .locals 0
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    .prologue
    .line 1049
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    .line 1048
    return-void
.end method

.method private isInLocalFocusMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 988
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isInTouchMode()Z
    .locals 3

    .prologue
    .line 686
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    .line 687
    .local v1, "windowSession":Landroid/view/IWindowSession;
    if-eqz v1, :cond_0

    .line 689
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 690
    :catch_0
    move-exception v0

    .line 693
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 6141
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 6156
    const/4 v0, 0x0

    return v0

    .line 6154
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 6141
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .locals 6
    .param p0, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7034
    instance-of v5, p0, Landroid/view/KeyEvent;

    if-eqz v5, :cond_1

    move-object v1, p0

    .line 7035
    check-cast v1, Landroid/view/KeyEvent;

    .line 7036
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    move-object v2, p0

    .line 7038
    check-cast v2, Landroid/view/MotionEvent;

    .line 7039
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 7040
    .local v0, "action":I
    if-eq v0, v3, :cond_2

    .line 7041
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    .line 7040
    :cond_2
    :goto_1
    return v3

    .line 7042
    :cond_3
    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    move v3, v4

    goto :goto_1
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 6165
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 3775
    if-ne p0, p1, :cond_0

    .line 3776
    const/4 v1, 0x1

    return v1

    .line 3779
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3780
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private leaveTouchMode()Z
    .locals 7

    .prologue
    const/16 v6, 0x82

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4336
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 4337
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4338
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 4339
    .local v1, "focusedView":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 4341
    return v4

    .line 4342
    :cond_0
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "focusedView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    .line 4343
    const/high16 v3, 0x40000

    .line 4342
    if-eq v2, v3, :cond_1

    .line 4346
    return v4

    .line 4352
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4353
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4354
    invoke-virtual {v0, v6}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    return v2

    .line 4357
    .end local v0    # "focused":Landroid/view/View;
    :cond_2
    return v4
.end method

.method private maybeHandleWindowMove(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2542
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_0

    .line 2543
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_6

    .line 2544
    .local v0, "windowMoved":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 2545
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_1

    .line 2546
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 2548
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2549
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 2551
    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    if-eqz v2, :cond_5

    .line 2553
    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_4

    .line 2554
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 2556
    :cond_4
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    .line 2532
    :cond_5
    return-void

    .end local v0    # "windowMoved":Z
    :cond_6
    move v0, v1

    .line 2543
    goto :goto_0
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 10
    .param p1, "host"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "desiredWindowWidth"    # I
    .param p5, "desiredWindowHeight"    # I

    .prologue
    const/high16 v9, 0x1000000

    const/4 v8, 0x1

    .line 1577
    const/4 v5, 0x0

    .line 1583
    .local v5, "windowSizeMayChange":Z
    const/4 v3, 0x0

    .line 1584
    .local v3, "goodMeasure":Z
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 1589
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1590
    .local v4, "packageMetrics":Landroid/util/DisplayMetrics;
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d5

    if-ne v6, v7, :cond_4

    .line 1591
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const v7, 0x1050169

    invoke-virtual {p3, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1596
    :goto_0
    const/4 v0, 0x0

    .line 1597
    .local v0, "baseSize":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 1598
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v6, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v0, v6

    .line 1605
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    if-le p4, v0, :cond_1

    .line 1606
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1607
    .local v2, "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    .line 1608
    .local v1, "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1613
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_6

    .line 1614
    const/4 v3, 0x1

    .line 1632
    .end local v0    # "baseSize":I
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_2
    if-nez v3, :cond_3

    .line 1633
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p4, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1634
    .restart local v2    # "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    .line 1635
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1636
    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1637
    :cond_2
    const/4 v5, 0x1

    .line 1647
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_3
    return v5

    .line 1594
    .restart local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const v7, 0x1050168

    invoke-virtual {p3, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0

    .line 1599
    .restart local v0    # "baseSize":I
    :cond_5
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    .line 1601
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v6

    float-to-int v0, v6

    goto :goto_1

    .line 1617
    .restart local v1    # "childHeightMeasureSpec":I
    .restart local v2    # "childWidthMeasureSpec":I
    :cond_6
    add-int v6, v0, p4

    div-int/lit8 v0, v6, 0x2

    .line 1620
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1621
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1624
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_1

    .line 1626
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 6837
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6838
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz v0, :cond_0

    .line 6839
    iget v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 6840
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6841
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6846
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 6847
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 6848
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 6849
    return-object v0

    .line 6843
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .end local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .restart local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    goto :goto_0
.end method

.method private performDraw()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const-wide/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 2900
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v7, v7, Landroid/view/View$AttachInfo;->mDisplayState:I

    if-ne v7, v10, :cond_0

    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v7, :cond_3

    .line 2904
    :cond_0
    sget-boolean v7, Landroid/view/ViewRootImpl;->sAODEnabled:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "aod_show_state"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 2905
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x8b1

    if-eq v7, v9, :cond_1

    .line 2906
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v9, 0x40000

    and-int/2addr v7, v9

    if-nez v7, :cond_1

    .line 2907
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v7, :cond_4

    .line 2914
    :cond_1
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    .line 2916
    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2917
    .local v5, "fullRedrawNeeded":Z
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2919
    iput-boolean v10, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2920
    const-string/jumbo v7, "draw"

    invoke-static {v12, v13, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2923
    :try_start_0
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mIsThisWindowDontNeedSurfaceBuffer:Z

    if-nez v7, :cond_5

    .line 2924
    invoke-direct {p0, v5}, Landroid/view/ViewRootImpl;->draw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2930
    :cond_2
    :goto_0
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2931
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2936
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v7, :cond_7

    .line 2937
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 2938
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_6

    .line 2939
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/RenderNode;

    invoke-virtual {v7}, Landroid/view/RenderNode;->endAllAnimators()V

    .line 2938
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2900
    .end local v2    # "count":I
    .end local v5    # "fullRedrawNeeded":Z
    .end local v6    # "i":I
    :cond_3
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    if-nez v7, :cond_0

    .line 2901
    return-void

    .line 2907
    :cond_4
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    if-nez v7, :cond_1

    .line 2908
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    if-nez v7, :cond_1

    .line 2910
    return-void

    .line 2925
    .restart local v5    # "fullRedrawNeeded":Z
    :cond_5
    :try_start_1
    sget-boolean v7, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v7, :cond_2

    .line 2926
    const-string/jumbo v7, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "window="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",  mIsThisWindowDontNeedSurfaceBuffer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/view/ViewRootImpl;->mIsThisWindowDontNeedSurfaceBuffer:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".    So, skip drawing."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2929
    :catchall_0
    move-exception v7

    .line 2930
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2931
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2929
    throw v7

    .line 2941
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    :cond_6
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2944
    .end local v2    # "count":I
    .end local v6    # "i":I
    :cond_7
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v7, :cond_c

    .line 2945
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2948
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v7, :cond_8

    .line 2950
    :try_start_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2954
    :goto_2
    iput-object v11, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 2957
    :cond_8
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v7, :cond_9

    .line 2958
    const-string/jumbo v7, "fence"

    invoke-static {v12, v13, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2959
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v7}, Landroid/view/ThreadedRenderer;->fence()V

    .line 2960
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2961
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    iget-boolean v9, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v7, v9}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 2967
    :cond_9
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7}, Landroid/view/Surface;->isValid()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2968
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v7, v9}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2969
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v7}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    .line 2970
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_b

    .line 2971
    array-length v9, v1

    move v7, v8

    :goto_3
    if-ge v7, v9, :cond_b

    aget-object v0, v1, v7

    .line 2972
    .local v0, "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v8, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v8, :cond_a

    .line 2973
    check-cast v0, Landroid/view/SurfaceHolder$Callback2;

    .end local v0    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v0, v8}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2971
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2951
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catch_0
    move-exception v4

    .line 2952
    .local v4, "e":Ljava/lang/InterruptedException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v9, "Window redraw count down interruped!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2979
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_b
    :try_start_3
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v7, v8}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2899
    :cond_c
    :goto_4
    return-void

    .line 2980
    :catch_1
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 12
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "desiredWindowWidth"    # I
    .param p3, "desiredWindowHeight"    # I

    .prologue
    .line 2636
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2637
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 2638
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2640
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2646
    .local v1, "host":Landroid/view/View;
    const-string/jumbo v0, "layout"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2648
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 2650
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2651
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2652
    .local v9, "numViewsRequestingLayout":I
    if-lez v9, :cond_1

    .line 2657
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 2658
    const/4 v2, 0x0

    .line 2657
    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 2659
    .local v10, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v10, :cond_1

    .line 2663
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 2666
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2667
    .local v8, "numValidRequests":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 2668
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 2669
    .local v11, "view":Landroid/view/View;
    const-string/jumbo v0, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLayout() improperly called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2670
    const-string/jumbo v3, " during layout: running second layout pass"

    .line 2669
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 2667
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2673
    .end local v11    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    .line 2675
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2676
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 2678
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 2682
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 2683
    if-eqz v10, :cond_1

    .line 2684
    move-object v6, v10

    .line 2686
    .local v6, "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v0

    new-instance v2, Landroid/view/ViewRootImpl$3;

    invoke-direct {v2, p0, v10}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/view/HandlerActionQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2703
    .end local v6    # "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "i":I
    .end local v8    # "numValidRequests":I
    .end local v10    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2705
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2635
    return-void

    .line 2702
    .end local v9    # "numViewsRequestingLayout":I
    :catchall_0
    move-exception v0

    .line 2703
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2702
    throw v0
.end method

.method private performMeasure(II)V
    .locals 4
    .param p1, "childWidthMeasureSpec"    # I
    .param p2, "childHeightMeasureSpec"    # I

    .prologue
    const-wide/16 v2, 0x8

    .line 2574
    const-string/jumbo v0, "measure"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2576
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2578
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2573
    return-void

    .line 2577
    :catchall_0
    move-exception v0

    .line 2578
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2577
    throw v0
.end method

.method private performTraversals()V
    .locals 78

    .prologue
    .line 1715
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1723
    .local v5, "host":Landroid/view/View;
    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_e

    .line 1726
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 1727
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 1728
    const/16 v77, 0x0

    .line 1729
    .local v77, "windowSizeMayChange":Z
    const/16 v57, 0x0

    .line 1730
    .local v57, "newSurface":Z
    const/16 v67, 0x0

    .line 1731
    .local v67, "surfaceChanged":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1736
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v72

    .line 1737
    .local v72, "viewVisibility":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_10

    .line 1738
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    move/from16 v0, v72

    if-ne v4, v0, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    move/from16 v73, v0

    .line 1740
    :goto_0
    const/16 v61, 0x0

    .line 1741
    .local v61, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v4, :cond_0

    .line 1742
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1743
    const/16 v67, 0x1

    .line 1744
    move-object/from16 v61, v6

    .line 1747
    .end local v61    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v30

    .line 1748
    .local v30, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v30 .. v30}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v4, v10, :cond_1

    .line 1749
    move-object/from16 v61, v6

    .line 1750
    .local v61, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1751
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1752
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v4, :cond_11

    .line 1753
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1754
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 1761
    .end local v61    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    .line 1764
    .local v40, "frame":Landroid/graphics/Rect;
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v58

    .line 1765
    .local v58, "oldFrame":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_13

    .line 1766
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1767
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1769
    invoke-static {v6}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1771
    new-instance v65, Landroid/graphics/Point;

    invoke-direct/range {v65 .. v65}, Landroid/graphics/Point;-><init>()V

    .line 1772
    .local v65, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1773
    move-object/from16 v0, v65

    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 1774
    .local v8, "desiredWindowWidth":I
    move-object/from16 v0, v65

    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 1784
    .end local v65    # "size":Landroid/graphics/Point;
    .local v9, "desiredWindowHeight":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 1785
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 1786
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v72

    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1787
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1788
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1789
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 1791
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_2

    .line 1792
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1794
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v10}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1795
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "dispatchAttachedToWindow"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 1797
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 1811
    :cond_3
    :goto_3
    if-eqz v73, :cond_6

    .line 1812
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v72

    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1813
    move/from16 v0, v72

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1814
    if-nez v72, :cond_15

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 1815
    if-nez v72, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_5

    .line 1816
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    .line 1817
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 1819
    :cond_5
    const/16 v4, 0x8

    move/from16 v0, v72

    if-ne v0, v4, :cond_6

    .line 1822
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 1827
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v4, :cond_7

    .line 1828
    invoke-virtual {v5}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 1832
    :cond_7
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/view/HandlerActionQueue;->executeActions(Landroid/os/Handler;)V

    .line 1834
    const/16 v51, 0x0

    .line 1836
    .local v51, "insetsChanged":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    move/from16 v55, v0

    .line 1837
    .local v55, "layoutRequested":Z
    :goto_5
    if-eqz v55, :cond_9

    .line 1839
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1841
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_19

    .line 1844
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 1845
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    :cond_8
    :goto_7
    move-object/from16 v4, p0

    .line 1886
    invoke-direct/range {v4 .. v9}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v4

    or-int v77, v77, v4

    .line 1890
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v77    # "windowSizeMayChange":Z
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1891
    move-object/from16 v61, v6

    .line 1893
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v4, :cond_b

    .line 1894
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 1895
    move-object/from16 v61, v6

    .line 1898
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v4, :cond_24

    .line 1899
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 1900
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v0, v4, 0xf0

    move/from16 v64, v0

    .line 1904
    .local v64, "resizeMode":I
    if-nez v64, :cond_24

    .line 1905
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1906
    .local v22, "N":I
    const/16 v48, 0x0

    .local v48, "i":I
    :goto_8
    move/from16 v0, v48

    move/from16 v1, v22

    if-ge v0, v1, :cond_22

    .line 1907
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1908
    const/16 v64, 0x10

    .line 1906
    :cond_d
    add-int/lit8 v48, v48, 0x1

    goto :goto_8

    .line 1724
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v22    # "N":I
    .end local v30    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v40    # "frame":Landroid/graphics/Rect;
    .end local v48    # "i":I
    .end local v51    # "insetsChanged":Z
    .end local v55    # "layoutRequested":Z
    .end local v57    # "newSurface":Z
    .end local v58    # "oldFrame":Ljava/lang/String;
    .end local v64    # "resizeMode":I
    .end local v67    # "surfaceChanged":Z
    .end local v72    # "viewVisibility":I
    :cond_e
    return-void

    .line 1738
    .restart local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v57    # "newSurface":Z
    .restart local v67    # "surfaceChanged":Z
    .restart local v72    # "viewVisibility":I
    .restart local v77    # "windowSizeMayChange":Z
    :cond_f
    const/16 v73, 0x1

    .local v73, "viewVisibilityChanged":Z
    goto/16 :goto_0

    .line 1737
    .end local v73    # "viewVisibilityChanged":Z
    :cond_10
    const/16 v73, 0x0

    .restart local v73    # "viewVisibilityChanged":Z
    goto/16 :goto_0

    .line 1756
    .end local v73    # "viewVisibilityChanged":Z
    .restart local v30    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v61    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1757
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto/16 :goto_1

    .line 1776
    .end local v61    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v40    # "frame":Landroid/graphics/Rect;
    .restart local v58    # "oldFrame":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    .line 1777
    .local v32, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v8

    .line 1778
    .restart local v8    # "desiredWindowWidth":I
    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v9

    .restart local v9    # "desiredWindowHeight":I
    goto/16 :goto_2

    .line 1801
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v32    # "config":Landroid/content/res/Configuration;
    :cond_13
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1802
    .restart local v8    # "desiredWindowWidth":I
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1803
    .restart local v9    # "desiredWindowHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v8, v4, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v9, v4, :cond_3

    .line 1805
    :cond_14
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1806
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1807
    const/16 v77, 0x1

    goto/16 :goto_3

    .line 1814
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1836
    .restart local v51    # "insetsChanged":Z
    :cond_16
    const/16 v55, 0x1

    goto/16 :goto_5

    :cond_17
    const/16 v55, 0x0

    goto/16 :goto_5

    .line 1844
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v55    # "layoutRequested":Z
    :cond_18
    const/4 v4, 0x1

    goto/16 :goto_6

    .line 1847
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1848
    const/16 v51, 0x1

    .line 1850
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1851
    const/16 v51, 0x1

    .line 1853
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1854
    const/16 v51, 0x1

    .line 1856
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1857
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1861
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1862
    const/16 v51, 0x1

    .line 1864
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    if-eq v4, v10, :cond_1f

    .line 1865
    const/16 v51, 0x1

    .line 1867
    :cond_1f
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v4, v10, :cond_20

    .line 1868
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_8

    .line 1869
    :cond_20
    const/16 v77, 0x1

    .line 1871
    invoke-static {v6}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1873
    new-instance v65, Landroid/graphics/Point;

    invoke-direct/range {v65 .. v65}, Landroid/graphics/Point;-><init>()V

    .line 1874
    .restart local v65    # "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1875
    move-object/from16 v0, v65

    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 1876
    move-object/from16 v0, v65

    iget v9, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_7

    .line 1878
    .end local v65    # "size":Landroid/graphics/Point;
    :cond_21
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    .line 1879
    .restart local v32    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v8

    .line 1880
    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v9

    goto/16 :goto_7

    .line 1911
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v32    # "config":Landroid/content/res/Configuration;
    .end local v77    # "windowSizeMayChange":Z
    .restart local v22    # "N":I
    .restart local v48    # "i":I
    .restart local v64    # "resizeMode":I
    :cond_22
    if-nez v64, :cond_23

    .line 1912
    const/16 v64, 0x20

    .line 1914
    :cond_23
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, 0xf0

    move/from16 v0, v64

    if-eq v4, v0, :cond_24

    .line 1916
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0xf1

    or-int v4, v4, v64

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1919
    move-object/from16 v61, v6

    .line 1924
    .end local v22    # "N":I
    .end local v48    # "i":I
    .end local v64    # "resizeMode":I
    :cond_24
    if-eqz v61, :cond_26

    .line 1925
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_25

    .line 1926
    move-object/from16 v0, v61

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_25

    .line 1927
    const/4 v4, -0x3

    move-object/from16 v0, v61

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1930
    :cond_25
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v61

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1931
    const/high16 v11, 0x2000000

    .line 1930
    and-int/2addr v4, v11

    if-eqz v4, :cond_3e

    const/4 v4, 0x1

    :goto_9
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    .line 1934
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-eqz v4, :cond_27

    .line 1935
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1936
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 1937
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 1938
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_27

    .line 1943
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    move v14, v8

    move v15, v9

    .line 1942
    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v4

    or-int v77, v77, v4

    .line 1948
    :cond_27
    if-eqz v55, :cond_28

    .line 1952
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1955
    :cond_28
    if-eqz v55, :cond_43

    if-eqz v77, :cond_43

    .line 1956
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-ne v4, v10, :cond_29

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-eq v4, v10, :cond_3f

    :cond_29
    const/16 v76, 0x1

    .line 1961
    .local v76, "windowShouldResize":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v4, :cond_44

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    if-nez v4, :cond_44

    const/4 v4, 0x1

    :goto_b
    or-int v76, v76, v4

    .line 1966
    .local v76, "windowShouldResize":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    or-int v76, v76, v4

    .line 1972
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v4

    if-nez v4, :cond_45

    .line 1973
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v4, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    move/from16 v31, v0

    .line 1975
    :goto_c
    const/16 v52, 0x0

    .line 1976
    .local v52, "insetsPending":Z
    const/16 v63, 0x0

    .line 1977
    .local v63, "relayoutResult":I
    const/16 v71, 0x0

    .line 1979
    .local v71, "updatedConfiguration":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v68

    .line 1981
    .local v68, "surfaceGenerationId":I
    if-nez v72, :cond_46

    const/16 v54, 0x1

    .line 1982
    .local v54, "isViewVisible":Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_2a

    if-nez v76, :cond_2a

    if-nez v51, :cond_2a

    if-nez v73, :cond_2a

    .line 1983
    if-eqz v61, :cond_47

    .line 1984
    :cond_2a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 1986
    if-eqz v54, :cond_2b

    .line 1996
    if-eqz v31, :cond_59

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_58

    move/from16 v52, v73

    .line 1999
    .end local v52    # "insetsPending":Z
    :cond_2b
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_2c

    .line 2000
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2001
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    .line 2004
    :cond_2c
    const/16 v47, 0x0

    .line 2005
    .local v47, "hwInitialized":Z
    const/16 v41, 0x0

    .line 2006
    .local v41, "framesChanged":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v43

    .line 2014
    .local v43, "hadSurface":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_2e

    .line 2018
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->pauseSurface(Landroid/view/Surface;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2021
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v12, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v12, v0, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2023
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v4, v4, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    const-wide/16 v10, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/view/FrameInfo;->addFlags(J)V

    .line 2025
    :cond_2e
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, v72

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v63

    .line 2026
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Relayout returned: oldFrame=%s newFrame=%s result=0x%s surface={%s} surfaceGenerationChanged="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v68

    if-eq v0, v4, :cond_5a

    const/4 v4, 0x1

    :goto_f
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    .line 2027
    const/4 v12, 0x0

    aput-object v58, v11, v12

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v11, v17

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x2

    aput-object v12, v11, v17

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isValid="

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Surface;->isValid()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/view/Surface;->mNativeObject:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x3

    aput-object v12, v11, v17

    .line 2026
    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->seq:I

    if-eqz v4, :cond_2f

    .line 2040
    new-instance v10, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v10, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_5b

    const/4 v4, 0x0

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 2041
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v10, 0x0

    iput v10, v4, Landroid/content/res/Configuration;->seq:I

    .line 2042
    const/16 v71, 0x1

    .line 2045
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 2046
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 2045
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    const/16 v60, 0x0

    .line 2047
    .local v60, "overscanInsetsChanged":Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 2048
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 2047
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    const/16 v33, 0x0

    .line 2049
    .local v33, "contentInsetsChanged":Z
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 2050
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 2049
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    const/16 v74, 0x0

    .line 2051
    .local v74, "visibleInsetsChanged":Z
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 2052
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    .line 2051
    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    const/16 v66, 0x0

    .line 2053
    .local v66, "stableInsetsChanged":Z
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    const/16 v59, 0x0

    .line 2054
    .local v59, "outsetsChanged":Z
    :goto_15
    and-int/lit8 v4, v63, 0x20

    if-eqz v4, :cond_61

    const/16 v69, 0x1

    .line 2057
    .local v69, "surfaceSizeChanged":Z
    :goto_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    if-eq v4, v10, :cond_62

    const/16 v23, 0x1

    .line 2058
    .local v23, "alwaysConsumeNavBarChanged":Z
    :goto_17
    if-eqz v33, :cond_30

    .line 2059
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2063
    :cond_30
    if-eqz v60, :cond_31

    .line 2064
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2068
    const/16 v33, 0x1

    .line 2070
    :cond_31
    if-eqz v66, :cond_32

    .line 2071
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2075
    const/16 v33, 0x1

    .line 2077
    :cond_32
    if-eqz v23, :cond_33

    .line 2078
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    .line 2079
    const/16 v33, 0x1

    .line 2081
    :cond_33
    if-nez v33, :cond_34

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 2082
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 2081
    if-eq v4, v10, :cond_63

    .line 2085
    :cond_34
    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 2086
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 2087
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2088
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 2089
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 2091
    :cond_35
    if-eqz v74, :cond_36

    .line 2092
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2101
    :cond_36
    if-nez v60, :cond_64

    if-nez v33, :cond_64

    if-nez v66, :cond_64

    if-nez v74, :cond_64

    .line 2105
    move/from16 v41, v59

    .line 2106
    .end local v41    # "framesChanged":Z
    :goto_19
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_37

    if-eqz v41, :cond_37

    .line 2107
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 2108
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mRequestLayoutTask:Ljava/lang/Runnable;

    const-wide/16 v18, 0x1f4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v10, v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2111
    :cond_37
    if-nez v43, :cond_65

    .line 2112
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2120
    const/16 v57, 0x1

    .line 2121
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2122
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    .line 2125
    sget-wide v10, Landroid/view/ViewRootImpl;->sSTSOption:D

    const-wide/16 v18, 0x0

    cmpl-double v4, v10, v18

    if-eqz v4, :cond_38

    .line 2126
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    sget-wide v18, Landroid/view/ViewRootImpl;->sSTSOption:D

    move-wide/from16 v0, v18

    invoke-virtual {v4, v10, v0, v1}, Landroid/view/Surface;->setSTSOption(Landroid/content/Context;D)V

    .line 2133
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_39

    .line 2135
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    .line 2136
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 2135
    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v47

    .line 2137
    .local v47, "hwInitialized":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mHardwareRenderer.initialize() mSurface={%s} hwInitialized="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v47

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isValid="

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Surface;->isValid()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/view/Surface;->mNativeObject:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v11, v17

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    if-eqz v47, :cond_39

    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_39

    .line 2140
    sget-boolean v4, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    if-nez v4, :cond_39

    .line 2143
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->allocateBuffers()V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2192
    .end local v47    # "hwInitialized":Z
    :cond_39
    :goto_1a
    and-int/lit8 v4, v63, 0x10

    if-eqz v4, :cond_6b

    const/16 v42, 0x1

    .line 2194
    .local v42, "freeformResizing":Z
    :goto_1b
    and-int/lit8 v4, v63, 0x8

    if-eqz v4, :cond_6c

    const/16 v35, 0x1

    .line 2196
    .local v35, "dockedResizing":Z
    :goto_1c
    if-nez v42, :cond_6d

    move/from16 v36, v35

    .line 2197
    :goto_1d
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    move/from16 v0, v36

    if-eq v4, v0, :cond_3a

    .line 2198
    if-eqz v36, :cond_6f

    .line 2199
    if-eqz v42, :cond_6e

    .line 2200
    const/4 v4, 0x0

    .line 2199
    :goto_1e
    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    .line 2202
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    .line 2203
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 2204
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    move-object/from16 v10, p0

    .line 2202
    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2224
    .end local v23    # "alwaysConsumeNavBarChanged":Z
    .end local v33    # "contentInsetsChanged":Z
    .end local v35    # "dockedResizing":Z
    .end local v42    # "freeformResizing":Z
    .end local v59    # "outsetsChanged":Z
    .end local v60    # "overscanInsetsChanged":Z
    .end local v66    # "stableInsetsChanged":Z
    .end local v69    # "surfaceSizeChanged":Z
    .end local v74    # "visibleInsetsChanged":Z
    :cond_3a
    :goto_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v40

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2225
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v40

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 2230
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ne v4, v10, :cond_3b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-eq v4, v10, :cond_3c

    .line 2231
    :cond_3b
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 2232
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 2235
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_74

    .line 2237
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 2240
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 2242
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v10, v11}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2244
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 2245
    if-nez v43, :cond_71

    .line 2246
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2248
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 2249
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "ViewRootImpl >> surfaceCreated"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 2252
    .local v25, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v25, :cond_70

    .line 2253
    const/4 v4, 0x0

    move-object/from16 v0, v25

    array-length v10, v0

    :goto_20
    if-ge v4, v10, :cond_70

    aget-object v24, v25, v4

    .line 2254
    .local v24, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 2253
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1930
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v43    # "hadSurface":Z
    .end local v54    # "isViewVisible":Z
    .end local v63    # "relayoutResult":I
    .end local v68    # "surfaceGenerationId":I
    .end local v71    # "updatedConfiguration":Z
    .end local v76    # "windowShouldResize":Z
    :cond_3e
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 1957
    :cond_3f
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_40

    .line 1958
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v8, :cond_40

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v10, :cond_29

    .line 1959
    :cond_40
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_42

    .line 1960
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v9, :cond_42

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v10, :cond_41

    const/16 v76, 0x1

    .local v76, "windowShouldResize":Z
    goto/16 :goto_a

    .end local v76    # "windowShouldResize":Z
    :cond_41
    const/16 v76, 0x0

    .restart local v76    # "windowShouldResize":Z
    goto/16 :goto_a

    .line 1959
    .end local v76    # "windowShouldResize":Z
    :cond_42
    const/16 v76, 0x0

    .restart local v76    # "windowShouldResize":Z
    goto/16 :goto_a

    .line 1955
    .end local v76    # "windowShouldResize":Z
    :cond_43
    const/16 v76, 0x0

    .restart local v76    # "windowShouldResize":Z
    goto/16 :goto_a

    .line 1961
    :cond_44
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 1972
    .local v76, "windowShouldResize":Z
    :cond_45
    const/16 v31, 0x1

    .local v31, "computesInternalInsets":Z
    goto/16 :goto_c

    .line 1981
    .end local v31    # "computesInternalInsets":Z
    .restart local v52    # "insetsPending":Z
    .restart local v63    # "relayoutResult":I
    .restart local v68    # "surfaceGenerationId":I
    .restart local v71    # "updatedConfiguration":Z
    :cond_46
    const/16 v54, 0x0

    .restart local v54    # "isViewVisible":Z
    goto/16 :goto_d

    .line 1983
    :cond_47
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 1982
    if-nez v4, :cond_2a

    .line 2357
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    .line 2360
    .end local v52    # "insetsPending":Z
    .end local v55    # "layoutRequested":Z
    :cond_48
    :goto_21
    if-eqz v55, :cond_82

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_81

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    move/from16 v34, v0

    .line 2361
    .local v34, "didLayout":Z
    :goto_22
    if-nez v34, :cond_83

    .line 2362
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    move/from16 v70, v0

    .line 2363
    :goto_23
    if-eqz v34, :cond_4c

    .line 2364
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v10}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    .line 2369
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_4c

    .line 2372
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2373
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    .line 2374
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v17, 0x0

    aget v12, v12, v17

    iget v0, v5, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    add-int v12, v12, v17

    iget v0, v5, Landroid/view/View;->mLeft:I

    move/from16 v17, v0

    sub-int v12, v12, v17

    .line 2375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    iget v0, v5, Landroid/view/View;->mBottom:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v5, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    .line 2373
    move/from16 v0, v17

    invoke-virtual {v4, v10, v11, v12, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 2377
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v4}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 2380
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_4a

    .line 2381
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v11, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Region;->translate(II)V

    .line 2383
    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_4b

    .line 2384
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 2387
    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 2388
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2389
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2392
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v4, v10, v11}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2405
    :cond_4c
    :goto_24
    if-eqz v70, :cond_4d

    .line 2406
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2407
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 2410
    :cond_4d
    if-eqz v31, :cond_4e

    .line 2412
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v50, v0

    .line 2413
    .local v50, "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 2416
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2417
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_84

    const/4 v4, 0x0

    :goto_25
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    .line 2420
    if-nez v52, :cond_85

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2445
    .end local v50    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_4e
    :goto_26
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_4f

    .line 2449
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_4f

    .line 2450
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 2451
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/view/View;->requestFocus(I)Z

    .line 2461
    :cond_4f
    if-nez v73, :cond_50

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_87

    :cond_50
    move/from16 v27, v54

    .line 2462
    :goto_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v4, :cond_88

    move/from16 v45, v54

    .line 2463
    .local v45, "hasWindowFocus":Z
    :goto_28
    if-eqz v45, :cond_89

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    move/from16 v62, v0

    .line 2464
    .local v62, "regainedFocus":Z
    :goto_29
    if-eqz v62, :cond_8a

    .line 2465
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    .line 2470
    :cond_51
    :goto_2a
    if-nez v27, :cond_52

    if-eqz v62, :cond_53

    .line 2472
    :cond_52
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_8b

    const/16 v53, 0x0

    .line 2474
    .local v53, "isToast":Z
    :goto_2b
    if-nez v53, :cond_53

    .line 2475
    const/16 v4, 0x20

    invoke-virtual {v5, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2479
    .end local v53    # "isToast":Z
    :cond_53
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 2480
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 2481
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 2482
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    .line 2483
    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 2484
    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    .line 2486
    if-eqz v45, :cond_54

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 2502
    :cond_54
    :goto_2c
    and-int/lit8 v4, v63, 0x2

    if-eqz v4, :cond_55

    .line 2503
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2506
    :cond_55
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v4

    if-nez v4, :cond_8f

    if-eqz v54, :cond_8f

    const/16 v26, 0x0

    .line 2508
    .local v26, "cancelDraw":Z
    :goto_2d
    if-nez v26, :cond_56

    if-eqz v57, :cond_90

    .line 2518
    :cond_56
    if-eqz v54, :cond_93

    .line 2520
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2529
    :cond_57
    :goto_2e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 1713
    return-void

    .line 1996
    .end local v26    # "cancelDraw":Z
    .end local v34    # "didLayout":Z
    .end local v45    # "hasWindowFocus":Z
    .end local v62    # "regainedFocus":Z
    .restart local v52    # "insetsPending":Z
    .restart local v55    # "layoutRequested":Z
    :cond_58
    const/16 v52, 0x1

    goto/16 :goto_e

    :cond_59
    const/16 v52, 0x0

    goto/16 :goto_e

    .line 2026
    .end local v52    # "insetsPending":Z
    .restart local v41    # "framesChanged":Z
    .restart local v43    # "hadSurface":Z
    .local v47, "hwInitialized":Z
    :cond_5a
    const/4 v4, 0x0

    goto/16 :goto_f

    .line 2040
    :cond_5b
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 2045
    :cond_5c
    const/16 v60, 0x1

    .restart local v60    # "overscanInsetsChanged":Z
    goto/16 :goto_11

    .line 2047
    :cond_5d
    const/16 v33, 0x1

    .restart local v33    # "contentInsetsChanged":Z
    goto/16 :goto_12

    .line 2049
    :cond_5e
    const/16 v74, 0x1

    .restart local v74    # "visibleInsetsChanged":Z
    goto/16 :goto_13

    .line 2051
    :cond_5f
    const/16 v66, 0x1

    .restart local v66    # "stableInsetsChanged":Z
    goto/16 :goto_14

    .line 2053
    :cond_60
    const/16 v59, 0x1

    .restart local v59    # "outsetsChanged":Z
    goto/16 :goto_15

    .line 2054
    :cond_61
    const/16 v69, 0x0

    .restart local v69    # "surfaceSizeChanged":Z
    goto/16 :goto_16

    .line 2057
    :cond_62
    const/16 v23, 0x0

    .restart local v23    # "alwaysConsumeNavBarChanged":Z
    goto/16 :goto_17

    .line 2082
    :cond_63
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 2081
    if-nez v4, :cond_34

    .line 2083
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-ne v4, v10, :cond_34

    .line 2081
    if-eqz v59, :cond_35

    goto/16 :goto_18

    .line 2101
    :cond_64
    const/16 v41, 0x1

    goto/16 :goto_19

    .line 2145
    .end local v41    # "framesChanged":Z
    .end local v47    # "hwInitialized":Z
    :catch_0
    move-exception v38

    .line 2146
    .local v38, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 2147
    return-void

    .line 2151
    .end local v38    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v47    # "hwInitialized":Z
    :cond_65
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_69

    .line 2154
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_66

    .line 2155
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2157
    :cond_66
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 2158
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v4, v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_67

    .line 2159
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v4, v10}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 2161
    :cond_67
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_68

    .line 2162
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2165
    :cond_68
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_39

    .line 2166
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v4

    .line 2165
    if-eqz v4, :cond_39

    .line 2167
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 2168
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "mHardwareRenderer.destroy()#3"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 2218
    .end local v23    # "alwaysConsumeNavBarChanged":Z
    .end local v33    # "contentInsetsChanged":Z
    .end local v47    # "hwInitialized":Z
    .end local v59    # "outsetsChanged":Z
    .end local v60    # "overscanInsetsChanged":Z
    .end local v66    # "stableInsetsChanged":Z
    .end local v69    # "surfaceSizeChanged":Z
    .end local v74    # "visibleInsetsChanged":Z
    :catch_1
    move-exception v37

    .local v37, "e":Landroid/os/RemoteException;
    goto/16 :goto_1f

    .line 2170
    .end local v37    # "e":Landroid/os/RemoteException;
    .restart local v23    # "alwaysConsumeNavBarChanged":Z
    .restart local v33    # "contentInsetsChanged":Z
    .restart local v47    # "hwInitialized":Z
    .restart local v59    # "outsetsChanged":Z
    .restart local v60    # "overscanInsetsChanged":Z
    .restart local v66    # "stableInsetsChanged":Z
    .restart local v69    # "surfaceSizeChanged":Z
    .restart local v74    # "visibleInsetsChanged":Z
    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v68

    if-ne v0, v4, :cond_6a

    if-eqz v69, :cond_39

    .line 2172
    :cond_6a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_39

    .line 2173
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_39

    .line 2174
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2184
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V

    .line 2185
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "mHardwareRenderer.updateSurface() mSurface={%s}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isValid="

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Surface;->isValid()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/view/Surface;->mNativeObject:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v11, v17

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1a

    .line 2186
    :catch_2
    move-exception v38

    .line 2187
    .restart local v38    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 2188
    return-void

    .line 2192
    .end local v38    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v47    # "hwInitialized":Z
    :cond_6b
    const/16 v42, 0x0

    .restart local v42    # "freeformResizing":Z
    goto/16 :goto_1b

    .line 2194
    :cond_6c
    const/16 v35, 0x0

    .restart local v35    # "dockedResizing":Z
    goto/16 :goto_1c

    .line 2196
    :cond_6d
    const/16 v36, 0x1

    .local v36, "dragResizing":Z
    goto/16 :goto_1d

    .line 2201
    .end local v36    # "dragResizing":Z
    :cond_6e
    const/4 v4, 0x1

    goto/16 :goto_1e

    .line 2207
    :cond_6f
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1f

    .line 2257
    .end local v23    # "alwaysConsumeNavBarChanged":Z
    .end local v33    # "contentInsetsChanged":Z
    .end local v35    # "dockedResizing":Z
    .end local v42    # "freeformResizing":Z
    .end local v59    # "outsetsChanged":Z
    .end local v60    # "overscanInsetsChanged":Z
    .end local v66    # "stableInsetsChanged":Z
    .end local v69    # "surfaceSizeChanged":Z
    .end local v74    # "visibleInsetsChanged":Z
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_70
    const/16 v67, 0x1

    .line 2259
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_71
    if-nez v67, :cond_72

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v68

    if-eq v0, v4, :cond_73

    .line 2260
    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 2261
    iget v11, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v17, v0

    .line 2260
    move/from16 v0, v17

    invoke-interface {v4, v10, v11, v12, v0}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 2262
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "ViewRootImpl >> surfaceChanged W=%d, H=%d)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v11, v17

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v11, v17

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 2264
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v25, :cond_73

    .line 2265
    const/4 v4, 0x0

    move-object/from16 v0, v25

    array-length v10, v0

    :goto_2f
    if-ge v4, v10, :cond_73

    aget-object v24, v25, v4

    .line 2266
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2267
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v18, v0

    .line 2266
    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v11, v12, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 2265
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 2271
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_73
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 2291
    :cond_74
    :goto_30
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v44, v0

    .line 2292
    .local v44, "hardwareRenderer":Landroid/view/ThreadedRenderer;
    if-eqz v44, :cond_76

    invoke-virtual/range {v44 .. v44}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 2293
    if-nez v47, :cond_75

    .line 2294
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v44 .. v44}, Landroid/view/ThreadedRenderer;->getWidth()I

    move-result v10

    if-eq v4, v10, :cond_7e

    .line 2297
    :cond_75
    :goto_31
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2298
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2297
    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 2299
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNeedsHwRendererSetup:Z

    .line 2303
    :cond_76
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_77

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_48

    .line 2305
    :cond_77
    and-int/lit8 v4, v63, 0x1

    if-eqz v4, :cond_7f

    const/4 v4, 0x1

    .line 2304
    :goto_32
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v39

    .line 2306
    .local v39, "focusChangedDueToTouchMode":Z
    if-nez v39, :cond_78

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v4, v10, :cond_80

    .line 2309
    :cond_78
    :goto_33
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v29

    .line 2310
    .local v29, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v28

    .line 2319
    .local v28, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 2324
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v75

    .line 2325
    .local v75, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v46

    .line 2326
    .local v46, "height":I
    const/16 v56, 0x0

    .line 2328
    .local v56, "measureAgain":Z
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_79

    .line 2329
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int v4, v4, v75

    int-to-float v4, v4

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int v75, v75, v4

    .line 2331
    const/high16 v4, 0x40000000    # 2.0f

    .line 2330
    move/from16 v0, v75

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 2332
    const/16 v56, 0x1

    .line 2334
    :cond_79
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_7a

    .line 2335
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int v4, v4, v46

    int-to-float v4, v4

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int v46, v46, v4

    .line 2337
    const/high16 v4, 0x40000000    # 2.0f

    .line 2336
    move/from16 v0, v46

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .line 2338
    const/16 v56, 0x1

    .line 2341
    :cond_7a
    if-eqz v56, :cond_7b

    .line 2345
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 2348
    :cond_7b
    const/16 v55, 0x1

    .local v55, "layoutRequested":Z
    goto/16 :goto_21

    .line 2272
    .end local v28    # "childHeightMeasureSpec":I
    .end local v29    # "childWidthMeasureSpec":I
    .end local v39    # "focusChangedDueToTouchMode":Z
    .end local v44    # "hardwareRenderer":Landroid/view/ThreadedRenderer;
    .end local v46    # "height":I
    .end local v56    # "measureAgain":Z
    .end local v75    # "width":I
    .local v55, "layoutRequested":Z
    :cond_7c
    if-eqz v43, :cond_74

    .line 2273
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2274
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 2275
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "ViewRootImpl >> surfaceDestroyed"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    if-eqz v25, :cond_7d

    .line 2278
    const/4 v4, 0x0

    move-object/from16 v0, v25

    array-length v10, v0

    :goto_34
    if-ge v4, v10, :cond_7d

    aget-object v24, v25, v4

    .line 2279
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2278
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 2282
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_7d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2284
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2286
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_30

    .line 2285
    :catchall_0
    move-exception v4

    .line 2286
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v10, v10, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2285
    throw v4

    .line 2295
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v44    # "hardwareRenderer":Landroid/view/ThreadedRenderer;
    :cond_7e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v44 .. v44}, Landroid/view/ThreadedRenderer;->getHeight()I

    move-result v10

    if-ne v4, v10, :cond_75

    .line 2296
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNeedsHwRendererSetup:Z

    .line 2293
    if-eqz v4, :cond_76

    goto/16 :goto_31

    .line 2305
    :cond_7f
    const/4 v4, 0x0

    goto/16 :goto_32

    .line 2307
    .restart local v39    # "focusChangedDueToTouchMode":Z
    :cond_80
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-ne v4, v10, :cond_78

    .line 2306
    if-nez v41, :cond_78

    if-eqz v71, :cond_48

    goto/16 :goto_33

    .line 2360
    .end local v39    # "focusChangedDueToTouchMode":Z
    .end local v43    # "hadSurface":Z
    .end local v44    # "hardwareRenderer":Landroid/view/ThreadedRenderer;
    .end local v55    # "layoutRequested":Z
    :cond_81
    const/16 v34, 0x1

    goto/16 :goto_22

    :cond_82
    const/16 v34, 0x0

    goto/16 :goto_22

    .line 2361
    .restart local v34    # "didLayout":Z
    :cond_83
    const/16 v70, 0x1

    .local v70, "triggerGlobalLayoutListener":Z
    goto/16 :goto_23

    .line 2417
    .end local v70    # "triggerGlobalLayoutListener":Z
    .restart local v50    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_84
    const/4 v4, 0x1

    goto/16 :goto_25

    .line 2421
    :cond_85
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_86

    .line 2428
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v50

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 2429
    .local v13, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v50

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v14

    .line 2430
    .local v14, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v50

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v15

    .line 2438
    .local v15, "touchableRegion":Landroid/graphics/Region;
    :goto_35
    :try_start_8
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, v50

    iget v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    invoke-interface/range {v10 .. v15}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_26

    .line 2440
    :catch_3
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_26

    .line 2432
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v37    # "e":Landroid/os/RemoteException;
    :cond_86
    move-object/from16 v0, v50

    iget-object v13, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 2433
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v50

    iget-object v14, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 2434
    .restart local v14    # "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v50

    iget-object v15, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .restart local v15    # "touchableRegion":Landroid/graphics/Region;
    goto :goto_35

    .line 2461
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v50    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_87
    const/16 v27, 0x0

    .local v27, "changedVisibility":Z
    goto/16 :goto_27

    .line 2462
    .end local v27    # "changedVisibility":Z
    :cond_88
    const/16 v45, 0x0

    goto/16 :goto_28

    .line 2463
    .restart local v45    # "hasWindowFocus":Z
    :cond_89
    const/16 v62, 0x0

    goto/16 :goto_29

    .line 2466
    .restart local v62    # "regainedFocus":Z
    :cond_8a
    if-nez v45, :cond_51

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    if-eqz v4, :cond_51

    .line 2467
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    goto/16 :goto_2a

    .line 2473
    :cond_8b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7d5

    if-ne v4, v10, :cond_8c

    const/16 v53, 0x1

    goto/16 :goto_2b

    :cond_8c
    const/16 v53, 0x0

    goto/16 :goto_2b

    .line 2488
    :cond_8d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2487
    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v49

    .line 2489
    .local v49, "imTarget":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    move/from16 v0, v49

    if-eq v0, v4, :cond_54

    .line 2490
    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2491
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .line 2492
    .local v16, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_54

    if-eqz v49, :cond_54

    .line 2493
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, v16

    move/from16 v1, v45

    invoke-virtual {v0, v4, v1}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v18

    .line 2495
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v19, v0

    .line 2496
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-eqz v4, :cond_8e

    const/16 v20, 0x0

    :goto_36
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v21, v0

    .line 2494
    invoke-virtual/range {v16 .. v21}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    goto/16 :goto_2c

    .line 2496
    :cond_8e
    const/16 v20, 0x1

    goto :goto_36

    .line 2506
    .end local v16    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v49    # "imTarget":Z
    :cond_8f
    const/16 v26, 0x1

    goto/16 :goto_2d

    .line 2509
    .restart local v26    # "cancelDraw":Z
    :cond_90
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_92

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_92

    .line 2510
    const/16 v48, 0x0

    .restart local v48    # "i":I
    :goto_37
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v48

    if-ge v0, v4, :cond_91

    .line 2511
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 2510
    add-int/lit8 v48, v48, 0x1

    goto :goto_37

    .line 2513
    :cond_91
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2516
    .end local v48    # "i":I
    :cond_92
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    goto/16 :goto_2e

    .line 2521
    :cond_93
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_57

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_57

    .line 2522
    const/16 v48, 0x0

    .restart local v48    # "i":I
    :goto_38
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v48

    if-ge v0, v4, :cond_94

    .line 2523
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 2522
    add-int/lit8 v48, v48, 0x1

    goto :goto_38

    .line 2525
    :cond_94
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2e

    .line 2393
    .end local v26    # "cancelDraw":Z
    .end local v45    # "hasWindowFocus":Z
    .end local v48    # "i":I
    .end local v62    # "regainedFocus":Z
    :catch_4
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_24
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .prologue
    const/4 v1, 0x0

    .line 7538
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_0

    .line 7540
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;)V

    .line 7539
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 7542
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    .line 7537
    return-void
.end method

.method private processDirectPenInputKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5163
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 5164
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 5165
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5166
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v0

    .line 5167
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->semGetDirectPenInputInstance(Z)Lcom/samsung/android/directpeninput/SemDirectPenInput;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5168
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 5169
    invoke-virtual {v0, v3}, Landroid/view/View;->semGetDirectPenInputInstance(Z)Lcom/samsung/android/directpeninput/SemDirectPenInput;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismiss(Z)V

    .line 5171
    :cond_1
    return v4

    .line 5174
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    return v3
.end method

.method private profileRendering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2847
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_2

    .line 2848
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 2850
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    .line 2851
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2853
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    if-eqz v0, :cond_3

    .line 2854
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_1

    .line 2855
    new-instance v0, Landroid/view/ViewRootImpl$4;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 2866
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2846
    :cond_2
    :goto_0
    return-void

    .line 2868
    :cond_3
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v0, 0x0

    .line 6853
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 6854
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 6856
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 6857
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 6858
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6859
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6852
    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 22
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "viewVisibility"    # I
    .param p3, "insetsPending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6393
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v19, v0

    .line 6394
    .local v19, "appScale":F
    const/16 v21, 0x0

    .line 6395
    .local v21, "restore":Z
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_0

    .line 6396
    const/16 v21, 0x1

    .line 6397
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 6398
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 6400
    :cond_0
    if-eqz p1, :cond_1

    .line 6403
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 6405
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_2

    .line 6407
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 6408
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6409
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 6408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6410
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6414
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 6415
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 6416
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v19

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v5, v4

    .line 6417
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v19

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v6, v4

    .line 6418
    if-eqz p3, :cond_5

    const/4 v8, 0x1

    .line 6419
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 6420
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    .line 6421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    move-object/from16 v4, p1

    move/from16 v7, p2

    .line 6414
    invoke-interface/range {v1 .. v18}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;)I

    move-result v20

    .line 6424
    .local v20, "relayoutResult":I
    and-int/lit8 v1, v20, 0x40

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    .line 6423
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    .line 6427
    if-eqz v21, :cond_3

    .line 6428
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 6431
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_4

    .line 6432
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 6433
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6434
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6435
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6436
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6438
    :cond_4
    return v20

    .line 6418
    .end local v20    # "relayoutResult":I
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 6424
    .restart local v20    # "relayoutResult":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    .prologue
    .line 7550
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 7551
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7549
    :cond_0
    return-void
.end method

.method private requestDrawWindow()V
    .locals 3

    .prologue
    .line 8202
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v1, :cond_0

    .line 8203
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 8205
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 8206
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    invoke-interface {v1, v2}, Landroid/view/WindowCallbacks;->onRequestDraw(Z)V

    .line 8205
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8201
    :cond_1
    return-void
.end method

.method private resetPointerIcon(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5179
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    .line 5180
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    .line 5178
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6897
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v1, :cond_0

    .line 6898
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 6899
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6900
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6901
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6896
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendUserActionEvent()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 8292
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v6, :cond_0

    .line 8293
    const-string/jumbo v6, "ViewRootImpl"

    const-string/jumbo v7, "sendUserActionEvent() mView == null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8294
    return-void

    .line 8297
    :cond_0
    const-string/jumbo v3, "0"

    .line 8298
    .local v3, "userEventsim1":Ljava/lang/String;
    const-string/jumbo v4, "0"

    .line 8300
    .local v4, "userEventsim2":Ljava/lang/String;
    const-string/jumbo v6, "gsm.sim.userEvent"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8302
    .local v2, "prop":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 8303
    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 8304
    .local v5, "values":[Ljava/lang/String;
    array-length v6, v5

    if-lez v6, :cond_1

    aget-object v6, v5, v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8307
    :cond_1
    :goto_0
    array-length v6, v5

    if-ge v8, v6, :cond_2

    aget-object v6, v5, v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 8312
    .end local v5    # "values":[Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8313
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/4 v6, 0x4

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    .line 8314
    .local v0, "catEventUserActivity":Lcom/android/internal/telephony/cat/CatEventDownload;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.intent.action.stk.event"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8315
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "STK EVENT"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8316
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8291
    .end local v0    # "catEventUserActivity":Lcom/android/internal/telephony/cat/CatEventDownload;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 8305
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_5
    aget-object v3, v5, v7

    goto :goto_0

    .line 8308
    :cond_6
    aget-object v4, v5, v8

    goto :goto_1
.end method

.method private setSTS(Landroid/content/pm/PackageInfo;)V
    .locals 2
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 730
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->stsOption:D

    sput-wide v0, Landroid/view/ViewRootImpl;->sSTSOption:D

    .line 728
    return-void
.end method

.method private setTag()V
    .locals 3

    .prologue
    .line 980
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewRootImpl@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 979
    :cond_0
    return-void
.end method

.method private static shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 1703
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7de

    if-eq v1, v2, :cond_0

    .line 1704
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    if-ne v1, v2, :cond_1

    .line 1703
    :cond_0
    :goto_0
    return v0

    .line 1705
    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "initialBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;
    .param p5, "resizeMode"    # I

    .prologue
    const/4 v7, 0x1

    .line 8167
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-nez v0, :cond_1

    .line 8168
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 8169
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 8170
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowCallbacks;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowCallbacks;->onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 8169
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 8173
    :cond_0
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 8166
    .end local v6    # "i":I
    :cond_1
    return-void
.end method

.method private trackFPS()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2880
    .local v4, "nowTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 2881
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 2882
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 2876
    :cond_0
    :goto_0
    return-void

    .line 2884
    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 2885
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2886
    .local v1, "thisHash":Ljava/lang/String;
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v2, v4, v8

    .line 2887
    .local v2, "frameTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v4, v8

    .line 2888
    .local v6, "totalTime":J
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 2890
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 2891
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float v0, v8, v9

    .line 2892
    .local v0, "fps":F
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\tFPS:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 2894
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0
.end method

.method private updateContentDrawBounds()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 8191
    const/4 v1, 0x0

    .line 8192
    .local v1, "updated":Z
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .end local v1    # "updated":Z
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 8193
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowCallbacks;

    .line 8194
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 8195
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 8196
    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 8193
    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowCallbacks;->onContentDrawn(IIII)Z

    move-result v2

    or-int/2addr v1, v2

    .line 8192
    .local v1, "updated":Z
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8198
    .end local v1    # "updated":Z
    :cond_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    :goto_1
    or-int/2addr v2, v1

    return v2

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private updatePointerIcon(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 5189
    const/4 v1, 0x0

    .line 5190
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 5191
    .local v3, "x":F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 5192
    .local v4, "y":F
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mMotionEvent:Landroid/view/MotionEvent;

    .line 5193
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v5, :cond_0

    .line 5195
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "updatePointerIcon called after view was removed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5196
    return v7

    .line 5198
    :cond_0
    cmpg-float v5, v3, v6

    if-ltz v5, :cond_1

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_2

    .line 5200
    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "updatePointerIcon called with position out of bounds"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5201
    return v7

    .line 5198
    :cond_2
    cmpg-float v5, v4, v6

    if-ltz v5, :cond_1

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-gez v5, :cond_1

    .line 5203
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, p1, v7}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    .line 5204
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v0, :cond_4

    .line 5205
    invoke-virtual {v0}, Landroid/view/PointerIcon;->getType()I

    move-result v2

    .line 5207
    .local v2, "pointerType":I
    :goto_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 5219
    :cond_3
    :goto_1
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-eq v5, v2, :cond_6

    .line 5220
    iput v2, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    .line 5221
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-eq v5, v9, :cond_6

    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/16 v6, 0x4e20

    if-eq v5, v6, :cond_6

    .line 5222
    iput-object v8, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 5223
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 5224
    return v10

    .line 5205
    .end local v2    # "pointerType":I
    :cond_4
    const/16 v2, 0x3e8

    .restart local v2    # "pointerType":I
    goto :goto_0

    .line 5213
    :cond_5
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 5214
    const/16 v5, 0x3e8

    if-ne v2, v5, :cond_3

    .line 5215
    const/16 v2, 0x4e21

    goto :goto_1

    .line 5228
    :cond_6
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-eq v5, v9, :cond_7

    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/16 v6, 0x4e20

    if-ne v5, v6, :cond_8

    .line 5229
    :cond_7
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v0, v5}, Landroid/view/PointerIcon;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5233
    :cond_8
    :goto_2
    return v10

    .line 5230
    :cond_9
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 5231
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    goto :goto_2
.end method


# virtual methods
.method public addWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowCallbacks;

    .prologue
    .line 646
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 647
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 644
    return-void

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1437
    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    .prologue
    .line 7731
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    .prologue
    .line 7761
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    .prologue
    .line 7746
    const/4 v0, 0x1

    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7259
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7262
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7263
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    .line 7258
    return-void
.end method

.method changeCanvasOpacity(Z)V
    .locals 3
    .param p1, "opaque"    # Z

    .prologue
    .line 7894
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeCanvasOpacity: opaque="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7895
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 7896
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 7893
    :cond_0
    return-void
.end method

.method checkThread()V
    .locals 2

    .prologue
    .line 7808
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7809
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    .line 7810
    const-string/jumbo v1, "Only the original thread that created a view hierarchy can touch its views."

    .line 7809
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7807
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7581
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    .prologue
    .line 7839
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3618
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3619
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3614
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 7577
    return-void
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 6503
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 6502
    return-void
.end method

.method destroyHardwareResources()V
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 1006
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 1007
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "mHardwareRenderer.destroy()#1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 1
    .param p1, "functor"    # J

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->stopDrawing()V

    .line 1031
    :cond_0
    return-void
.end method

.method die(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 6588
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-eqz v0, :cond_1

    .line 6593
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez v0, :cond_2

    .line 6594
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 6599
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6600
    const/4 v0, 0x1

    return v0

    .line 6589
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 6590
    const/4 v0, 0x0

    return v0

    .line 6596
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6597
    const-string/jumbo v2, ", title="

    .line 6596
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6597
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 6596
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 7305
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7306
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7307
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7304
    return-void

    .line 7306
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dispatchApplyInsets(Landroid/view/View;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 1699
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1698
    return-void
.end method

.method public dispatchAttachedDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 8223
    const-string/jumbo v2, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Window("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8224
    const-string/jumbo v3, " "

    .line 8223
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8224
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ADDED"

    .line 8223
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8225
    const-string/jumbo v3, "). Attached display has changed to d"

    .line 8223
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8227
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8228
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 8229
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8220
    return-void

    .line 8224
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const-string/jumbo v1, "NOT-ADDED"

    goto :goto_0
.end method

.method public dispatchCheckFocus()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 7367
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7369
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7366
    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7328
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7329
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7330
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7331
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7327
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3661
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mRequestLayoutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3663
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 3664
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 3665
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3668
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 3669
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3670
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 3669
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 3671
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3672
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 3671
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    .line 3673
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 3675
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 3677
    invoke-virtual {p0, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3679
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3680
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3681
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 3682
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "dispatchDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 3686
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 3688
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v1, :cond_2

    .line 3689
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 3690
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v1}, Landroid/view/InputQueue;->dispose()V

    .line 3691
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 3692
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 3694
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v1, :cond_3

    .line 3695
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    .line 3696
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 3699
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3705
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_4

    .line 3706
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 3707
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 3710
    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 3715
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mMotionEvent:Landroid/view/MotionEvent;

    .line 3717
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 3660
    return-void

    .line 3700
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 7336
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 7337
    const/16 v1, 0x10

    .line 7338
    .local v1, "what":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 7342
    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7343
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7334
    return-void

    .line 7340
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "what":I
    :cond_0
    const/16 v1, 0xf

    .restart local v1    # "what":I
    goto :goto_0
.end method

.method public dispatchGetNewSurface()V
    .locals 3

    .prologue
    .line 7311
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7312
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7310
    return-void
.end method

.method public dispatchHighTextContrastChange(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 8286
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8287
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 8288
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8285
    return-void

    .line 8287
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 7267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    .line 7266
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .prologue
    .line 7271
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 7272
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 7273
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 7274
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7275
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7276
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7270
    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMilliseconds"    # J

    .prologue
    .line 7240
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7241
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7239
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7251
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    .line 7250
    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 4
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;
    .param p2, "delayMilliseconds"    # J

    .prologue
    .line 7246
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7247
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7245
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .prologue
    .line 7255
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 7254
    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 7286
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7287
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7288
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7285
    return-void
.end method

.method public dispatchMoved(II)V
    .locals 6
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 6751
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    .line 6752
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6753
    .local v1, "point":Landroid/graphics/PointF;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 6754
    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p1, v2

    .line 6755
    iget v2, v1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p2, v2

    .line 6757
    .end local v1    # "point":Landroid/graphics/PointF;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 6758
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6749
    return-void
.end method

.method public dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .prologue
    .line 7527
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 7528
    const/16 v1, 0x1a

    const/4 v2, 0x0

    .line 7527
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7526
    return-void
.end method

.method public dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;ZZ)V
    .locals 9
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;
    .param p9, "backDropFrame"    # Landroid/graphics/Rect;
    .param p10, "forceLayout"    # Z
    .param p11, "alwaysConsumeNavBar"    # Z

    .prologue
    .line 6703
    if-eqz p7, :cond_0

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v6, :cond_0

    .line 6704
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 6705
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 6706
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 6707
    const-string/jumbo v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dispatchResized mReportNextDraw cancel... mWinFrame : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6708
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 6707
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6708
    const-string/jumbo v8, "  frame : "

    .line 6707
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6708
    const-string/jumbo v8, " window "

    .line 6707
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6708
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    .line 6707
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6709
    const-string/jumbo v8, " handler="

    .line 6707
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6709
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 6707
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6716
    :cond_0
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v6, :cond_2

    .line 6717
    move-object/from16 v0, p9

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 6718
    .local v2, "fullscreen":Z
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v7

    .line 6719
    :try_start_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 6720
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowCallbacks;

    move-object/from16 v0, p9

    invoke-interface {v6, v0, v2, p4, p5}, Landroid/view/WindowCallbacks;->onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6719
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v7

    .line 6726
    .end local v2    # "fullscreen":Z
    .end local v3    # "i":I
    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p7, :cond_c

    const/4 v6, 0x5

    :goto_1
    invoke-virtual {v7, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 6727
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_3

    .line 6728
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6729
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6730
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6731
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6733
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 6734
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v6, v7, :cond_d

    const/4 v5, 0x1

    .line 6735
    .local v5, "sameProcessCall":Z
    :goto_2
    if-eqz v5, :cond_4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v6

    .end local p1    # "frame":Landroid/graphics/Rect;
    :cond_4
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6736
    if-eqz v5, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p3, v6

    .end local p3    # "contentInsets":Landroid/graphics/Rect;
    :cond_5
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 6737
    if-eqz v5, :cond_6

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p4, v6

    .end local p4    # "visibleInsets":Landroid/graphics/Rect;
    :cond_6
    iput-object p4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 6738
    if-eqz v5, :cond_7

    if-eqz p8, :cond_7

    new-instance v6, Landroid/content/res/Configuration;

    move-object/from16 v0, p8

    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 p8, v6

    .end local p8    # "newConfig":Landroid/content/res/Configuration;
    :cond_7
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 6739
    if-eqz v5, :cond_8

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p2, v6

    .end local p2    # "overscanInsets":Landroid/graphics/Rect;
    :cond_8
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 6740
    if-eqz v5, :cond_9

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p5, v6

    .end local p5    # "stableInsets":Landroid/graphics/Rect;
    :cond_9
    iput-object p5, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 6741
    if-eqz v5, :cond_a

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p6, v6

    .end local p6    # "outsets":Landroid/graphics/Rect;
    :cond_a
    iput-object p6, v1, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 6742
    if-eqz v5, :cond_b

    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v0, p9

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 p9, v6

    .end local p9    # "backDropFrame":Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p9

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    .line 6743
    if-eqz p10, :cond_e

    const/4 v6, 0x1

    :goto_3
    iput v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 6744
    if-eqz p11, :cond_f

    const/4 v6, 0x1

    :goto_4
    iput v6, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 6745
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6746
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v6, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6695
    return-void

    .line 6718
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "sameProcessCall":Z
    .restart local v2    # "fullscreen":Z
    .restart local p1    # "frame":Landroid/graphics/Rect;
    .restart local p2    # "overscanInsets":Landroid/graphics/Rect;
    .restart local p3    # "contentInsets":Landroid/graphics/Rect;
    .restart local p4    # "visibleInsets":Landroid/graphics/Rect;
    .restart local p5    # "stableInsets":Landroid/graphics/Rect;
    .restart local p6    # "outsets":Landroid/graphics/Rect;
    .restart local p8    # "newConfig":Landroid/content/res/Configuration;
    .restart local p9    # "backDropFrame":Landroid/graphics/Rect;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 6726
    .end local v2    # "fullscreen":Z
    :cond_c
    const/4 v6, 0x4

    goto/16 :goto_1

    .line 6734
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v4    # "msg":Landroid/os/Message;
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "sameProcessCall":Z
    goto :goto_2

    .line 6743
    .end local p1    # "frame":Landroid/graphics/Rect;
    .end local p2    # "overscanInsets":Landroid/graphics/Rect;
    .end local p3    # "contentInsets":Landroid/graphics/Rect;
    .end local p4    # "visibleInsets":Landroid/graphics/Rect;
    .end local p5    # "stableInsets":Landroid/graphics/Rect;
    .end local p6    # "outsets":Landroid/graphics/Rect;
    .end local p8    # "newConfig":Landroid/content/res/Configuration;
    .end local p9    # "backDropFrame":Landroid/graphics/Rect;
    :cond_e
    const/4 v6, 0x0

    goto :goto_3

    .line 6744
    :cond_f
    const/4 v6, 0x0

    goto :goto_4
.end method

.method public dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 3
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 7504
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    if-eqz v0, :cond_0

    .line 7505
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    .line 7503
    :goto_0
    return-void

    .line 7507
    :cond_0
    const-string/jumbo v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchSmartClipRemoteRequest : SmartClip dispatcher is null! req id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    .prologue
    .line 7358
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 7359
    .local v0, "args":Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 7360
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 7361
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 7362
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 7363
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7357
    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 7298
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 7299
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 7301
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    .line 7297
    return-void
.end method

.method public dispatchWindowShown()V
    .locals 2

    .prologue
    .line 7324
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7323
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 7071
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_1

    .line 7072
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7073
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_0

    .line 7074
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7075
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 7081
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 7084
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 7070
    :cond_1
    return-void
.end method

.method doDie()V
    .locals 5

    .prologue
    .line 6604
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6606
    monitor-enter p0

    .line 6607
    :try_start_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    .line 6608
    return-void

    .line 6610
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    .line 6611
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_1

    .line 6612
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 6615
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v3, :cond_3

    .line 6638
    :cond_2
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 6640
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->removeRootContext()V

    .line 6641
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    .line 6603
    return-void

    .line 6616
    :cond_3
    :try_start_2
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 6618
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 6619
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 6620
    .local v1, "viewVisibility":I
    iget v3, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v3, v1, :cond_6

    const/4 v2, 0x1

    .line 6621
    .local v2, "viewVisibilityChanged":Z
    :goto_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    .line 6626
    :cond_4
    :try_start_3
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 6628
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6634
    :cond_5
    :goto_2
    :try_start_4
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 6606
    .end local v1    # "viewVisibility":I
    .end local v2    # "viewVisibilityChanged":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6620
    .restart local v1    # "viewVisibility":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "viewVisibilityChanged":Z
    goto :goto_1

    .line 6630
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method doProcessInputEvents()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 6907
    :goto_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v6, :cond_2

    .line 6908
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6909
    .local v3, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6910
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v6, :cond_0

    .line 6911
    iput-object v10, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6913
    :cond_0
    iput-object v10, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6915
    iget v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 6916
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 6917
    iget v7, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 6916
    const-wide/16 v8, 0x4

    invoke-static {v8, v9, v6, v7}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 6919
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v6}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v0

    .line 6920
    .local v0, "eventTime":J
    move-wide v4, v0

    .line 6921
    .local v4, "oldestEventTime":J
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v6, v6, Landroid/view/MotionEvent;

    if-eqz v6, :cond_1

    .line 6922
    iget-object v2, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/MotionEvent;

    .line 6923
    .local v2, "me":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    if-lez v6, :cond_1

    .line 6924
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    move-result-wide v4

    .line 6927
    .end local v2    # "me":Landroid/view/MotionEvent;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v6, v6, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    .line 6929
    invoke-direct {p0, v3}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 6934
    .end local v0    # "eventTime":J
    .end local v3    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    .end local v4    # "oldestEventTime":J
    :cond_2
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v6, :cond_3

    .line 6935
    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 6936
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 6905
    :cond_3
    return-void
.end method

.method doTraversal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1507
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_1

    .line 1508
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1509
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1511
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_0

    .line 1512
    const-string/jumbo v0, "ViewAncestor"

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 1515
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    .line 1517
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_1

    .line 1518
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1519
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1506
    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 6507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6508
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "ViewRoot:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6509
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mAdded="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6510
    const-string/jumbo v1, " mRemoved="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6511
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6512
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6513
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputImmediatelyScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6514
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6515
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingInputEventCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6516
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 6517
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mProcessInputEventsScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6518
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6519
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6520
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6521
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsAmbientMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6522
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6523
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_0

    .line 6524
    const-string/jumbo v1, " (barrier="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, ")"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6528
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6530
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6532
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6533
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p3, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 6506
    return-void

    .line 6526
    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public dumpGfxInfo([I)V
    .locals 2
    .param p1, "info"    # [I

    .prologue
    const/4 v1, 0x0

    .line 6558
    const/4 v0, 0x1

    aput v1, p1, v0

    aput v1, p1, v1

    .line 6559
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6560
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 6557
    :cond_0
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v1, 0x0

    .line 6864
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 6863
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I
    .param p4, "processImmediately"    # Z

    .prologue
    .line 6869
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    .line 6870
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object v1

    .line 6877
    .local v1, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6878
    .local v0, "last":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v0, :cond_0

    .line 6879
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6880
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6885
    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 6886
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 6887
    iget v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 6886
    const-wide/16 v4, 0x4

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 6889
    if-eqz p4, :cond_1

    .line 6890
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 6868
    :goto_1
    return-void

    .line 6882
    :cond_0
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6883
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 6892
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    goto :goto_1
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 4251
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 4255
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4261
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v1

    return v1

    .line 4256
    :catch_0
    move-exception v0

    .line 4257
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 6495
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6496
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 6497
    const/4 v0, 0x0

    return-object v0

    .line 6499
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3629
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3630
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3631
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3632
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3628
    :cond_0
    :goto_0
    return-void

    .line 3637
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3638
    .local v0, "focused":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 3639
    check-cast v1, Landroid/view/ViewGroup;

    .line 3640
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_0

    .line 3641
    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    .line 3640
    if-eqz v2, :cond_0

    .line 3642
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    .prologue
    .line 3545
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 3552
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    .prologue
    .line 6380
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 6381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6384
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_1

    .line 6385
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 6387
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 1428
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 1429
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1433
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method public getCurrentDirectPenInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 8696
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDirectPenInputView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 1443
    :try_start_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    return v1

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1446
    return v1
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .prologue
    .line 6355
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 6356
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 6354
    return-void
.end method

.method public getLastTouchSource()I
    .locals 1

    .prologue
    .line 6360
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 7741
    const/4 v0, 0x0

    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;
    .locals 1

    .prologue
    .line 8689
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1423
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 3624
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    .prologue
    .line 7771
    const/4 v0, 0x1

    return v0
.end method

.method public getTextDirection()I
    .locals 1

    .prologue
    .line 7756
    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowFlags()I
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method getWindowInsets(Z)Landroid/view/WindowInsets;
    .locals 10
    .param p1, "forceConstruct"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1671
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_4

    .line 1672
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1673
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1674
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 1675
    .local v1, "contentInsets":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 1678
    .local v3, "stableInsets":Landroid/graphics/Rect;
    if-nez p1, :cond_1

    .line 1679
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1680
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1684
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 1685
    .local v7, "outsets":Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_2

    iget v0, v7, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_6

    .line 1686
    :cond_2
    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    .line 1687
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v8

    .line 1688
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    .line 1686
    invoke-direct {v6, v0, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    .local v6, "contentInsets":Landroid/graphics/Rect;
    move-object v1, v6

    .line 1690
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .restart local v1    # "contentInsets":Landroid/graphics/Rect;
    :cond_3
    new-instance v0, Landroid/view/WindowInsets;

    .line 1692
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v4

    .line 1693
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    .line 1690
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    .line 1695
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    .end local v3    # "stableInsets":Landroid/graphics/Rect;
    .end local v7    # "outsets":Landroid/graphics/Rect;
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    return-object v0

    .line 1681
    .restart local v1    # "contentInsets":Landroid/graphics/Rect;
    .restart local v3    # "stableInsets":Landroid/graphics/Rect;
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 1682
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    goto :goto_0

    .line 1685
    .restart local v7    # "outsets":Landroid/graphics/Rect;
    :cond_6
    iget v0, v7, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_2

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_3

    goto :goto_1
.end method

.method handleAppVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1203
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_1

    .line 1204
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 1206
    iget v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1207
    const-string/jumbo v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAppVisibility() force relayout and redraw for same visibility window : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 1209
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 1212
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1213
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_1

    .line 1214
    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    .line 1202
    :cond_1
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 4
    .param p1, "args"    # Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .prologue
    .line 6300
    iget v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v1, v2, :cond_0

    .line 6304
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 6305
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 6306
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 6308
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    .line 6309
    :cond_1
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v1, :cond_2

    .line 6310
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 6313
    :cond_2
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v1, 0x7

    .line 6314
    .local v0, "visibility":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    if-eq v0, v1, :cond_3

    .line 6315
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 6316
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 6299
    :cond_3
    return-void
.end method

.method public handleDispatchWindowShown()V
    .locals 1

    .prologue
    .line 6321
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    .line 6320
    return-void
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1220
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 1221
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1222
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1219
    return-void
.end method

.method handleHighTextContrastChange(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 8278
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    .line 8280
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 8282
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 8277
    return-void
.end method

.method public handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 4
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .prologue
    .line 6342
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6343
    .local v0, "data":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6344
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 6345
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v2, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    .line 6347
    :cond_0
    const-string/jumbo v3, "shortcuts_array"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6349
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v3, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6341
    :goto_0
    return-void

    .line 6350
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method invalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1315
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1316
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 1317
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1314
    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 1333
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 1332
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1338
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1341
    if-nez p2, :cond_0

    .line 1342
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1343
    return-object v1

    .line 1344
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v0, :cond_6

    .line 1348
    :cond_1
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5

    .line 1349
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1350
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 1351
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_3

    .line 1352
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v0, v0

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1354
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_4

    .line 1355
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 1357
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_5

    .line 1358
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 1362
    :cond_5
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    .line 1364
    return-object v1

    .line 1345
    :cond_6
    return-object v1
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1322
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1323
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1324
    check-cast v1, Landroid/view/ViewGroup;

    .line 1325
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1326
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    .line 1325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1321
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public isDesktopmode()Z
    .locals 1

    .prologue
    .line 5185
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    return v0
.end method

.method isInLayout()Z
    .locals 1

    .prologue
    .line 2589
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    .prologue
    .line 7736
    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    .prologue
    .line 1311
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    .prologue
    .line 7766
    const/4 v0, 0x1

    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    .prologue
    .line 7751
    const/4 v0, 0x1

    return v0
.end method

.method public loadSystemProperties()V
    .locals 2

    .prologue
    .line 6650
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$5;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$5;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 6649
    return-void
.end method

.method public notifyChildRebuilt()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 706
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    .line 707
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 709
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_1

    .line 710
    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 711
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 717
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v0

    .line 716
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 718
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 705
    :cond_0
    return-void

    .line 713
    :cond_1
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    goto :goto_0
.end method

.method notifyRendererOfFramePending()V
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyFramePending()V

    .line 1477
    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .prologue
    .line 7726
    invoke-direct {p0, p2, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    .line 7725
    return-void
.end method

.method public onHardwarePostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 2827
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    .line 2828
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2829
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    invoke-interface {v1, p1}, Landroid/view/WindowCallbacks;->onPostDraw(Landroid/view/DisplayListCanvas;)V

    .line 2828
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2826
    :cond_0
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 2822
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 2821
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 7867
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 7872
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 7877
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 7862
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 7858
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 7853
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 7845
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 7849
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2837
    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    .line 2838
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 2839
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->serializeDisplayListTree()V

    .line 2836
    :cond_0
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .prologue
    .line 6484
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6485
    :catch_0
    move-exception v0

    .line 6486
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public playSoundEffect(I)V
    .locals 5
    .param p1, "effectId"    # I

    .prologue
    .line 6446
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6449
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 6451
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 6468
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6469
    const-string/jumbo v4, " not defined in "

    .line 6468
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6469
    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 6468
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6471
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 6473
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6474
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 6445
    return-void

    .line 6453
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 6454
    return-void

    .line 6456
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 6457
    return-void

    .line 6459
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 6460
    return-void

    .line 6462
    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 6463
    return-void

    .line 6465
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6466
    return-void

    .line 6451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method pokeDrawLockIfNeeded()V
    .locals 4

    .prologue
    .line 1270
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1271
    .local v0, "displayState":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v2, :cond_1

    .line 1272
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1273
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 1275
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    :cond_1
    :goto_0
    return-void

    .line 1276
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public profile()V
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 673
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3651
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3652
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3653
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 3654
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 3655
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3650
    :cond_0
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "animator"    # Landroid/view/RenderNode;

    .prologue
    .line 1053
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 1052
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1057
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 1059
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowCallbacks;

    .prologue
    .line 654
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 655
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 652
    return-void

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reportActivityRelaunched()V
    .locals 1

    .prologue
    .line 8216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    .line 8215
    return-void
.end method

.method public reportDrawFinish()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 660
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 3609
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3610
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3605
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 7821
    if-nez p2, :cond_0

    .line 7822
    invoke-virtual {p0, v2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v2

    return v2

    .line 7824
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    .line 7825
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 7824
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 7826
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v1

    .line 7827
    .local v1, "scrolled":Z
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7828
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 7829
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 7831
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7835
    :goto_0
    return v1

    .line 7832
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 7815
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1285
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1286
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1283
    return-void
.end method

.method public requestInvalidateRootRenderNode()V
    .locals 1

    .prologue
    .line 3412
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    .line 3411
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 1299
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_0

    .line 1300
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1301
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1302
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1303
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRequestLayoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1298
    :goto_0
    return-void

    .line 1305
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "requestLayout is already in process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method requestLayoutDuringLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2615
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_1

    .line 2617
    :cond_0
    return v1

    .line 2619
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2620
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2622
    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_3

    .line 2625
    return v1

    .line 2629
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "requestLayoutDuringLayout is already in process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    const/4 v0, 0x0

    return v0
.end method

.method public requestOnStylusButtonEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8708
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnPenButtonEventListener(Landroid/view/MotionEvent;)V

    .line 8707
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v9, 0x0

    .line 7586
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v8, :cond_1

    .line 7587
    :cond_0
    const/4 v8, 0x0

    return v8

    .line 7591
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 7592
    .local v1, "eventType":I
    sparse-switch v1, :sswitch_data_0

    .line 7632
    :cond_2
    :goto_0
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7633
    const/4 v8, 0x1

    return v8

    .line 7594
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 7595
    .local v6, "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 7597
    .local v0, "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 7598
    .local v4, "source":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 7599
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 7600
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    .line 7601
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 7604
    .local v5, "virtualNodeId":I
    const v8, 0x7fffffff

    if-ne v5, v8, :cond_3

    .line 7606
    const/4 v8, -0x1

    .line 7605
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 7610
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    invoke-virtual {p0, v4, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    .line 7608
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .restart local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 7615
    .end local v0    # "accessibilityViewId":I
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v5    # "virtualNodeId":I
    .end local v6    # "sourceNodeId":J
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 7616
    .restart local v6    # "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 7618
    .restart local v0    # "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 7619
    .restart local v4    # "source":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 7620
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 7621
    .restart local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    .line 7622
    invoke-virtual {p0, v9, v9}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    .line 7629
    .end local v0    # "accessibilityViewId":I
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v6    # "sourceNodeId":J
    :sswitch_2
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 7592
    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_2
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 1464
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    :goto_0
    return-void

    .line 1465
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 1468
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2773
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2774
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 2775
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2778
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 2779
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 2780
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 2771
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 6645
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6646
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6644
    return-void
.end method

.method resetSoftwareCaches(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1016
    if-nez p1, :cond_0

    .line 1017
    return-void

    .line 1019
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 1020
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 1021
    check-cast v1, Landroid/view/ViewGroup;

    .line 1023
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1024
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1025
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewRootImpl;->resetSoftwareCaches(Landroid/view/View;)V

    .line 1024
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1015
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    .prologue
    .line 7047
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_0

    .line 7048
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7049
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 7050
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 7049
    const/4 v2, 0x0

    .line 7050
    const/4 v3, 0x0

    .line 7049
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7046
    :cond_0
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .locals 2

    .prologue
    .line 7063
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_0

    .line 7064
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 7065
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 7066
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 7062
    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    .prologue
    .line 1484
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_1

    .line 1485
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1486
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 1487
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 1488
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1487
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1489
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_0

    .line 1490
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 1492
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    .line 1493
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 1483
    :cond_1
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 11
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 3416
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v7, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 3417
    .local v0, "ci":Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v7, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 3418
    .local v6, "vi":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 3419
    .local v5, "scrollY":I
    const/4 v3, 0x0

    .line 3421
    .local v3, "handled":Z
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    if-gt v7, v9, :cond_0

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v9, :cond_1

    .line 3427
    :cond_0
    iget v5, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 3434
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3435
    .local v2, "focus":Landroid/view/View;
    if-nez v2, :cond_6

    .line 3436
    return v10

    .line 3422
    .end local v2    # "focus":Landroid/view/View;
    :cond_1
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-gt v7, v9, :cond_0

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v9, :cond_0

    .line 3524
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    iget v7, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v5, v7, :cond_5

    .line 3527
    if-nez p2, :cond_10

    .line 3528
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v7, :cond_3

    .line 3529
    new-instance v7, Landroid/widget/Scroller;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 3531
    :cond_3
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v8, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v9, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v9, v5, v9

    invoke-virtual {v7, v10, v8, v10, v9}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 3535
    :cond_4
    :goto_1
    iput v5, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 3538
    :cond_5
    return v3

    .line 3438
    .restart local v2    # "focus":Landroid/view/View;
    .restart local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_6
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 3439
    .local v4, "lastScrolledFocus":Landroid/view/View;
    :goto_2
    if-eq v2, v4, :cond_7

    .line 3443
    const/4 p1, 0x0

    .line 3448
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_7
    if-ne v2, v4, :cond_8

    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-eqz v7, :cond_b

    .line 3458
    :cond_8
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 3459
    iput-boolean v10, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 3462
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3467
    if-nez p1, :cond_c

    .line 3468
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3471
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_9

    .line 3473
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    .line 3474
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3473
    invoke-virtual {v7, v2, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3491
    :cond_9
    :goto_3
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3495
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 3496
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    .line 3495
    if-le v7, v8, :cond_d

    .line 3518
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4    # "lastScrolledFocus":Landroid/view/View;
    .restart local p1    # "rectangle":Landroid/graphics/Rect;
    :cond_a
    move-object v4, v8

    .line 3438
    goto :goto_2

    .line 3448
    .end local p1    # "rectangle":Landroid/graphics/Rect;
    .restart local v4    # "lastScrolledFocus":Landroid/view/View;
    :cond_b
    if-nez p1, :cond_8

    goto/16 :goto_0

    .line 3475
    :catch_0
    move-exception v1

    .line 3476
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "offsetDescendantRectToMyCoords() error occurred. focus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mTempRect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 3485
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_c
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 3507
    :cond_d
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_e

    .line 3508
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int v5, v7, v8

    goto :goto_4

    .line 3511
    :cond_e
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_f

    .line 3512
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int v5, v7, v8

    goto :goto_4

    .line 3516
    :cond_f
    const/4 v5, 0x0

    goto :goto_4

    .line 3532
    .end local v2    # "focus":Landroid/view/View;
    .end local v4    # "lastScrolledFocus":Landroid/view/View;
    :cond_10
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v7, :cond_4

    .line 3533
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_1
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/16 v7, 0x40

    const/4 v6, 0x0

    .line 3558
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_1

    .line 3560
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3561
    .local v1, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3568
    .local v0, "focusHost":Landroid/view/View;
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3569
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3573
    invoke-virtual {v0, v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 3576
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 3577
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_0

    .line 3579
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 3580
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 3583
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    .line 3582
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    .line 3585
    .local v3, "virtualNodeId":I
    const/16 v4, 0x80

    .line 3584
    invoke-virtual {v2, v3, v4, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 3587
    .end local v3    # "virtualNodeId":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 3589
    .end local v0    # "focusHost":Landroid/view/View;
    .end local v1    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 3591
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 3596
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3597
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3599
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_3

    .line 3600
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 3555
    :cond_3
    return-void
.end method

.method public setCurrentDirectPenInputView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8700
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDirectPenInputView:Landroid/view/View;

    .line 8699
    return-void
.end method

.method public setDragFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "newDragTarget"    # Landroid/view/View;

    .prologue
    .line 6364
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 6365
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6363
    :cond_0
    return-void
.end method

.method public setForcePerformDraw(Z)V
    .locals 3
    .param p1, "forceDraw"    # Z

    .prologue
    .line 8712
    const-string/jumbo v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForcePerformDraw():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8713
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    .line 8711
    return-void
.end method

.method public setIsAmbientMode(Z)V
    .locals 0
    .param p1, "ambient"    # Z

    .prologue
    .line 1390
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    .line 1389
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "newView"    # Z

    .prologue
    .line 1129
    monitor-enter p0

    .line 1130
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 1131
    .local v3, "oldInsetLeft":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 1132
    .local v5, "oldInsetTop":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 1133
    .local v4, "oldInsetRight":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 1134
    .local v2, "oldInsetBottom":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1135
    .local v6, "oldSoftInputMode":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 1144
    .local v1, "oldHasManualSurfaceInsets":Z
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v7, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 1147
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v7, 0x80

    .line 1151
    .local v0, "compatibleWindowFlag":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1152
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1154
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1155
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1156
    const/high16 v8, 0x80000

    .line 1155
    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    .line 1158
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1160
    :cond_0
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 1163
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    .line 1165
    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 1166
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1168
    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v8, v0

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1170
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eqz v7, :cond_6

    .line 1172
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1174
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 1182
    :cond_3
    :goto_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v7}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1184
    if-eqz p2, :cond_4

    .line 1185
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v7, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 1186
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 1190
    :cond_4
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, 0xf0

    if-nez v7, :cond_5

    .line 1192
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v8, v8, -0xf1

    .line 1194
    and-int/lit16 v9, v6, 0xf0

    .line 1192
    or-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1197
    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1198
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1128
    return-void

    .line 1175
    :cond_6
    :try_start_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ne v7, v3, :cond_7

    .line 1176
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-eq v7, v5, :cond_8

    .line 1179
    :cond_7
    :goto_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mNeedsHwRendererSetup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1129
    .end local v0    # "compatibleWindowFlag":I
    .end local v1    # "oldHasManualSurfaceInsets":Z
    .end local v2    # "oldInsetBottom":I
    .end local v3    # "oldInsetLeft":I
    .end local v4    # "oldInsetRight":I
    .end local v5    # "oldInsetTop":I
    .end local v6    # "oldSoftInputMode":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1177
    .restart local v0    # "compatibleWindowFlag":I
    .restart local v1    # "oldHasManualSurfaceInsets":Z
    .restart local v2    # "oldInsetBottom":I
    .restart local v3    # "oldInsetLeft":I
    .restart local v4    # "oldInsetRight":I
    .restart local v5    # "oldInsetTop":I
    .restart local v6    # "oldSoftInputMode":I
    :cond_8
    :try_start_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ne v7, v4, :cond_7

    .line 1178
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v7, v2, :cond_3

    goto :goto_1
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 6213
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    .line 6212
    return-void
.end method

.method public setPausedForTransition(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 1418
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 1417
    return-void
.end method

.method public setReportNextDraw()V
    .locals 1

    .prologue
    .line 7889
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 7890
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 7888
    return-void
.end method

.method public setTspDeadzone(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "deadzone"    # Landroid/os/Bundle;

    .prologue
    .line 8718
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    if-nez v1, :cond_0

    .line 8719
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "The view is not attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8722
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1}, Landroid/view/IWindowSession;->setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8717
    :goto_0
    return-void

    .line 8723
    :catch_0
    move-exception v0

    .line 8724
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 26
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "panelParentView"    # Landroid/view/View;

    .prologue
    .line 739
    monitor-enter p0

    .line 740
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v3, :cond_19

    .line 741
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    .line 747
    .local v21, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->setSTS(Landroid/content/pm/PackageInfo;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    :try_start_2
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_d

    .line 758
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    const/4 v3, 0x1

    .line 756
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mIsThisWindowDontNeedSurfaceBuffer:Z

    .line 760
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/ViewRootImpl;->mIsThisWindowDontNeedSurfaceBuffer:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1

    .line 761
    const-string/jumbo v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "window="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",  mIsThisWindowDontNeedSurfaceBuffer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/view/ViewRootImpl;->mIsThisWindowDontNeedSurfaceBuffer:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    iput v4, v3, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 772
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 774
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 p2, v0

    .line 775
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->setTag()V

    .line 783
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 785
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 787
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v3, :cond_3

    .line 789
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v3

    .line 788
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 790
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v3, :cond_3

    .line 791
    new-instance v3, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 792
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 798
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v3, :cond_4

    .line 799
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 803
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v13

    .line 804
    .local v13, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v13}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v3, :cond_5

    .line 808
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 811
    :cond_5
    const/16 v23, 0x0

    .line 812
    .local v23, "restore":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_6

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 814
    const/16 v23, 0x1

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 820
    :cond_6
    invoke-virtual {v13}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v3

    if-nez v3, :cond_7

    .line 821
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x80

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 822
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 825
    :cond_7
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 826
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 827
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p1

    iput-object v0, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 829
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v4, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 830
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 831
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v3, :cond_f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 830
    :goto_3
    iput v3, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 832
    if-eqz p3, :cond_8

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 834
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 833
    iput-object v4, v3, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 836
    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 843
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_9

    .line 845
    new-instance v3, Landroid/view/InputChannel;

    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 847
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 850
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 851
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 852
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    .line 853
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 854
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    .line 855
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    .line 856
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 853
    invoke-interface/range {v3 .. v12}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v22

    .line 868
    .local v22, "res":I
    if-eqz v23, :cond_a

    .line 869
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 873
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_b

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 876
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 880
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 881
    and-int/lit8 v3, v22, 0x4

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    .line 880
    :goto_5
    iput-boolean v3, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    .line 884
    if-gez v22, :cond_13

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 886
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 888
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 889
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 890
    packed-switch v22, :pswitch_data_0

    .line 928
    new-instance v3, Ljava/lang/RuntimeException;

    .line 929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window -- unknown error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 928
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 739
    .end local v13    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v22    # "res":I
    .end local v23    # "restore":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 749
    :catch_0
    move-exception v15

    .line 750
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    sget-boolean v3, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    .line 751
    const-string/jumbo v3, "SRIB_DBQ_DCS_DSS_STSViewRootImpl"

    const-string/jumbo v4, "setView: Name not found exception caught"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 758
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 756
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 829
    .restart local v13    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v23    # "restore":Z
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 831
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 847
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 857
    :catch_1
    move-exception v16

    .line 858
    .local v16, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 859
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 860
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "Failed mWindowSession.addToDisplay() mView = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 862
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 863
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 864
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 865
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 866
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Adding window failed"

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 867
    .end local v16    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    .line 868
    if-eqz v23, :cond_11

    .line 869
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 867
    :cond_11
    throw v3

    .line 881
    .restart local v22    # "res":I
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 893
    :pswitch_0
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    .line 894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window -- token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 895
    const-string/jumbo v5, " is not valid; is your activity running?"

    .line 894
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 893
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 897
    :pswitch_1
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    .line 898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window -- token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 899
    const-string/jumbo v5, " is not for an application"

    .line 898
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 897
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 901
    :pswitch_2
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    .line 902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window -- app for token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 903
    const-string/jumbo v5, " is exiting"

    .line 902
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 901
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 905
    :pswitch_3
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    .line 906
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window -- window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 907
    const-string/jumbo v5, " has already been added"

    .line 906
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 905
    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :pswitch_4
    monitor-exit p0

    .line 911
    return-void

    .line 913
    :pswitch_5
    :try_start_8
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 914
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 913
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 914
    const-string/jumbo v5, " -- another window of type "

    .line 913
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 915
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 913
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 915
    const-string/jumbo v5, " already exists"

    .line 913
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 917
    :pswitch_6
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 918
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 917
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 918
    const-string/jumbo v5, " -- permission denied for window type "

    .line 917
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 919
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 917
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 921
    :pswitch_7
    new-instance v3, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 922
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 921
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 922
    const-string/jumbo v5, " -- the specified display can not be found"

    .line 921
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 924
    :pswitch_8
    new-instance v3, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 925
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 924
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 925
    const-string/jumbo v5, " -- the specified window type "

    .line 924
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 926
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 924
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 926
    const-string/jumbo v5, " is not valid"

    .line 924
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 932
    :cond_13
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v3, :cond_14

    .line 934
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v3

    .line 933
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 936
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_16

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v3, :cond_15

    .line 938
    new-instance v3, Landroid/view/InputQueue;

    invoke-direct {v3}, Landroid/view/InputQueue;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v3, v4}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 941
    :cond_15
    new-instance v3, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 942
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    .line 941
    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 945
    :cond_16
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 946
    and-int/lit8 v3, v22, 0x1

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 947
    and-int/lit8 v3, v22, 0x2

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 949
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 953
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_18

    .line 954
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 957
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " touchMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    .line 961
    .local v14, "counterSuffix":Ljava/lang/CharSequence;
    new-instance v3, Landroid/view/ViewRootImpl$SyntheticInputStage;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 962
    new-instance v24, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 963
    .local v24, "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v19, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    .line 964
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aq:native-post-ime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 963
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 965
    .local v19, "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v17, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 966
    .local v17, "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v18, Landroid/view/ViewRootImpl$ImeInputStage;

    .line 967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aq:ime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 966
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 968
    .local v18, "imeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v25, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 969
    .local v25, "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v20, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    .line 970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aq:native-pre-ime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 969
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 972
    .local v20, "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 973
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aq:pending:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v13    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v14    # "counterSuffix":Ljava/lang/CharSequence;
    .end local v17    # "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v18    # "imeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v19    # "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v20    # "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v22    # "res":I
    .end local v23    # "restore":Z
    .end local v24    # "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v25    # "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    :cond_19
    monitor-exit p0

    .line 738
    return-void

    .line 946
    .restart local v13    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v22    # "res":I
    .restart local v23    # "restore":Z
    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 947
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 890
    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setWindowStopped(Z)V
    .locals 2
    .param p1, "stopped"    # Z

    .prologue
    .line 1394
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v1, p1, :cond_1

    .line 1395
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 1396
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    .line 1397
    .local v0, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_0

    .line 1399
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 1401
    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v1, :cond_2

    .line 1402
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1393
    .end local v0    # "renderer":Landroid/view/ThreadedRenderer;
    :cond_1
    :goto_0
    return-void

    .line 1404
    .restart local v0    # "renderer":Landroid/view/ThreadedRenderer;
    :cond_2
    if-eqz v0, :cond_1

    .line 1405
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 7557
    const/4 v0, 0x0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 7562
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 7567
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 7573
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 7280
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7281
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7282
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7279
    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 1657
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1656
    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 1667
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1666
    return-void
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7055
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    .line 7056
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7057
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 7058
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v2, 0x0

    .line 7057
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7054
    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    .prologue
    .line 1498
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    .line 1499
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1500
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1501
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 1502
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1501
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1497
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 9
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "force"    # Z

    .prologue
    .line 3726
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 3727
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    sget-object v6, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v6}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3728
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3729
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v1, "config":Landroid/content/res/Configuration;
    iget v6, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v0, v6, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    move-object p1, v1

    .line 3732
    .end local v1    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :cond_0
    sget-object v7, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3733
    :try_start_0
    sget-object v6, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 3734
    sget-object v6, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentCallbacks;

    invoke-interface {v6, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3733
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v7

    .line 3737
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 3752
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3753
    .local v5, "localResources":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3754
    if-nez p2, :cond_2

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 3756
    :cond_2
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v6

    .line 3757
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v8

    .line 3756
    invoke-virtual {v6, v7, v8}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v6

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 3759
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    .line 3760
    .local v4, "lastLayoutDirection":I
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 3761
    .local v2, "currentLayoutDirection":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3762
    if-eq v4, v2, :cond_3

    .line 3763
    iget v6, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 3764
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 3766
    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3720
    .end local v2    # "currentLayoutDirection":I
    .end local v4    # "lastLayoutDirection":I
    .end local v5    # "localResources":Landroid/content/res/Resources;
    :cond_4
    return-void

    .line 3732
    .end local v3    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public updatePointerIcon(FF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/16 v11, 0x1b

    .line 7347
    const/16 v10, 0x1b

    .line 7348
    .local v10, "what":I
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 7349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7351
    .local v2, "now":J
    const-wide/16 v0, 0x0

    const/4 v4, 0x7

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    .line 7350
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 7352
    .local v8, "event":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v11, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 7353
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v9}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7346
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 4
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7316
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7317
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7318
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7319
    if-eqz p2, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 7320
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7315
    return-void

    :cond_0
    move v1, v3

    .line 7318
    goto :goto_0

    :cond_1
    move v2, v3

    .line 7319
    goto :goto_1
.end method
