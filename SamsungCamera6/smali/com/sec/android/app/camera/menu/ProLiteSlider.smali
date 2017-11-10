.class public Lcom/sec/android/app/camera/menu/ProLiteSlider;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_150:I = 0x96

.field private static final EXPOSURE_INDICATOR_COUNT:I = 0x5

.field private static final HIDE_SLIDER_TIMER_INTERVAL:J = 0xbb8L

.field private static final HIDE_SLIDER_TIME_OUT_MSG:I = 0x0

.field private static final ISO_INDICATOR_COUNT:I

.field public static final SLIDER_ID_EXPOSURE_VALUE:I = 0x0

.field public static final SLIDER_ID_ISO:I = 0x1

.field public static final SLIDER_ID_WB:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "ProLiteSlider"

.field private static final WB_INDICATOR_COUNT:I = 0x5


# instance fields
.field private final INDICATOR_TEXT_COLOR:I

.field private final INDICATOR_TEXT_SIZE:I

.field private final INDICATOR_TEXT_STROKE_COLOR:I

.field private final INDICATOR_TEXT_STROKE_WIDTH:I

.field private final ISO_NUM_OF_STEP:I

.field private final PROEXPOSURE_NUM_OF_STEP:I

.field private final PROEXPOSURE_VALUE_OFFSET:I

.field private final PRO_ITEM_WIDTH:I

.field private final PRO_RECORDING_RIGHT_MARGIN:I

.field private final PRO_SLIDEBAR_HEIGHT:I

.field private final PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

.field private final PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

.field private final PRO_SLIDEBAR_WIDTH:I

.field private final PRO_SLIDE_GROUP_WIDTH:I

.field private final PRO_SLIDE_INDICATOR_POS_X:I

.field private final PRO_SLIDE_INDICATOR_RIGHT_MARGIN:I

.field private final PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

.field private final PRO_SLIDE_INDICATOR_SIZE:I

.field private final PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:I

.field private final PRO_SLIDE_RECORDING_VALUE_TEXT_OFFSET_X:I

.field private final PRO_SLIDE_RIGHT_MARGIN:I

.field private final PRO_SLIDE_SIDE_MARGIN:I

.field private final PRO_SLIDE_SLIDER_POS_X:I

.field private final PRO_SLIDE_SLIDER_RIGHT_MARGIN:I

.field private final PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

.field private final PRO_SLIDE_STEP_BUTTON_POS_X:I

.field private final PRO_SLIDE_STEP_BUTTON_RIGHT_MARGIN:I

.field private final PRO_SLIDE_STEP_BUTTON_WIDTH:I

.field private final PRO_SLIDE_VALUE_TEXT_MARGIN:I

.field private final PRO_SLIDE_VALUE_TEXT_SIZE:I

.field private final PRO_SLIDE_VALUE_TEXT_WIDTH:I

.field private final PRO_SLIDE_WIDTH:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final WB_NUM_OF_STEP:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mExposureIndicator:[Lcom/samsung/android/glview/GLText;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mISOIndicator:[Lcom/samsung/android/glview/GLText;

.field private mIsISOAutoDimmed:Z

.field private mProSlider:Lcom/samsung/android/glview/GLSlider;

.field private mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

.field protected mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;

.field protected mProSliderShowListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;

.field protected mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mSliderId:I

.field private mStepButtonListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;

.field private mStepDownButton:Lcom/samsung/android/glview/GLButton;

.field private mStepUpButton:Lcom/samsung/android/glview/GLButton;

.field private mValue:I

.field private mValueText:Lcom/samsung/android/glview/GLText;

.field private mWBIndicator:[Lcom/samsung/android/glview/GLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_MAX_ISO:Ljava/lang/String;

    const-string v1, "400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    return-void

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 9

    const v8, 0x7f0c0039

    const/16 v7, 0x96

    const v6, 0x3dcccccd    # 0.1f

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    const v0, 0x7f0b0150

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_ITEM_WIDTH:I

    const v0, 0x7f0b014b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RIGHT_MARGIN:I

    const v0, 0x7f0b0168

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SIDE_MARGIN:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    const v0, 0x7f0b015c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_WIDTH:I

    const v0, 0x7f0b0160

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    const v0, 0x7f0b0156

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_RIGHT_MARGIN:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    const v0, 0x7f0b0157

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    const v0, 0x7f0b015d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_WIDTH:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SIDE_MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_HEIGHT:I

    const v0, 0x7f0b016b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    const v0, 0x7f0b016a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    const v0, 0x7f0b0165

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_RIGHT_MARGIN:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_POS_X:I

    const v0, 0x7f0b0153

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_RECORDING_RIGHT_MARGIN:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_RECORDING_RIGHT_MARGIN:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:I

    const v0, 0x7f0b016e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_RIGHT_MARGIN:I

    const v0, 0x7f0b0169

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    const v0, 0x7f0b02cd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    const v0, 0x7f0b016d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    const v0, 0x7f0b016c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    const v0, 0x7f0b015a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RECORDING_VALUE_TEXT_OFFSET_X:I

    sget v0, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    invoke-static {v0, v6}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_VALUE_OFFSET:I

    sget v0, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    invoke-static {v0, v6}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0040

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_MAX_ISO:Ljava/lang/String;

    const-string v1, "400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    const v0, 0x7f0c003c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->WB_NUM_OF_STEP:I

    const v0, 0x7f0b028f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_SIZE:I

    const v0, 0x7f0e000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    const v0, 0x7f0c0019

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0e0028

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_COLOR:I

    const v0, 0x7f0b0290

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_SIZE:I

    new-instance v0, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    new-instance v0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepButtonListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mIsISOAutoDimmed:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput p6, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->initProSlider()V

    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideAnimation:Landroid/view/animation/Animation;

    return-void

    :cond_0
    const v0, 0x7f0c003b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f0c003a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    goto/16 :goto_1

    :cond_2
    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    goto/16 :goto_2
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mIsISOAutoDimmed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method private initProSlider()V
    .locals 25

    new-instance v3, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v3, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    const v9, 0x7f020170

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0325

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setRepeatClickWhenLongClicked(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepButtonListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepButtonListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    new-instance v3, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    const v9, 0x7f020171

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0324

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setRepeatClickWhenLongClicked(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepButtonListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepButtonListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    new-instance v3, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v8, v8

    const-string v9, ""

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_SIZE:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :pswitch_0
    new-instance v3, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_POS_X:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v8, v8

    const v9, 0x7f02018a

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    const/4 v11, 0x1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a00ce

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0080

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const v4, 0x7f020082

    const v5, 0x7f020083

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$1;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$2;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    div-int/lit8 v19, v3, 0x4

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v3, 0x0

    const-string v4, "+2"

    aput-object v4, v22, v3

    const/4 v3, 0x1

    const-string v4, "+1"

    aput-object v4, v22, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v22, v3

    const/4 v3, 0x3

    const-string v4, "-1"

    aput-object v4, v22, v3

    const/4 v3, 0x4

    const-string v4, "-2"

    aput-object v4, v22, v3

    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    const-string v4, "9"

    aput-object v4, v21, v3

    const/4 v3, 0x1

    const-string v4, "7"

    aput-object v4, v21, v3

    const/4 v3, 0x2

    const-string v4, "5"

    aput-object v4, v21, v3

    const/4 v3, 0x3

    const-string v4, "3"

    aput-object v4, v21, v3

    const/4 v3, 0x4

    const-string v4, "1"

    aput-object v4, v21, v3

    const/4 v13, 0x0

    :goto_1
    const/4 v3, 0x5

    if-ge v13, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v24, v0

    new-instance v3, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int v7, v7, v19

    mul-int/2addr v7, v13

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v8, v8

    sget-boolean v9, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_CAMERA_BRIGHTNESS:Z

    if-eqz v9, :cond_0

    aget-object v9, v21, v13

    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_SIZE:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v3, v24, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    const/4 v3, 0x5

    new-array v0, v3, [I

    move-object/from16 v16, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v16, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0xb

    aput v4, v16, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x15

    aput v4, v16, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x1f

    aput v4, v16, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v16, v3

    const/4 v3, 0x5

    new-array v15, v3, [I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v15, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x3

    aput v4, v15, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x5

    aput v4, v15, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x7

    aput v4, v15, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v15, v3

    move v14, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1, v14, v15}, Lcom/sec/android/app/camera/menu/ProLiteSlider$3;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II[I)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1, v14, v15}, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II[I)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_0
    aget-object v9, v22, v13

    goto/16 :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_3
    const/4 v3, 0x5

    if-ge v13, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v4, v4, v13

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v3, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_POS_X:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v8, v8

    const v9, 0x7f02018a

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    const/4 v11, 0x1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a00dd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0080

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const v4, 0x7f020082

    const v5, 0x7f020083

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$5;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$6;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    add-int/lit8 v4, v4, -0x1

    div-int v19, v3, v4

    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    new-array v3, v3, [Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a02a6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a02a1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a029d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0299

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0297

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    const/4 v13, 0x0

    :goto_4
    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    if-ge v13, v3, :cond_4

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_MAX_ISO:Ljava/lang/String;

    const-string v4, "400"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v24, v0

    new-instance v3, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int v7, v7, v19

    mul-int/2addr v7, v13

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v8, v8

    add-int/lit8 v9, v13, 0x1

    aget-object v9, v23, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_SIZE:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v3, v24, v13

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setStrokeVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    const/4 v3, 0x5

    new-array v0, v3, [I

    move-object/from16 v18, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v18, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x2

    aput v4, v18, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x3

    aput v4, v18, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x4

    aput v4, v18, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v18, v3

    const/4 v3, 0x4

    new-array v0, v3, [I

    move-object/from16 v17, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v17, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x2

    aput v4, v17, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x3

    aput v4, v17, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v17, v3

    move v14, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v14, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider$7;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II[I)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v14, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider$8;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II[I)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v24, v0

    new-instance v3, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int v7, v7, v19

    mul-int/2addr v7, v13

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v8, v8

    aget-object v9, v23, v13

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_SIZE:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v3, v24, v13

    goto/16 :goto_5

    :cond_4
    const/4 v13, 0x0

    :goto_6
    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    if-ge v13, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v4, v4, v13

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v3, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_POS_X:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v8, v8

    const v9, 0x7f02018a

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->WB_NUM_OF_STEP:I

    const/4 v11, 0x1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0101

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0080

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const v4, 0x7f020082

    const v5, 0x7f020083

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$10;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    div-int/lit8 v19, v3, 0x4

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    :goto_7
    const/4 v3, 0x5

    if-ge v13, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int v8, v8, v19

    mul-int/2addr v8, v13

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/16 v8, 0x9

    rsub-int/lit8 v9, v13, 0x5

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    iget v8, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v3, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x9

    rsub-int/lit8 v6, v13, 0x5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v5

    iget v5, v5, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    const/4 v3, 0x6

    new-array v0, v3, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    move v14, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1, v14}, Lcom/sec/android/app/camera/menu/ProLiteSlider$11;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1, v14}, Lcom/sec/android/app/camera/menu/ProLiteSlider$12;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    :cond_6
    const/4 v13, 0x0

    :goto_8
    const/4 v3, 0x5

    if-ge v13, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v13

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x4
        0x3
        0x2
        0x1
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSliderValueText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWBString(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a010a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0109

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a010c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a010b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public hideSlider()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setAnimation(Landroid/view/animation/Animation;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->startAnimation()V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;->onHideProSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->stopSliderMenuTimer()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshSliderStep()V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    div-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setISOAutoDim(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mIsISOAutoDimmed:Z

    return-void
.end method

.method public setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;

    return-void
.end method

.method public setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderShowListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;

    return-void
.end method

.method public setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    return-void
.end method

.method public setRotateAnimation(Z)V
    .locals 3

    const/4 v2, 0x5

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public showSlider()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->startAnimation()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderShowListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;->onShowProSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;->removeMessages(I)V

    return-void
.end method

.method public updateProRecordingSliderPosition()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RECORDING_VALUE_TEXT_OFFSET_X:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->moveBaseLayoutAbsolute(FF)V

    return-void
.end method

.method public updateProSliderPosition()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLText;->moveBaseLayoutAbsolute(FF)V

    return-void
.end method

.method public updateValue(I)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_CAMERA_BRIGHTNESS:Z

    if-eqz v2, :cond_1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    div-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    neg-int v4, v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWBString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
