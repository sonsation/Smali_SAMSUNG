.class public Lcom/sec/android/app/camera/shootingmode/VirtualShot;
.super Ljava/lang/Object;
.source "VirtualShot.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;,
        Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_FADE_INOUT_TIMER:I = 0x226

.field private static final ANIMATION_NEXT_TIMER:I = 0x64

.field private static final CAPTURED_OBJ_ALPHA_VALUE:F = 0.4f

.field private static final CAPTURE_DIRECTION_TO_DOWN:I = 0x2

.field private static final CAPTURE_DIRECTION_TO_LEFT:I = 0x4

.field private static final CAPTURE_DIRECTION_TO_RIGHT:I = 0x3

.field private static final CAPTURE_DIRECTION_TO_UP:I = 0x1

.field private static final CAPTURE_DIRECTION_UNKNOWN:I = 0x0

.field private static final CAPTURE_WARN_NOT_ENOUGH_FRAMES:I = 0x3

.field private static final CAPTURE_WARN_NO_ERROR:I = 0x0

.field private static final CAPTURE_WARN_OUT_OF_RANGE:I = 0x2

.field private static final CAPTURE_WARN_WRONG_DIRECTION:I = 0x1

.field private static final NUM_OF_ANIMATION:I = 0x5

.field private static final NUM_OF_DIRECTION:I = 0x6

.field private static final SAVE_RESTRICTION_FRAME_NUM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VirtualShot"

.field private static final VIRTUALSHOT_CAPTURE_EXPIRED:I = 0x7

.field private static final VIRTUALSHOT_CAPTURE_EXPIRED_TIMER:I = 0x1b58

.field private static final VIRTUALSHOT_DEVICE_GUIDE_ANI_FADEIN:I = 0x2

.field private static final VIRTUALSHOT_DEVICE_GUIDE_ANI_FADEOUT:I = 0x3

.field private static final VIRTUALSHOT_DEVICE_GUIDE_ANI_NEXT:I = 0x1

.field private static final VIRTUALSHOT_SHOW_UI:I = 0x6

.field private static final VIRTUALSHOT_SHOW_UI_RESTART_TIMER:I = 0xa

.field private static final VIRTUALSHOT_STATUS_CAPTURING:I = 0x2

.field private static final VIRTUALSHOT_STATUS_IDLE:I = 0x0

.field private static final VIRTUALSHOT_STATUS_SAVING:I = 0x3

.field private static final VIRTUALSHOT_STATUS_START:I = 0x1

.field private static final sVirtualShotStatus:[Ljava/lang/String;


# instance fields
.field private final CENTER_OBJECT_FRONT_X:F

.field private final CENTER_OBJECT_FRONT_Y:F

.field private final CENTER_OBJECT_REAR_X:F

.field private final CENTER_OBJECT_REAR_Y:F

.field private final PROGRESS_FRONT_X:F

.field private final PROGRESS_FRONT_Y:F

.field private final PROGRESS_REAR_X:F

.field private final PROGRESS_REAR_Y:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final STOP_BUTTON_DIAMETER:I

.field private final STOP_BUTTON_POS_X:I

.field private final STOP_BUTTON_POS_Y:I

.field private final VIRTUALSHOT_GUIDE_H:F

.field private final VIRTUALSHOT_GUIDE_W:F

.field private final VIRTUALSHOT_GUIDE_X:[F

.field private final VIRTUALSHOT_GUIDE_Y:[F

.field private mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

.field private mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

.field private mArrowAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

.field private mCaptureDirection:I

.field private mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

.field private mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mCenterObjBG:Lcom/samsung/android/glview/GLImage;

.field private mCurrentFadeInAni:I

.field private mCurrentFadeOutAni:I

.field private mCurrentGuideAni:I

.field private mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFrames:I

.field private mIsVirtualShotCaptureStarted:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mProgress:I

.field private mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

.field private mTempFileName:Ljava/lang/String;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

.field private mVirtualShotStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "VIRTUALSHOT_STATUS_IDLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "VIRTUALSHOT_STATUS_START"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "VIRTUALSHOT_STATUS_CAPTURING"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "VIRTUALSHOT_STATUS_SAVING"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->sVirtualShotStatus:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b0233

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_W:F

    const v0, 0x7f0b0232

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_H:F

    const v0, 0x7f0b0230

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_X:F

    const v0, 0x7f0b0231

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_Y:F

    const v0, 0x7f0b022e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_X:F

    const v0, 0x7f0b022f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_Y:F

    const v0, 0x7f0b0236

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    const v0, 0x7f0b0237

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    const v0, 0x7f0b0234

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    const v0, 0x7f0b0235

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    const v1, 0x7f0b002a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0b002b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0b002c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    const v1, 0x7f0b002d

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    const v1, 0x7f0b002e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0b002f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0b0030

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    const v1, 0x7f0b0031

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SCREEN_HEIGHT:I

    const v0, 0x7f0b01d3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SHUTTER_BUTTON_WIDTH:F

    const v0, 0x7f0b02d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_Y:I

    const v0, 0x7f0b01d1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_DIAMETER:I

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    const-string v0, ".virtualshot.temp"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotStatus:I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "VirtualShot"

    const-string v1, "VirtualShot() - create"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setHRMsensor(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startGuideDeviceNextAnimation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->virtualShotGuideDeviceAnimation(IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/VirtualShot;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->hideVirtualShotGuideDeviceAnimation(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->clearMessageHandler()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    return-void
.end method

.method private cancelHandlerMessages()V
    .locals 3

    const/4 v2, 0x7

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private cancelVirtualShot()V
    .locals 2

    const-string v0, "VirtualShot"

    const-string v1, "cancelVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->hideStopButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const-string v0, "VirtualShot"

    const-string v1, "cancelVirtualShot : cancelCaptureForVirtualShot"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelTakePicture()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStopVirtualShot()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFlashMode(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->removeTempFile()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    goto :goto_0
.end method

.method private clearMessageHandler()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->access$900(Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->access$800(Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    return-void
.end method

.method private getCaptureDirection()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    return v0
.end method

.method private getTempFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    return-object v0
.end method

.method private getVirtualShotStatus()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotStatus:I

    return v0
.end method

.method private hideStopButton()V
    .locals 2

    const-string v0, "VirtualShot"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->requestFocus(I)V

    return-void
.end method

.method private hideVirtualShotGuideDeviceAnimation(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideVirtualShotGuideDeviceAnimation: mAnimationGuideDevice["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] will be invisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->cancelAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initDeviceAnimation()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "VirtualShot"

    const-string v1, "initDeviceAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    return-void
.end method

.method private isVirtualShotSavingAllowed()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeTempFile()V
    .locals 6

    const-string v3, "VirtualShot"

    const-string v4, "removeTempFile"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "VirtualShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "VirtualShot"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopAnimationTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->initDeviceAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelHandlerMessages()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->resetProgressView()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->resetCaptureGuideRect()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    :cond_0
    return-void
.end method

.method private resetCaptureGuideRect()V
    .locals 5

    const v4, 0x7f0200d4

    const v3, 0x7f0200bf

    const/4 v2, 0x0

    const-string v0, "VirtualShot"

    const-string v1, "resetCaptureGuideRect"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0
.end method

.method private resetProgressView()V
    .locals 4

    const/4 v3, 0x4

    const-string v1, "VirtualShot"

    const-string v2, "resetProgressView"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V
    .locals 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->cancelAnimation()V

    goto :goto_0
.end method

.method private setCapturingVirtualShot()V
    .locals 2

    const-string v0, "VirtualShot"

    const-string v1, "setCapturingShot"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopAnimationTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->initDeviceAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->updateCaptureLayout(I)V

    return-void
.end method

.method private setFrontMode(Z)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontMode: bIsFront-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200be

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200c0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200c3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200be

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200d3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200d8

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200d9

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private setHRMsensor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setOutputFile()V
    .locals 6

    const-string v3, "VirtualShot"

    const-string v4, "setOutputFile"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VirtualShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "VirtualShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, -0xa

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStartVirtualShot()V
    .locals 4

    const v3, 0x7f0200e1

    const v2, 0x7f0200cc

    const-string v0, "VirtualShot"

    const-string v1, "setStartVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startCaptureExpireTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setFrontMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->updateCaptureLayout(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startGuideDeviceNextAnimation()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0
.end method

.method private setStopVirtualShot()V
    .locals 2

    const-string v0, "VirtualShot"

    const-string v1, "setStopVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    goto :goto_0
.end method

.method private setVirtualShotStatus(I)V
    .locals 3

    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVirtualShotStatus - status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->sVirtualShotStatus:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotStatus:I

    goto :goto_0
.end method

.method private showStopButton()V
    .locals 2

    const-string v0, "VirtualShot"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    return-void
.end method

.method private showVirtualShotGuideGroup(Z)V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "VirtualShot"

    const-string v1, "showVirtualShotGuideGroup : will be visible"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VirtualShot"

    const-string v1, "showVirtualShotGuideGroup : will be invisible"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private startCaptureExpireTimer()V
    .locals 5

    const/4 v4, 0x7

    const-string v0, "VirtualShot"

    const-string v1, "startCaptureExpireTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private startFadeInAnimationTimer()V
    .locals 5

    const/4 v4, 0x2

    const-string v0, "VirtualShot"

    const-string v1, "startFadeInAnimationTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    const-wide/16 v2, 0x44c

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startFadeOutAnimationTimer()V
    .locals 5

    const/4 v4, 0x3

    const-string v0, "VirtualShot"

    const-string v1, "startFadeOutAnimationTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private startGuideDeviceNextAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->virtualShotGuideDeviceAnimation(IZ)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    :cond_1
    return-void
.end method

.method private startNextAnimationTimer()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "VirtualShot"

    const-string v1, "startNextAnimationTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private stopAnimationTimer()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v0, "VirtualShot"

    const-string v1, "stopAnimationTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method private stopCaptureExpireTimer()V
    .locals 3

    const/4 v2, 0x7

    const-string v0, "VirtualShot"

    const-string v1, "stopCancelTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private stopVirtualShot()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const-string v0, "VirtualShot"

    const-string v1, "stopVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVirtualShot()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStopVirtualShot()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    :cond_0
    return-void
.end method

.method private updateCaptureLayout(I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x4

    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCaptureLayout("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v4, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200cc

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200cd

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200d0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200d1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200d2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200da

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200db

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200e0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_1

    :cond_3
    if-ne p1, v6, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200c5

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200c9

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200ca

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200cb

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200e1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200e2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200e3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0200e4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200e5

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200e6

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200e7

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "VirtualShot"

    const-string v2, "unknown direction - apply default direction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private virtualShotGuideDeviceAnimation(IZ)V
    .locals 8

    const-wide/16 v6, 0x226

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-string v0, "VirtualShot"

    const-string v1, "startGuideDeviceAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtualShotGuideDeviceAnimation: mAnimationGuideDevice["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] will be start fade-in animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startFadeInAnimationTimer()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtualShotGuideDeviceAnimation: mAnimationGuideDevice["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] will be start fade-out animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startFadeOutAnimationTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startNextAnimationTimer()V

    goto :goto_0
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

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

.method public isChangingShootingModeDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v3, [I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVirtualShotListener(Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setFrontMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    const/4 v2, 0x6

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 3

    const/16 v2, 0x7530

    const-string v0, "picture-size"

    const-string v1, "1280x720"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 9

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v3, 0x0

    aget v3, v1, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_W:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_H:F

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200d3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200d4

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200d4

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200d7

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200e2

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200e3

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200e4

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200e5

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200e6

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x5

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200e7

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    const/4 v8, 0x0

    :goto_0
    const/4 v0, 0x6

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200d5

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200d6

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200d7

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200d8

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200d9

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    const/4 v8, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge v8, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    const/4 v8, 0x0

    :goto_2
    const/4 v0, 0x6

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_3
    const/4 v0, 0x5

    if-ge v8, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_X:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v1

    const v4, 0x7f0200ef

    const v5, 0x7f0200f1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0166

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$2;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p3, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 2

    const-string v0, "sef_file_type"

    const/16 v1, 0x8d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "height"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "width"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onHRMShutterDetected()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->onShutterKeyReleased(I)Z

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setVirtualShotListener(Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopAnimationTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->initDeviceAnimation()V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->access$800(Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->access$900(Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    :cond_4
    return-void
.end method

.method public onInteractiveCaptureProgressed(II)V
    .locals 7

    const/16 v6, 0x64

    const/4 v5, 0x0

    const-string v2, "VirtualShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInteractiveCaptureProgressed - progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frame_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VirtualShot"

    const-string v3, "onInteractiveCaptureProgressed - wrong state, callback is returned."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showStopButton()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x10

    if-gt v2, v3, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "VirtualShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInteractiveCaptureProgressed - mProgressGuideFG["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] will be VISIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V

    if-lez v1, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "VirtualShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInteractiveCaptureProgressed - mProgressGuideFG["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] will be VISIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x21

    if-gt v2, v3, :cond_6

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x32

    if-gt v2, v3, :cond_7

    const/4 v1, 0x2

    goto/16 :goto_1

    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x43

    if-gt v2, v3, :cond_8

    const/4 v1, 0x3

    goto/16 :goto_1

    :cond_8
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x54

    if-gt v2, v3, :cond_9

    const/4 v1, 0x4

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x5

    goto/16 :goto_1

    :cond_a
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-ne v2, v6, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V

    :cond_b
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-ne v2, v6, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto/16 :goto_0
.end method

.method public onInteractiveDirectionChanged(II)V
    .locals 3

    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractiveDirectionChanged - direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setCapturingVirtualShot()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInteractiveDirectionWarning(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractiveDirectionWarning - warn_state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01ad

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01af

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInteractiveProcessCompleted()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "VirtualShot"

    const-string v5, "onInteractiveProcessCompleted"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->hideStopButton()V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getTempFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->renamePostSavingFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "VirtualShot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interactive file name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentThumbnailSize()[I

    move-result-object v3

    aget v4, v3, v7

    aget v5, v3, v8

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4, v2, v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addUriListInSecureCamera(Landroid/net/Uri;)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v5, 0x200

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    goto/16 :goto_0

    :cond_4
    const-string v4, "VirtualShot"

    const-string v5, "interactive output file error"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    goto :goto_2
.end method

.method public onInteractiveProcessProgressed(II)V
    .locals 3

    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractiveProcessProgressed - current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isVirtualShotSavingAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VirtualShot"

    const-string v2, "onKeyDown : Ignore - VirtualShot can be saved (too short)"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown : ignore - status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x5

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :sswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    if-lt v2, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isVirtualShotSavingAllowed()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-ne v0, v4, :cond_3

    :cond_2
    const-string v0, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp - invalid status - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    if-lt v0, v3, :cond_4

    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : stop Virtual shot"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto :goto_0

    :cond_4
    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : cancel Virtual shot"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_0

    :cond_5
    const-string v1, "VirtualShot"

    const-string v2, "onKeyUp : Ignore - Virtual Shot can be saved (too short)"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : ignore - status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    if-lt v0, v3, :cond_7

    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : stop Virtual shot"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto/16 :goto_0

    :cond_7
    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : cancel Virtual shot"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VirtualShot"

    const-string v2, "Return, isCapturing"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->lockAEAWB()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->stopFaceDetection()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isHalfShutter()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleTimer(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestTransientAudioFocus()V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setOutputFile()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVirtualShot()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStartVirtualShot()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3

    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleCaptureEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4

    const/16 v3, 0x3d

    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStartVirtualShot()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    goto :goto_0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
