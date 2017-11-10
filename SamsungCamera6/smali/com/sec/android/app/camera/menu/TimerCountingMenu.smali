.class public Lcom/sec/android/app/camera/menu/TimerCountingMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "TimerCountingMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerMenuHandler;
    }
.end annotation


# static fields
.field private static final INTERVAL_UPDATE_PROGRESS_WHEEL_TIMER:J = 0xaL

.field protected static final TAG:Ljava/lang/String; = "TimerCountingMenu"

.field private static final UPDATE_PROGRESS_WHEEL_TIMER_MSG:I = 0x1

.field private static mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

.field private static mTimerIntervalCountArray1:[I

.field private static mTimerIntervalCountArray2:[I


# instance fields
.field private final PROGRESS_TIMER_WIDTH:I

.field private final TIMER_INTERVAL_COUNT_GAP:I

.field private final TIMER_INTERVAL_COUNT_POS_X:I

.field private final TIMER_INTERVAL_COUNT_POS_Y:[I

.field private final TIMER_INTERVAL_COUNT_WIDTH:I

.field private final TIMER_NUMBER_POS_X:I

.field private final TIMER_NUMBER_POS_Y:I

.field private final TIMER_PROGRESS_WHEEL_POS_X:I

.field private final TIMER_PROGRESS_WHEEL_POS_Y:I

.field private mCurrentAnimationTime:I

.field private mIntervalCount:I

.field private mIs2SecSoundPlaying:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDegree:I

.field private mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

.field private final mTimerMenuHandler:Landroid/os/Handler;

.field private mTimerNumber:Lcom/samsung/android/glview/GLImage;

.field private mTimerNumberArray:[I

.field private mTimerValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray1:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray2:[I

    new-array v0, v1, [Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    return-void

    :array_0
    .array-data 4
        0x7f0201cd
        0x7f0201cf
        0x7f0201d1
    .end array-data

    :array_1
    .array-data 4
        0x7f0201ce
        0x7f0201d0
        0x7f0201d2
    .end array-data
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    const v0, 0x7f0b036b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_X:I

    const v0, 0x7f0b036c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_Y:I

    const v0, 0x7f0b036d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_X:I

    const v0, 0x7f0b036e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_Y:I

    const v0, 0x7f0b036f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->PROGRESS_TIMER_WIDTH:I

    const v0, 0x7f0b0369

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_POS_X:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0b0365

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0b0366

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0b0367

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_POS_Y:[I

    const v0, 0x7f0b036a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_WIDTH:I

    const v0, 0x7f0b0368

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_GAP:I

    new-instance v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerMenuHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerMenuHandler;-><init>(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerMenuHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumberArray:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIntervalCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    new-instance v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;-><init>(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeTimerNumber()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeProgressWheelTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeTimerIntervalCount()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0201d3
        0x7f0201d5
        0x7f0201d6
        0x7f0201d7
        0x7f0201d8
        0x7f0201d9
        0x7f0201da
        0x7f0201db
        0x7f0201dc
        0x7f0201d4
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->resetIntervalCaptureCount()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateProgressWheelTime(I)V

    return-void
.end method

.method private cancelTimer()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "TimerCountingMenu"

    const-string v1, "cancelTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerValue:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerMenuHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    :cond_3
    iput v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerValue:I

    iput v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    iput v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setPreviewTouchEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->hideMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    return-void
.end method

.method private makeProgressWheelTimer()V
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v7

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->PROGRESS_TIMER_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->PROGRESS_TIMER_WIDTH:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    int-to-float v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_Y:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->moveBaseLayoutAbsolute(FF)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->PROGRESS_TIMER_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->PROGRESS_TIMER_WIDTH:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setCenterPivot(Z)V

    goto :goto_0
.end method

.method private makeTimerIntervalCount()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->clear()V

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_WIDTH:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_GAP:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v1, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getLeft()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v1

    iget v6, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_WIDTH:I

    iget v7, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_GAP:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v0

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_POS_X:I

    iget v7, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_X:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray1:[I

    aget v7, v7, v0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v2, v0

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2, v10}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_POS_X:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_POS_Y:[I

    aget v6, v6, v0

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray1:[I

    aget v7, v7, v0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v2, v0

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2, v9}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2, v9}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2, v10}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->resetIntervalCaptureCount()V

    return-void
.end method

.method private makeTimerNumber()V
    .locals 8

    const/16 v7, 0x9

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumberArray:[I

    aget v3, v3, v7

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    int-to-float v2, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-static {v2, v6, v6}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTimerFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_X:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_Y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumberArray:[I

    aget v5, v5, v7

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v6}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v6}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    goto :goto_0
.end method

.method private resetIntervalCaptureCount()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray2:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray1:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray1:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    return-void
.end method

.method private setIntervalCountVisibility(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateIntervalCaptureCount()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIntervalCount:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIntervalCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iput v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIntervalCount:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIntervalCount:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray2:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray2:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray2:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateProgressWheelTime(I)V
    .locals 8

    const-wide/16 v6, 0xa

    const/4 v4, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    mul-int/lit16 v1, v1, 0x168

    div-int/2addr v1, p1

    iput v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    const-string v1, "TimerCountingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressWheelTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setProgress(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerMenuHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerMenuHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    int-to-long v2, v1

    add-long/2addr v2, v6

    long-to-int v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    const/16 v2, 0x168

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-static {v1, v4, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getProgressWheelTimerFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;-><init>(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->startAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onHide()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "TimerCountingMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isProgressWheelTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerMenuHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setIntervalCountVisibility(Z)V

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setIntervalCountVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->resetIntervalCaptureCount()V

    goto :goto_0
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->cancelTimer()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayoutChanged(III)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->cancelTimer()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeTimerNumber()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeProgressWheelTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeTimerIntervalCount()V

    :cond_2
    return-void
.end method

.method protected onShow()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "TimerCountingMenu"

    const-string v2, "onShow"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/16 v2, 0x2c0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setPreviewTouchEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateIntervalCaptureCount()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setIntervalCountVisibility(Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isProgressWheelTimer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-static {v2, v3, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getProgressWheelTimerFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setIntervalCountVisibility(Z)V

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public updateTime(I)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "TimerCountingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isProgressWheelTimer()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateProgressWheelTime(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerValue:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerValue:I

    if-nez v1, :cond_2

    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->hideMenu()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumberArray:[I

    array-length v1, v1

    if-le p1, v1, :cond_3

    const-string v1, "TimerCountingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer index is wrong - NUM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumberArray:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v0, 0x0

    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerValue:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xb

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xa

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    goto :goto_0
.end method
