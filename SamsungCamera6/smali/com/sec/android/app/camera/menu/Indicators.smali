.class public Lcom/sec/android/app/camera/menu/Indicators;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "Indicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "Indicators"

.field private static final VIEW_MODE_INDICATOR_TIMEOUT:I = 0x7d0

.field private static final VISIBLE_REMAIN_COUNT:I = 0x12c

.field private static final VOICE_INDICATOR_TIMEOUT:I = 0x320


# instance fields
.field private final INDICATOR_GROUP_HEIGHT:I

.field private final INDICATOR_GROUP_ITEM_PADDING:I

.field private final INDICATOR_GROUP_LANDSCAPE_X_PADDING:I

.field private final INDICATOR_GROUP_PORTRAIT_X_PADDING:I

.field private final INDICATOR_GROUP_POS_X:I

.field private final INDICATOR_GROUP_POS_Y:I

.field private final INDICATOR_GROUP_WIDTH:I

.field private final INDICATOR_ITEM_HEIGHT:I

.field private final INDICATOR_REMAIN_COUNTER_TEXT_SIZE:I

.field private final INDICATOR_TEXT_COLOR:I

.field private final INDICATOR_TEXT_STROKE_COLOR:I

.field private final INDICATOR_TEXT_STROKE_WIDTH:I

.field private mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

.field private mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

.field private final mHideViewModeIndicator:Ljava/lang/Runnable;

.field private final mHideVoiceIndicator:Ljava/lang/Runnable;

.field private mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

.field private mRemainCount:I

.field private mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

.field private mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

.field private mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

.field private mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

.field private mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    const v0, 0x7f0b0282

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_WIDTH:I

    const v0, 0x7f0b0281

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    const v0, 0x7f0b00e3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_POS_X:I

    const v0, 0x7f0b00e4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_POS_Y:I

    const v0, 0x7f0b02ba

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_ITEM_PADDING:I

    const v0, 0x7f0b033d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_PORTRAIT_X_PADDING:I

    const v0, 0x7f0b033c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_X_PADDING:I

    const v0, 0x7f0b02bb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_ITEM_HEIGHT:I

    const v0, 0x7f0e000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_COLOR:I

    const v0, 0x7f0c0019

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0e000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_COLOR:I

    const v0, 0x7f0b0283

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_REMAIN_COUNTER_TEXT_SIZE:I

    new-instance v0, Lcom/sec/android/app/camera/menu/Indicators$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Indicators$1;-><init>(Lcom/sec/android/app/camera/menu/Indicators;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/camera/menu/Indicators$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Indicators$2;-><init>(Lcom/sec/android/app/camera/menu/Indicators;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/Indicators;->init()V

    return-void
.end method

.method private init()V
    .locals 13

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v12

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v11

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_X_PADDING:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_PORTRAIT_X_PADDING:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_ITEM_PADDING:I

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setDirection(I)V

    :goto_0
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setTimerIndicator(I)V

    const/4 v10, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    sub-int v2, v12, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_PORTRAIT_X_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_X_PADDING:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_ITEM_PADDING:I

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setDirection(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_ITEM_PADDING:I

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setDirection(I)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    new-instance v0, Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_ITEM_HEIGHT:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_ITEM_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_REMAIN_COUNTER_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020223

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBatteryLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setBatteryLevel(I)V

    const/4 v10, 0x0

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setFocusable(Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setClipping(Z)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_VOICE_COMMAND:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    :goto_3
    const/4 v10, 0x0

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setVisibility(I)V

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setVisibility(I)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setViewModeIndicator(I)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->setRotatable(Z)V

    :goto_5
    iget v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setRemainCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setCoverCamera(Z)V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_5
.end method

.method private setCoverCamera(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTimerIndicator(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->setTimerStatus(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterPhaseAFListener()V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/Indicators;->setTimerIndicator(I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0

    :sswitch_2
    if-ne p2, v4, :cond_2

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setCoverCamera(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/menu/Indicators;->setCoverCamera(Z)V

    goto :goto_0

    :sswitch_3
    if-eq p2, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0

    :sswitch_4
    if-eq p2, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_0
        0xc -> :sswitch_4
        0x47 -> :sswitch_1
        0x6a -> :sswitch_3
        0x6c -> :sswitch_3
        0xaa -> :sswitch_3
        0x137 -> :sswitch_2
    .end sparse-switch
.end method

.method public refreshAllIndicator()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setTimerIndicator(I)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_VOICE_COMMAND:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setRemainCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(I)V

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setViewModeIndicator(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method public setBatteryLevel(I)V
    .locals 6

    const/16 v5, 0x10

    const/4 v1, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_3

    if-ge p1, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0119

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-lt p1, v1, :cond_4

    if-ge p1, v5, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0119

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-lt p1, v5, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setFlashIndicator(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->setFlashStatus(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1
.end method

.method public setHDRIndicator(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->setHDRStatus(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setRemainCount(I)V
    .locals 5

    const/4 v2, 0x4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setViewModeIndicator(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setViewMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setVoiceStatus(I)V
    .locals 4

    const-string v0, "Indicators"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setVoiceStatus(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1
.end method
