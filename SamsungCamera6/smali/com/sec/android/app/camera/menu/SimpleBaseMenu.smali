.class public Lcom/sec/android/app/camera/menu/SimpleBaseMenu;
.super Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.source "SimpleBaseMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;


# static fields
.field private static final COVER_CAMERA_CLOSE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SimpleBaseMenu"


# instance fields
.field private BASEMENU_GROUP_HEIGHT:I

.field private BASEMENU_GROUP_ICON_GAP:I

.field private NAVIGATOR_HEIGHT:I

.field private RECORDING_BUTTON_DIAMETER:I

.field private RECORDING_BUTTON_POS_X:I

.field private RECORDING_BUTTON_POS_Y:I

.field private RECORDING_BUTTON_WIDTH:I

.field private SCREEN_HEIGHT_FIRST:I

.field private SCREEN_ORIENTATION:I

.field private SCREEN_WIDTH_FIRST:I

.field private SHUTTER_BUTTON_EXPAND_AREA:I

.field private SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

.field private SHUTTER_BUTTON_POS_X:I

.field private SHUTTER_BUTTON_POS_Y:I

.field private SHUTTER_BUTTON_PROGRESS_POS_X:I

.field private SHUTTER_BUTTON_PROGRESS_POS_Y:I

.field private SHUTTER_BUTTON_PROGRESS_WIDTH:I

.field private SHUTTER_BUTTON_WIDTH:I

.field private SIMPLE_QUICK_SETTING_HEIGHT:I

.field private SIMPLE_QUICK_SETTING_POS_X:I

.field private SIMPLE_QUICK_SETTING_POS_Y:I

.field private SIMPLE_QUICK_SETTING_WIDTH:I

.field private SNAPSHOT_BUTTON_WIDTH:I

.field private THUMBNAIL_BUTTON_POS_X:I

.field private THUMBNAIL_BUTTON_POS_Y:I

.field private THUMBNAIL_BUTTON_WIDTH:I

.field private mCurrentMultiWindowMode:I

.field private mShutterSnapshotRatio:F

.field private mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

.field private mSnapshotShutterRatio:F

.field private translationDelta:F


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->init(III)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->resetBaseLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->setPreviewTouchEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->setAttachMode(Z)V

    new-instance v1, Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$1;-><init>(Lcom/sec/android/app/camera/menu/SimpleBaseMenu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    const-string v1, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimpleBaseMenu-loading**added["

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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Add View"

    invoke-static {v1, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    const-string v3, "SimpleBaseMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SimpleBaseMenu : Invalid MultiWindow Size!! set size temporary. w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto/16 :goto_1
.end method

.method private init(III)V
    .locals 8

    const v7, 0x7f0b032d

    const v6, 0x7f0b01cc

    const/4 v5, 0x2

    const/4 v4, 0x0

    const v2, 0x7f0b02e5

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_HEIGHT:I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const v2, 0x7f0b02e4

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    :goto_0
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0b02d3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    const v2, 0x7f0b0343

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->NAVIGATOR_HEIGHT:I

    :cond_0
    iput v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_POS_X:I

    iput v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_POS_Y:I

    const v2, 0x7f0b01d3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->NAVIGATOR_HEIGHT:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-ne v2, v5, :cond_4

    :cond_1
    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_WIDTH:I

    iput p3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_HEIGHT:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int v2, p2, v2

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->NAVIGATOR_HEIGHT:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int v2, p3, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    :goto_1
    const v2, 0x7f0b01d2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    const v2, 0x7f0b0045

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    const v2, 0x7f0b0295

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_DIAMETER:I

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-ne v2, v5, :cond_5

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_X:I

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    :goto_2
    const-string v2, "SimpleBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init : orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shutterButton ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), recordingButton ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_X:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_Y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), thumbnailButton ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const v2, 0x7f0b0050

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    goto/16 :goto_0

    :cond_4
    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_WIDTH:I

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_HEIGHT:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int v2, p2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    sub-int v2, p3, v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->NAVIGATOR_HEIGHT:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    goto/16 :goto_1

    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_PROGRESS_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    goto/16 :goto_2
.end method

.method private makeRecordingButton()Lcom/samsung/android/glview/GLButton;
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0200fa

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    if-ne v1, v10, :cond_0

    const v6, 0x7f0200fb

    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v5, v5

    move v8, v7

    move v9, v7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    if-nez v0, :cond_2

    const-string v1, "SimpleBaseMenu"

    const-string v2, "makeRecordingButton : fail to make button"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a01f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v10, :cond_1

    :cond_3
    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method private makeShutterButton()Lcom/samsung/android/glview/GLButton;
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    const v6, 0x7f0200eb

    const v7, 0x7f0200ed

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    if-ne v1, v10, :cond_0

    const v6, 0x7f0200ec

    const v7, 0x7f0200ee

    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v9, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    int-to-float v5, v5

    move v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    if-nez v0, :cond_2

    const-string v1, "SimpleBaseMenu"

    const-string v2, "makeShutterButton : fail to make button"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0225

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method private makeShutterProgressWheel()Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
    .locals 13

    const/4 v6, 0x1

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v4, 0x40000000    # 2.0f

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    add-int v7, v1, v2

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    add-int v8, v1, v2

    iget v10, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    iget v9, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    if-ne v1, v6, :cond_0

    int-to-float v1, v10

    mul-float/2addr v1, v5

    float-to-int v10, v1

    int-to-float v1, v9

    mul-float/2addr v1, v5

    float-to-int v9, v1

    :cond_0
    int-to-float v1, v10

    div-float/2addr v1, v4

    float-to-int v1, v1

    sub-int v11, v7, v1

    int-to-float v1, v9

    div-float/2addr v1, v4

    float-to-int v1, v1

    sub-int v12, v8, v1

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    int-to-float v2, v11

    int-to-float v3, v12

    int-to-float v4, v10

    int-to-float v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    if-nez v0, :cond_1

    const-string v1, "SimpleBaseMenu"

    const-string v2, "makeShutterProgressWheel : fail to make button"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    goto :goto_0
.end method

.method private makeThumbnailButton()Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;
    .locals 4

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    if-nez v0, :cond_0

    const-string v1, "SimpleBaseMenu"

    const-string v2, "makeThumbnailButton : fail to make button"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setTag(I)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    goto :goto_0
.end method

.method private relocateGUI(III)V
    .locals 6

    const v5, 0x7f0b032d

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    sub-int v1, v2, p2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    sub-int/2addr v2, p3

    div-int/lit8 v0, v2, 0x2

    const-string v2, "SimpleBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relocateGUI : orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shutterButton ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") will be ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->moveBaseLayoutAbsolute(FF)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FF)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3, p3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setSideQuickSettingSize(II)V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->onLayoutChanged(III)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    sub-int/2addr v2, p2

    div-int/lit8 v1, v2, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    sub-int v0, v2, p3

    const-string v2, "SimpleBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relocateGUI : orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shutterButton ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") will be ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->moveBaseLayoutAbsolute(FF)V

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FF)V

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, p2, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setSideQuickSettingSize(II)V

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->onLayoutChanged(III)V

    goto/16 :goto_0
.end method

.method private resetBaseLayout()V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getVisibility()Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getToastViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->clear()V

    iput-object v12, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v12}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getToastViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_POS_X:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_POS_Y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;IFFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setRotatable(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Indicators;->clear()V

    iput-object v12, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/menu/Indicators;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/menu/Indicators;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableIndicators:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getVisibility()I

    move-result v10

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->clear()V

    iput-object v12, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeShutterProgressWheel()Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v10, v13}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v9

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    iput-object v12, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeShutterButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9, v13}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v8

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    iput-object v12, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeRecordingButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8, v13}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->getVisibility()I

    move-result v11

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->clear()V

    iput-object v12, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeThumbnailButton()Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v11, v13}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail()V

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_HEIGHT:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->resizeSideQuickSetting(III)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->clear()V

    return-void
.end method

.method public disableView(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v5, :cond_2

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->unregisterEAM(I)V

    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    :cond_3
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_4

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return-void
.end method

.method public enableView(I)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v4, :cond_2

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->registerEAM(I)V

    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    :cond_3
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_4

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return-void
.end method

.method protected getAnchor(I)Lcom/samsung/android/glview/GLImage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    return-object v0
.end method

.method public getLastGestureDirection()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->getLastDirection()I

    move-result v0

    return v0
.end method

.method public getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideCaptureProgressText()V
    .locals 0

    return-void
.end method

.method public hideView(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    :cond_0
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->unregisterEAM(I)V

    :cond_1
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingAnimation:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->startAnimation()V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->unregisterEAM(I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return-void

    :cond_5
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_6
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_7
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v6, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->unregisterEAM(I)V

    goto :goto_0
.end method

.method protected makeBaseMenuVIAnimation()V
    .locals 22

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/4 v6, 0x2

    move/from16 v0, v17

    if-ne v0, v6, :cond_a

    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    neg-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    div-float v5, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    neg-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    div-float v19, v6, v7

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v6, :cond_7

    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v12, v13, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v10, 0x23a

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0x190

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0x23a

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v13, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v13, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v14, 0x23a

    move v6, v3

    move v7, v2

    move v8, v5

    move v9, v4

    invoke-static/range {v6 .. v14}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0x190

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0x23a

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v6, :cond_8

    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v13, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v13, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v14, 0x23a

    move v6, v15

    move/from16 v7, v18

    move/from16 v8, v16

    move/from16 v9, v19

    invoke-static/range {v6 .. v14}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0x23a

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0x23a

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v13, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v13, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v14, 0x23a

    move/from16 v6, v18

    move v7, v15

    move/from16 v8, v19

    move/from16 v9, v16

    invoke-static/range {v6 .. v14}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0x23a

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0x23a

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v6, :cond_9

    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0xc8

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0xc8

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0xc8

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0xc8

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    :cond_9
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    div-float v3, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    div-float v18, v6, v7

    goto/16 :goto_0
.end method

.method protected makeRecordingMenuVIAnimation()V
    .locals 20

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    move/from16 v16, v0

    if-eqz v16, :cond_0

    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    div-float v4, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    div-float v18, v5, v6

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v6, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$2;-><init>(Lcom/sec/android/app/camera/menu/SimpleBaseMenu;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v8, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v8}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v9, 0x23a

    invoke-static/range {v1 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v6, 0x1d6

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v10, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v10}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v11, 0x23a

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v6, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$3;-><init>(Lcom/sec/android/app/camera/menu/SimpleBaseMenu;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v12, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v12}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v13, 0x23a

    move v5, v14

    move/from16 v6, v17

    move v7, v15

    move/from16 v8, v18

    invoke-static/range {v5 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v6, 0x23a

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v10, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v10}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v11, 0x23a

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v6, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$4;-><init>(Lcom/sec/android/app/camera/menu/SimpleBaseMenu;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v6, 0x12c

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v10, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v10}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    const/16 v11, 0x12c

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    :cond_3
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    neg-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    div-float v2, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    neg-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    div-float v17, v5, v6

    goto/16 :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "SimpleBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v2, :cond_0

    const-string v1, "SimpleBaseMenu"

    const-string v2, "CameraContext is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "SimpleBaseMenu"

    const-string v2, "View is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->isShutterProgressWheelVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v1, "SimpleBaseMenu"

    const-string v2, "Capture is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "SimpleBaseMenu"

    const-string v2, "Preview has not started yet."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v1, "SimpleBaseMenu"

    const-string v2, "Recording is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const-string v1, "SimpleBaseMenu"

    const-string v2, "Switch camera is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    const-string v2, "SimpleBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraClosed()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPictureSavingThread()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isThumbnailExist()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showNoImagePopup()V

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1d

    const/16 v3, 0x1c21

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v2, "quickview"

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGallery(Ljava/lang/String;)Z

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public onFlingDirection(II)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->isPressed(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->isShutterProgressWheelVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeMSGToStopTouchAE()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSwitchCameraSelect()Z

    move v0, v1

    goto :goto_0
.end method

.method protected onHide()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-string v0, "SimpleBaseMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    iput-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->isReviewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->hideReview(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->isVisible()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->endShutterProgressWheel()V

    :cond_2
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_5

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_5

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayoutChanged(III)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChanged : orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    if-lt p2, v3, :cond_0

    if-ge p3, v3, :cond_1

    :cond_0
    const-string v0, "SimpleBaseMenu"

    const-string v1, "size error!!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-eq v0, p1, :cond_5

    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChanged : orientation is changed!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    iput p3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->init(III)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->resetBaseLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    iput p3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->init(III)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->resetBaseLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->relocateGUI(III)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    goto :goto_0
.end method

.method public onScrollDirection(II)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onShow()V
    .locals 3

    const-string v0, "SimpleBaseMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

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

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v5, 0x82

    const/16 v4, 0x1b

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x41 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->isShareViaWorking()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->hideReview(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0
.end method

.method public removeSideQuickSettingItems()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->clearSideQuickSetting()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideSideQuickSettingToast()V

    return-void
.end method

.method public setBaseMenuAlpha(F)V
    .locals 0

    return-void
.end method

.method public setCapturingProgress(I)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->resetView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs setSideQuickSettingItems([I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->updateSideQuickSetting([I)V

    return-void
.end method

.method public showCaptureProgressText()V
    .locals 0

    return-void
.end method

.method public showView(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_2
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v0

    if-ne v0, v4, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_5
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->showThumbnailButton()V

    :cond_6
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->registerEAM(I)V

    :cond_7
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_f

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingAnimation:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return-void
.end method
