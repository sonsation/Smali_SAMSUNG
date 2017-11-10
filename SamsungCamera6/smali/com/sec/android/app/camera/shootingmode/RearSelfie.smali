.class public Lcom/sec/android/app/camera/shootingmode/RearSelfie;
.super Ljava/lang/Object;
.source "RearSelfie.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ShutterEventListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_SELFIE_GUIDE_MOVING_THRESHOLD:F = 5.0f

.field private static final DELAY_TIME_TO_INTERVAL_SHOT_CAPTURE:I = 0x7d0

.field private static final DELAY_TIME_TO_INTERVAL_SHOT_FACE_DETECT:I = 0x1f4

.field private static final MAIN_FD_APPROACH_GUIDE_BOUNDARYLINE:I = 0x1

.field private static final MAIN_FD_APPROACH_GUIDE_BOUNDARYLINE_100:I = 0x4

.field private static final MAIN_FD_APPROACH_GUIDE_BOUNDARYLINE_TO_100:I = 0x3

.field private static final MAIN_FD_APPROACH_GUIDE_BOUNDARYLINE_TO_50:I = 0x2

.field private static final MAIN_FD_OUT_OF_GUIDE_BOUNDARYLINE:I = 0x0

.field private static final MOVING:I = 0x2

.field private static final NONE:I = 0x0

.field private static final RESIZING:I = 0x1

.field private static final SELFIE_GUIDE_HEIGHT_MAX:I = 0x3

.field private static final SELFIE_GUIDE_HEIGHT_MIN:I = 0x1

.field private static final SELFIE_GUIDE_WIDTH_MAX:I = 0x2

.field private static final SELFIE_GUIDE_WIDTH_MIN:I = 0x0

.field private static final SELFSHOT_CAPTURE_START:I = 0x1

.field private static final SELFSHOT_CAPTURE_TIMER:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "RearSelfie"

.field private static final TOUCH_VERTEX_LB:I = 0x2

.field private static final TOUCH_VERTEX_LT:I = 0x1

.field private static final TOUCH_VERTEX_NON:I = 0x0

.field private static final TOUCH_VERTEX_RB:I = 0x4

.field private static final TOUCH_VERTEX_RT:I = 0x3


# instance fields
.field private final RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

.field private final SELFIE_GUIDE_HEIGHT:F

.field private final SELFIE_GUIDE_POS_LANDSCAPE_X:F

.field private final SELFIE_GUIDE_POS_Y:F

.field private final SELFIE_GUIDE_WIDTH:F

.field private final TOUCH_VERTEX_AREA_WIDTH:I

.field private mAmountDeltaX:F

.field private mAmountDeltaY:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFaceDetectionRect:Landroid/graphics/Rect;

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

.field private mMovePoint:Landroid/graphics/PointF;

.field private mPreviewRatio:D

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRearSelfieGuideState:I

.field private mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

.field private mSelectedSelfieGuide:I

.field private mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

.field private mSelfieGuideMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b01a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    const v0, 0x7f0b01a3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_POS_LANDSCAPE_X:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_POS_Y:F

    const v0, 0x7f0b01a5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieGuideState:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMovePoint:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRatio:D

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie$1;-><init>(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void

    :array_0
    .array-data 4
        0x7f0201c1
        0x7f0201c3
        0x7f0201c2
        0x7f0201c5
        0x7f0201c4
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->clearMessageHandler()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->startSelfShotCapture()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method private checkShotROIState([II)I
    .locals 6

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v5, p1, v0

    if-ne v5, v1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_3

    aget v1, p1, v0

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_5

    aget v1, p1, v0

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_7

    aget v1, p1, v0

    if-ne v1, v4, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private clearMessageHandler()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;->access$300(Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    return-void
.end method

.method private deNormalize(FI)F
    .locals 2

    const/high16 v0, 0x447a0000    # 1000.0f

    add-float/2addr v0, p1

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v0, v1

    return v0
.end method

.method private getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F
    .locals 3

    const v2, 0x3f666666    # 0.9f

    const v1, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

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

.method private hideSelfieGuideFrame()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    :cond_1
    return-void
.end method

.method private isPreviewRatioChanged()Z
    .locals 8

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v4, v5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    invoke-static {v4, v0}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v2

    iget-wide v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRatio:D

    invoke-static {v6, v7, v2, v3}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "RearSelfie"

    const-string v6, "isPreviewRatioChanged - Preview ratio is changed"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRatio:D

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isRearSelfieFDDetecting()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRearSelfieGuideStateChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFaceCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->isRearSelfieFDDetecting()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isReviewShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieGuideState:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieGuideState:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieGuideState:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->playRearSelfieGuideStateSound(I)V

    goto :goto_0
.end method

.method private playRearSelfieGuideStateSound(I)V
    .locals 7

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v1, "RearSelfie"

    const-string v2, "playRearSelfieGuideStateSound"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getForcedShutterSound()I

    move-result v1

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    const/4 v2, 0x2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v6, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removeRearSelfieCaptureMessage()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;->removeMessages(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->stopHaptic(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    return-void
.end method

.method private resetFaceDetectionRect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetFaceRect()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    :cond_1
    return-void
.end method

.method private resetSelfieGuideFrame()V
    .locals 8

    const/4 v3, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->resetTranslate()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v2, v3, v7

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v3, v7

    sub-float v1, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    :cond_0
    return-void
.end method

.method private declared-synchronized resizeSelfieGuide(IFFFF)V
    .locals 8

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_2

    cmpl-float v4, p2, v6

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v4, v3

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_3

    cmpl-float v4, p3, v6

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v2

    :cond_1
    :goto_2
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    sub-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    sub-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p3, v5}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_0

    cmpg-float v4, p2, v6

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v4, v1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_1

    cmpg-float v4, p3, v6

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v0

    goto :goto_2

    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_6

    cmpl-float v4, p2, v6

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float p2, v4, v3

    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_7

    cmpg-float v4, p3, v6

    if-gtz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v2, v4

    :cond_5
    :goto_4
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    sub-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    add-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_4

    cmpg-float v4, p2, v6

    if-gtz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v4, v1

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_5

    cmpl-float v4, p3, v6

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v0, v4

    goto :goto_4

    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_a

    cmpg-float v4, p2, v6

    if-gtz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v3, v4

    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_b

    cmpl-float v4, p3, v6

    if-ltz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v2

    :cond_9
    :goto_6
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    sub-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_8

    cmpl-float v4, p2, v6

    if-ltz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v1, v4

    goto :goto_5

    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_9

    cmpg-float v4, p3, v6

    if-gtz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v0

    goto :goto_6

    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_e

    cmpg-float v4, p2, v6

    if-gtz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v3, v4

    :cond_c
    :goto_7
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_f

    cmpg-float v4, p3, v6

    if-gtz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v2, v4

    :cond_d
    :goto_8
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    add-float/2addr v4, p2

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    add-float/2addr v4, p3

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    goto/16 :goto_0

    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_c

    cmpl-float v4, p2, v6

    if-ltz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v1, v4

    goto :goto_7

    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_d

    cmpl-float v4, p3, v6

    if-ltz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    sub-float p3, v0, v4

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSelectedSelfieGuide(FF)V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v0

    cmpg-float v4, v1, p1

    if-gez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    cmpg-float v4, v3, p2

    if-gez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_2

    cmpl-float v4, v2, p1

    if-lez v4, :cond_2

    cmpg-float v4, v3, p2

    if-gez v4, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, p2

    if-lez v4, :cond_2

    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    goto :goto_0

    :cond_2
    cmpg-float v4, v1, p1

    if-gez v4, :cond_3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_3

    cmpl-float v4, v0, p2

    if-lez v4, :cond_3

    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_4

    cmpl-float v4, v2, p1

    if-lez v4, :cond_4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_4

    cmpl-float v4, v0, p2

    if-lez v4, :cond_4

    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    goto :goto_0
.end method

.method private showSelfieGuideFrame()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startSelfShotCapture()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->isRearSelfieFDDetecting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideFaceRect(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    :cond_0
    return-void
.end method

.method private stopRearSelfieGuideStateSound()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->stopHaptic(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
    .locals 3

    const-string v1, "RearSelfie"

    const-string v2, "onActivate"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ModeListMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->isPreviewRatioChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resetSelfieGuideFrame()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->reset()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->showSelfieGuideFrame()V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Lcom/sec/android/app/camera/shootingmode/RearSelfie$RearSelfieHandler;

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBeautySavingProgress(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x1a

    const/4 v3, 0x3

    const-string v0, "RearSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeautyShotSavingProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->hideSelfieGuideFrame()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 7

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_POS_LANDSCAPE_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_POS_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    const v6, 0x7f0201c1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resetSelfieGuideFrame()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLNinePatch;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 2

    const-string v0, "sef_file_type"

    const/16 v1, 0x900

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onFaceDetection([Lcom/samsung/android/camera/core/SemCamera$Face;)Z
    .locals 22

    monitor-enter p0

    const/16 v14, 0xa

    :try_start_0
    new-array v12, v14, [I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeHideFaceRectMessage()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMemoryStatus()I

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v15, 0x191

    invoke-interface {v14, v15}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v15, 0x191

    invoke-interface {v14, v15}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    monitor-exit p0

    return v14

    :cond_1
    if-eqz p1, :cond_e

    :try_start_1
    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->isRearSelfieFDDetecting()Z

    move-result v14

    if-eqz v14, :cond_e

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v10, v14, :cond_d

    const/4 v11, 0x0

    aget-object v14, p1, v10

    iget-object v14, v14, Lcom/samsung/android/camera/core/SemCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v14, v9, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->deNormalize(FI)F

    move-result v14

    iput v14, v9, Landroid/graphics/RectF;->left:F

    iget v14, v9, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->deNormalize(FI)F

    move-result v14

    iput v14, v9, Landroid/graphics/RectF;->right:F

    iget v14, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->deNormalize(FI)F

    move-result v14

    iput v14, v9, Landroid/graphics/RectF;->top:F

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->deNormalize(FI)F

    move-result v14

    iput v14, v9, Landroid/graphics/RectF;->bottom:F

    iget v14, v9, Landroid/graphics/RectF;->top:F

    iget v15, v9, Landroid/graphics/RectF;->top:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    iget v15, v9, Landroid/graphics/RectF;->top:F

    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe999999999999aL    # 0.8

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v15, v0

    add-float/2addr v14, v15

    iput v14, v9, Landroid/graphics/RectF;->top:F

    iget v14, v9, Landroid/graphics/RectF;->right:F

    iget v15, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v15

    const v15, 0x3dcccccd    # 0.1f

    mul-float v11, v14, v15

    iget v14, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v11

    iput v14, v9, Landroid/graphics/RectF;->left:F

    iget v14, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v11

    iput v14, v9, Landroid/graphics/RectF;->right:F

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    iget v15, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v15

    const v15, 0x3dcccccd    # 0.1f

    mul-float v11, v14, v15

    iget v14, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v11

    iput v14, v9, Landroid/graphics/RectF;->top:F

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v11

    iput v14, v9, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-eqz v14, :cond_2

    iget v14, v9, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v9, Landroid/graphics/RectF;->left:F

    iget v14, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v9, Landroid/graphics/RectF;->top:F

    iget v14, v9, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v9, Landroid/graphics/RectF;->right:F

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v9, Landroid/graphics/RectF;->bottom:F

    :cond_2
    iget v14, v9, Landroid/graphics/RectF;->left:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_3

    iget v14, v9, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-lez v14, :cond_4

    :cond_3
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_5

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_5

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resetFaceDetectionRect()V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    const-string v14, "RearSelfie"

    const-string v15, "RearSelfieFDRectChanged resetFaceDetectionRect return"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v5

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v14, v9, Landroid/graphics/RectF;->left:F

    cmpg-float v14, v6, v14

    if-gtz v14, :cond_6

    iget v14, v9, Landroid/graphics/RectF;->right:F

    cmpl-float v14, v7, v14

    if-ltz v14, :cond_6

    iget v14, v9, Landroid/graphics/RectF;->top:F

    cmpg-float v14, v8, v14

    if-gtz v14, :cond_6

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    cmpl-float v14, v5, v14

    if-ltz v14, :cond_6

    const/4 v14, 0x4

    aput v14, v12, v10

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v9, Landroid/graphics/RectF;->left:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v9, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v9, Landroid/graphics/RectF;->right:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_6
    cmpg-float v14, v6, v2

    if-gtz v14, :cond_7

    cmpl-float v14, v7, v2

    if-ltz v14, :cond_7

    cmpg-float v14, v8, v3

    if-gtz v14, :cond_7

    cmpl-float v14, v5, v3

    if-ltz v14, :cond_7

    const/4 v14, 0x3

    aput v14, v12, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    :cond_7
    :try_start_2
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v14, v6, v14

    add-float/2addr v14, v4

    cmpg-float v14, v14, v2

    if-gtz v14, :cond_8

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v14, v7

    sub-float/2addr v14, v4

    cmpl-float v14, v14, v2

    if-ltz v14, :cond_8

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v14, v8, v14

    add-float/2addr v14, v4

    cmpg-float v14, v14, v3

    if-gtz v14, :cond_8

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v14, v5

    sub-float/2addr v14, v4

    cmpl-float v14, v14, v3

    if-ltz v14, :cond_8

    const/4 v14, 0x2

    aput v14, v12, v10

    goto :goto_2

    :cond_8
    iget v14, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v14, v4

    cmpl-float v14, v6, v14

    if-gtz v14, :cond_9

    add-float v14, v7, v4

    iget v15, v9, Landroid/graphics/RectF;->left:F

    cmpg-float v14, v14, v15

    if-ltz v14, :cond_9

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v4

    cmpl-float v14, v8, v14

    if-gtz v14, :cond_9

    add-float v14, v5, v4

    iget v15, v9, Landroid/graphics/RectF;->top:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_a

    :cond_9
    const/4 v14, 0x0

    aput v14, v12, v10

    goto/16 :goto_2

    :cond_a
    iget v14, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v14, v4

    cmpg-float v14, v6, v14

    if-lez v14, :cond_b

    iget v14, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v4

    cmpg-float v14, v7, v14

    if-lez v14, :cond_b

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v4

    cmpg-float v14, v8, v14

    if-lez v14, :cond_b

    iget v14, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v4

    cmpg-float v14, v5, v14

    if-gtz v14, :cond_c

    :cond_b
    const/4 v14, 0x1

    aput v14, v12, v10

    goto/16 :goto_2

    :cond_c
    const-string v14, "RearSelfie"

    const-string v15, "Boundary line check error"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->checkShotROIState([II)I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->isCapturing()Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resetFaceDetectionRect()V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    const-string v14, "RearSelfie"

    const-string v15, "RearSelfieFDRectChanged resetFaceDetectionRect"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetFaceRect()V

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieGuideState:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->showSelfieGuideFrame()V

    return v3

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInactivate()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "RearSelfie"

    const-string v1, "onInActivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopFaceDetection()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->hideSelfieGuideFrame()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    invoke-direct {p0, v3, v3}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->clearMessageHandler()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSelected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideFaceRect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    const/4 v0, 0x0

    return v0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resetFaceDetectionRect()V

    :cond_0
    return-void
.end method

.method public onShutter()V
    .locals 0

    return-void
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
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideFaceRect(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0

    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0

    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x3

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    if-ne p1, v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v6

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->setSelectedSelfieGuide(FF)V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eqz v0, :cond_2

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    goto :goto_1

    :cond_2
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMovePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMovePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v3, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_1

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    const/4 v2, 0x0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    const/4 v2, 0x0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    const/4 v3, 0x0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    const/4 v3, 0x0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_b

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eq v6, v0, :cond_a

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-ne v5, v0, :cond_b

    :cond_a
    const/4 v2, 0x0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eq v7, v0, :cond_c

    const/4 v0, 0x4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-ne v0, v1, :cond_d

    :cond_c
    const/4 v2, 0x0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_f

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eq v6, v0, :cond_e

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-ne v7, v0, :cond_f

    :cond_e
    const/4 v3, 0x0

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eq v5, v0, :cond_10

    const/4 v0, 0x4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-ne v0, v1, :cond_11

    :cond_10
    const/4 v3, 0x0

    :cond_11
    const-string v0, "RearSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SelfShot][BONG]onTouch ACTION_MOVE / RESIZING: mSelectedSelfieGuide : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", DeltaX : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", DeltaY : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resizeSelfieGuide(IFFFF)V

    goto/16 :goto_2

    :pswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    if-ne v1, v6, :cond_12

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    add-float/2addr v5, v7

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    :cond_12
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    goto/16 :goto_1

    :cond_13
    const-string v1, "RearSelfie"

    const-string v4, "[SelfShot]view is not self shot frame view"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
