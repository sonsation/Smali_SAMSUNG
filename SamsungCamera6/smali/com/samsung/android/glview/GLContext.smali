.class public Lcom/samsung/android/glview/GLContext;
.super Ljava/lang/Object;
.source "GLContext.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Lcom/samsung/android/hardware/context/SemContextListener;
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;,
        Lcom/samsung/android/glview/GLContext$GLInitializeListener;
    }
.end annotation


# static fields
.field public static final FOCUSED:I = 0x1

.field private static final FOCUS_INDICATOR_DEFAULT_COLOR:I

.field private static final FOCUS_INDICATOR_DEFAULT_THICKNESS:I = 0x1

.field private static final FPS_CALCULATION_INTERVAL_THRESHOLD:I = 0x64

.field public static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field public static final HOVER_ENTER:I = 0x0

.field public static final HOVER_EXIT:I = 0x1

.field private static final HOVER_INDICATOR_DEFAULT_COLOR:I

.field private static final HOVER_INDICATOR_DEFAULT_THICKNESS:I = 0x2

.field public static final NOT_FOCUSED:I = 0x0

.field public static final ORIENTATION_CHANGE_MARGIN_IN_DEGREE:I = 0xa

.field private static final SENSORHUB_SERVICE_NAME:Ljava/lang/String; = "scontext"

.field public static final SHOW_BUTTON_BACKGROUND_SETTING_KEY:Ljava/lang/String; = "show_button_background"

.field private static final TAG:Ljava/lang/String; = "GLContext"

.field protected static mApplicationContext:Landroid/content/Context;

.field private static final mFrameLock:Ljava/lang/Object;

.field private static final mInitLock:Ljava/lang/Object;

.field private static mIsFixedOrientation:Z

.field private static mLastOrientation:I

.field private static mOrientationCompensationValue:I

.field private static final mOrientationUpdateLock:Ljava/lang/Object;

.field private static mResources:Landroid/content/res/Resources;

.field private static mScreenHeight:I

.field private static mScreenWidth:I


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAccumulatedTime:J

.field private mAlignToPixel:Z

.field private mAutoOrientationStatus:Z

.field private mChoreographer:Landroid/view/Choreographer;

.field private mClipRect:Landroid/graphics/Rect;

.field private mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

.field private mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

.field private mCursorColorObserver:Landroid/database/ContentObserver;

.field private mDensity:F

.field private mDirty:Z

.field private mDisplaySizeObserver:Landroid/database/ContentObserver;

.field private mEstimatedFPS:I

.field private mFocusIndicatorColor:I

.field private mFocusIndicatorThickness:I

.field private mFocusIndicatorVisibilityChanged:Z

.field private mFrameCountForFPS:J

.field private mFrameHandler:Landroid/os/Handler;

.field private mFrameHandlerThread:Landroid/os/HandlerThread;

.field private mFrameNum:J

.field private mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

.field private mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHeight:I

.field private mHoverBaseView:Landroid/view/View;

.field private mHoverIndicatorColor:I

.field private mHoverIndicatorThickness:I

.field private mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

.field private mIdentityMatrix:[F

.field private mIsAccessibilityNodeEnabled:Z

.field private mIsAccessibilityServiceEnabled:Z

.field private mIsFocusIndicatorVisible:Z

.field private mIsFocusNavigationEnabled:Z

.field private mIsSemContextListenerAvailable:Z

.field private mIsTouchExplorationEnabled:Z

.field private mLastHoverView:Lcom/samsung/android/glview/GLView;

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mLastTouchView:Lcom/samsung/android/glview/GLView;

.field private mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mMainHandlerThread:Landroid/os/HandlerThread;

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPaused:Z

.field private mPrevFrameTimeStamp:J

.field private mProjMatrix:[F

.field private mRenderRequested:Z

.field private mRippleEffectColor:I

.field private mRippleEffectEnabled:Z

.field private mRootView:Lcom/samsung/android/glview/GLViewGroup;

.field private mScrollBarAutoHide:Z

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSettingInteractionControlObserver:Landroid/database/ContentObserver;

.field private mShowButtonBackgroundEnabled:Z

.field private mTapDir:I

.field private mTapDirState:I

.field private mTexturesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xe6

    const/4 v2, 0x0

    const/16 v0, 0xff

    invoke-static {v3, v2, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLContext;->FOCUS_INDICATOR_DEFAULT_COLOR:I

    const/16 v0, 0x4c

    const/16 v1, 0xe8

    invoke-static {v3, v2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLContext;->HOVER_INDICATOR_DEFAULT_COLOR:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/glview/GLContext;->mInitLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/glview/GLContext;->mOrientationUpdateLock:Ljava/lang/Object;

    sput v2, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    sput v2, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    sput-boolean v2, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/glview/GLContext$GLInitializeListener;Landroid/opengl/GLSurfaceView;Z)V
    .locals 8

    const/high16 v5, 0x3f000000    # 0.5f

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mAutoOrientationStatus:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mProjMatrix:[F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    sget v1, Lcom/samsung/android/glview/GLContext;->HOVER_INDICATOR_DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    sget v1, Lcom/samsung/android/glview/GLContext;->FOCUS_INDICATOR_DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorColor:I

    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityNodeEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mShowButtonBackgroundEnabled:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    new-instance v1, Lcom/samsung/android/glview/GLContext$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$1;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/samsung/android/glview/GLContext$2;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$2;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mDisplaySizeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/samsung/android/glview/GLContext$3;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$3;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCursorColorObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/samsung/android/glview/GLContext$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$4;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    new-instance v1, Lcom/samsung/android/glview/GLContext$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$5;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mInitLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sput-object p1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    iput-object p3, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    sput-boolean p4, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->setOrientationListener()V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101042c

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_cursor_color"

    sget v3, Lcom/samsung/android/glview/GLContext;->FOCUS_INDICATOR_DEFAULT_COLOR:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_large_cursor"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    new-instance v1, Lcom/samsung/android/glview/GLContext$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$6;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->startFrameHandlerThread()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/samsung/android/glview/GLContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/glview/GLContext;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/glview/GLContext;Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/glview/GLContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/glview/GLContext;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLContext;->disableAccessibilityService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/glview/GLContext;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/glview/GLContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->disableOrientationListener()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/glview/GLContext;)Landroid/opengl/GLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/glview/GLContext;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLContext;->handleOrientationChanged(I)V

    return-void
.end method

.method private disableAccessibilityService(Landroid/content/Context;)V
    .locals 15

    iget-boolean v12, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v12, "GLContext"

    const-string v13, "disableAccessibilityService"

    invoke-static {v12, v13}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3a

    new-instance v10, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v12, 0x3a

    invoke-direct {v10, v12}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/glview/GLContext;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    if-ne v5, v12, :cond_1

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :cond_1
    const-string v12, "com.sec.android.app.camera/com.samsung.android.glview.AccessibilityGestureHandler"

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    const/4 v1, 0x0

    invoke-interface {v5, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v1, 0x1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3a

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "enabled_accessibility_services"

    invoke-static {v12, v13, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v8, :cond_7

    move-object v2, v10

    invoke-virtual {v2, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v1, 0x1

    :cond_7
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isKNOXMode()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v1, 0x0

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accessibility_enabled"

    if-eqz v1, :cond_9

    const/4 v12, 0x1

    :goto_2
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v12, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private disableOrientationListener()V
    .locals 2

    const-string v0, "GLContext"

    const-string v1, "disableOrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method private enableAccessibilityService(Landroid/content/Context;)V
    .locals 11

    const/4 v9, 0x1

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    const-string v7, "GLContext"

    const-string v8, "enableAccessibilityService"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3a

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    if-ne v2, v7, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_1
    const-string v7, "com.sec.android.app.camera/com.samsung.android.glview.AccessibilityGestureHandler"

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accessibility_enabled"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v7, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.samsung.android.glview.ACCESSIBILITY_GESTURE_DETECTED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method protected static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAudioSoundOfTapDirection()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getColor(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getDimension(I)F
    .locals 1

    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x3a

    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    :cond_0
    return-object v4

    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v1, v6

    invoke-virtual {v1, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInteger(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getLastOrientation()I
    .locals 1

    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    return v0
.end method

.method public static getOrientationCompensationValue()I
    .locals 1

    sget v0, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    return v0
.end method

.method public static getScreenHeightPixels()I
    .locals 1

    sget v0, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    return v0
.end method

.method public static getScreenWidthPixels()I
    .locals 1

    sget v0, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    return v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleOrientationChanged(I)V
    .locals 4

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const-string v1, "GLContext"

    const-string v2, "handleOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    if-ne v1, v0, :cond_2

    sget-boolean v1, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_3

    const-string v1, "GLContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged, newOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLContext;->setLastOrientation(I)V

    goto :goto_0
.end method

.method private handlingKeyEventTap()Z
    .locals 11

    const/16 v9, 0x42

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    :cond_0
    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v4, 0x1

    :cond_1
    :goto_1
    return v4

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getNextFocusForwardId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    if-nez v5, :cond_0

    sget v7, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v9, 0x11

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    goto :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v9, 0x82

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    goto :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v9, 0x21

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v0, v7, v10

    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v1, v7, v10

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v3, 0x3c23d70a    # 0.01f

    sget v7, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v7, :pswitch_data_1

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v8, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v7, v8, v2, v6}, Lcom/samsung/android/glview/GLViewGroup;->findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v4, 0x1

    goto/16 :goto_1

    :pswitch_4
    const/4 v2, 0x0

    add-float v6, v1, v3

    goto :goto_2

    :pswitch_5
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v2

    sub-float v6, v1, v3

    goto :goto_2

    :pswitch_6
    sub-float v2, v0, v3

    const/4 v6, 0x0

    goto :goto_2

    :pswitch_7
    add-float v2, v0, v3

    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v6

    goto :goto_2

    :cond_4
    sget v7, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v7, :pswitch_data_2

    :goto_3
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v8, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v7, v8, v2, v6}, Lcom/samsung/android/glview/GLViewGroup;->findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v4, 0x1

    goto/16 :goto_1

    :pswitch_8
    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_3

    :pswitch_9
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v2

    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v6

    goto :goto_3

    :pswitch_a
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v2

    const/4 v6, 0x0

    goto :goto_3

    :pswitch_b
    const/4 v2, 0x0

    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v6

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public static hasHardwareKeyPad()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isFixedOrientation()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    return v0
.end method

.method public static isScreenOrientationLandscape()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isTalkBackEnabled()Z
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private registerTouchExplorationStateChangeListener()V
    .locals 3

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method

.method public static setFixedOrientation(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    return-void
.end method

.method private setLastOrientation(I)V
    .locals 2

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mOrientationUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput p1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setOrientationCompensationValue(I)V
    .locals 0

    sput p0, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    return-void
.end method

.method private setOrientationListener()V
    .locals 3

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    if-eqz v1, :cond_1

    const-string v1, "GLContext"

    const-string v2, "using SemContextListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "GLContext"

    const-string v2, "using OrientationEventListener of android"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/glview/GLContext$7;

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$7;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method

.method private startFrameHandlerThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GLContextFrameHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/glview/GLContext$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$8;-><init>(Lcom/samsung/android/glview/GLContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterTouchExplorationStateChangeListener()V
    .locals 3

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method

.method private updateScreenSize()V
    .locals 5

    sget-boolean v2, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    if-eqz v2, :cond_1

    const-string v2, "GLContext"

    const-string v3, "updateScreenSize"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v0, :cond_0

    sput v1, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    sput v0, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    :goto_0
    return-void

    :cond_0
    sput v0, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    sput v1, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    goto :goto_0

    :cond_1
    const-string v2, "GLContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScreenSize : w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    goto :goto_0
.end method

.method private updateTouchExplorationEnabled()V
    .locals 4

    const/4 v2, 0x1

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTextureToDelete(Lcom/samsung/android/glview/GLTexture;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearFocus()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    return-void
.end method

.method public disableFocusNavigation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    return-void
.end method

.method public doFrame(J)V
    .locals 2

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpViewHierarchy()V
    .locals 2

    const-string v0, "GLContext"

    const-string v1, "=======================DUMP_START======================="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->dumpViewHierarchy(I)V

    :cond_0
    const-string v0, "GLContext"

    const-string v1, "=======================DUMP_END======================="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableAccessibilityNode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityNodeEnabled:Z

    return-void
.end method

.method public enableFocusNavigation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    return-void
.end method

.method protected enableOrientationListener()V
    .locals 2

    const-string v0, "GLContext"

    const-string v1, "enableOrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0
.end method

.method public enableRippleEffect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    return-void
.end method

.method public findNextFocusFromView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_0
.end method

.method public findViewById(I)Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewByTag(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public getAlignToPixel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    return v0
.end method

.method public getDensity()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    return v0
.end method

.method public getEstimatedFPS()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    return v0
.end method

.method public getFocusIndicatorColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorColor:I

    return v0
.end method

.method public getFocusIndicatorThickness()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    return v0
.end method

.method public getGLPreviewData()Lcom/samsung/android/glview/GLPreviewData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    return-object v0
.end method

.method public getGLSurfaceView()Landroid/opengl/GLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public getHoverBaseView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    return-object v0
.end method

.method public getHoverIndicatorColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    return v0
.end method

.method public getHoverIndicatorThickness()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    return v0
.end method

.method public getLastHoverView()Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    return-object v0
.end method

.method public getProjMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mProjMatrix:[F

    return-object v0
.end method

.method public getRippleEffectColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    return v0
.end method

.method public getRootView()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getScreenAspectRatio()F
    .locals 2

    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getScreenGeometry()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getTts()Landroid/speech/tts/TextToSpeech;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_pitch"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public isEnableAccessibilityNode()Z
    .locals 3

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityNodeEnabled:Z

    goto :goto_0
.end method

.method public isFocusIndicatorVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    return v0
.end method

.method public isFocusNavigationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    return v0
.end method

.method public isHoveringEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isHoveringPointerEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_pointer"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isRippleEffectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    return v0
.end method

.method public isShowButtonBackgroundEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mShowButtonBackgroundEnabled:Z

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method protected notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;->onHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14

    const-wide/16 v12, 0x5

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLTexture;->clearTexture()V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v5, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    const/16 v5, 0x4100

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    sub-long v2, v0, v6

    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    const-wide/16 v6, 0x64

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    const-wide/16 v6, 0x3e8

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    div-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    :cond_4
    iput-wide v0, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    cmp-long v5, v6, v12

    if-gez v5, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v5, "GLContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start drawing frame #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/glview/GLViewGroup;->draw([FLandroid/graphics/Rect;)V

    :cond_6
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    cmp-long v5, v6, v12

    if-gez v5, :cond_2

    const-string v5, "GLContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End drawing frame #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Elapsed time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onFocusChanged(Lcom/samsung/android/glview/GLView;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return-void

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/glview/GLContext;->onHoverEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    :cond_2
    invoke-virtual {p1, v3}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTtsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const v1, 0xc369

    const/4 v2, -0x1

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_3
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    :cond_5
    invoke-virtual {p1, v3}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;I)Z
    .locals 6

    const/4 v5, 0x1

    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    iget v3, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    invoke-static {p1, p2, v2, v3}, Lcom/samsung/android/glview/GLUtil;->transformEventByGLOrientation(Landroid/view/MotionEvent;III)V

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_1
    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eq v1, v2, :cond_1

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/glview/GLContext;->notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0
.end method

.method public onHoverSwipeEvent(I)V
    .locals 6

    const/16 v5, 0x62

    const/16 v4, 0x41

    const/16 v3, 0x31

    const/16 v2, 0x52

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    sparse-switch p1, :sswitch_data_1

    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus(I)Z

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :sswitch_2
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :sswitch_3
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :sswitch_4
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0x41 -> :sswitch_0
        0x52 -> :sswitch_0
        0x62 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x31 -> :sswitch_1
        0x41 -> :sswitch_3
        0x52 -> :sswitch_4
        0x62 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onHoverTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    :goto_1
    move v4, v5

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_5
    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    if-nez v6, :cond_7

    move v3, v5

    :goto_2
    if-nez v3, :cond_0

    move v4, v5

    goto :goto_0

    :cond_7
    move v3, v4

    goto :goto_2

    :cond_8
    if-ne v0, v5, :cond_c

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-nez v6, :cond_9

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v4, v5

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v6, :cond_a

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v6

    div-float v1, v4, v8

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v6

    div-float v2, v4, v8

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-object v9, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    move v4, v5

    goto/16 :goto_0

    :cond_a
    iput-object v9, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x6

    if-ne v0, v6, :cond_d

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :cond_d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    move v4, v5

    goto/16 :goto_0
.end method

.method public onInit(I)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11

    const/16 v10, 0x82

    const/16 v9, 0x42

    const/16 v8, 0x21

    const/16 v7, 0x11

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v5, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    if-nez v5, :cond_3

    sparse-switch p1, :sswitch_data_1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/glview/GLView;->keyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    sparse-switch p1, :sswitch_data_2

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    sparse-switch p1, :sswitch_data_3

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    sget-object v5, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sparse-switch p1, :sswitch_data_4

    :cond_7
    :goto_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    :sswitch_0
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v2, v4

    goto :goto_0

    :sswitch_2
    iget v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->handlingKeyEventTap()Z

    move-result v1

    goto :goto_1

    :sswitch_4
    move v2, v4

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto :goto_1

    :cond_9
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto :goto_1

    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :sswitch_6
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :cond_a
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_4
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :pswitch_5
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :pswitch_6
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :pswitch_7
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :sswitch_7
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :cond_b
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_8
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :pswitch_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :pswitch_a
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :pswitch_b
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :sswitch_8
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :cond_c
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_c
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :pswitch_d
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :pswitch_e
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :pswitch_f
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    :sswitch_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    goto/16 :goto_2

    :sswitch_a
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    :sswitch_b
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    :sswitch_c
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    :sswitch_d
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    :sswitch_e
    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->getAudioSoundOfTapDirection()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    :sswitch_f
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

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
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_4
        0x3d -> :sswitch_3
        0x3e -> :sswitch_2
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x42 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x13 -> :sswitch_c
        0x14 -> :sswitch_d
        0x15 -> :sswitch_a
        0x16 -> :sswitch_b
        0x3d -> :sswitch_e
        0x3e -> :sswitch_f
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v3, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    if-nez v1, :cond_3

    sparse-switch p1, :sswitch_data_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/glview/GLView;->keyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_4
    if-nez v0, :cond_5

    packed-switch p1, :pswitch_data_0

    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :sswitch_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v0, v2

    goto :goto_0

    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    if-eqz v3, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->dumpViewHierarchy()V

    goto :goto_1

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
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLContext;->disableAccessibilityService(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getPreserveEGLContextOnPause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    invoke-static {v0}, Lcom/samsung/android/glview/GLProgramStorage;->releaseInstance(Lcom/samsung/android/glview/GLProgramStorage;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->reset()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLPreviewData;->releaseInstance()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_2
    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->disableOrientationListener()V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->unregisterTouchExplorationStateChangeListener()V

    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCursorColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mDisplaySizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "GLContextHandlerThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    iput-boolean v8, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    iput-boolean v8, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v3, v7, :cond_0

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_enabled"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->enableOrientationListener()V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_1

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(?i).*talkback.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/speech/tts/TextToSpeech;

    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_pitch"

    const/16 v6, 0x64

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->registerTouchExplorationStateChangeListener()V

    const-string v3, "access_control_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    const-string v3, "accessibility_cursor_color"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mCursorColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v0, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_button_background"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_6

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLContext;->mShowButtonBackgroundEnabled:Z

    :cond_6
    const-string v3, "display_size_forced"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mDisplaySizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v1, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_7
    return-void
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 7

    iget-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v0

    const-string v4, "GLContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSemContextChanged - angle : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_1

    const-string v4, "GLContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This value is not defined : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLContext;->handleOrientationChanged(I)V

    goto :goto_0

    :pswitch_1
    const/4 v2, -0x1

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_1

    :pswitch_4
    const/16 v2, 0xb4

    goto :goto_1

    :pswitch_5
    const/16 v2, 0x5a

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "GLContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLSurfaceChanged**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    iput p3, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mProjMatrix:[F

    iget v3, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    neg-int v5, v5

    int-to-float v6, v5

    iget v5, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    int-to-float v7, v5

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->refreshClipRect()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {v0, v1}, Lcom/samsung/android/glview/GLContext$GLInitializeListener;->onGLInitialized(Lcom/samsung/android/glview/GLViewGroup;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "GLContext"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x203

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    invoke-static {p0}, Lcom/samsung/android/glview/GLPreviewData;->getInstance(Lcom/samsung/android/glview/GLContext;)Lcom/samsung/android/glview/GLPreviewData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    invoke-static {}, Lcom/samsung/android/glview/GLProgramStorage;->getInstance()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {v0, p0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return v0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public queueGLEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mAutoOrientationStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    :cond_0
    return-void
.end method

.method public registerHoverEventChangedObserver(Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rotationFocusView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    :cond_1
    return-void
.end method

.method public setAlignToPixel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    return-void
.end method

.method public setDirty(Z)V
    .locals 2

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFirstOrientation(I)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationByDisplayOrientation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLContext;->setLastOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public setHoverBaseView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    return-void
.end method

.method public declared-synchronized setPreviewData(II[B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/glview/GLPreviewData;->setPreviewData(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public setRippleEffectColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    return-void
.end method

.method public unregisterHoverEventChangedObserver(Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
