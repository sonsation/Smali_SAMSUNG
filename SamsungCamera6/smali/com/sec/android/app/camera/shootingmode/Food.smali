.class public Lcom/sec/android/app/camera/shootingmode/Food;
.super Ljava/lang/Object;
.source "Food.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$AutoFocusListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLUR_EFFECT_MOVING_THRESHOLD:F = 5.0f

.field private static final DELAY_TIME_TO_HIDE_GUIDE_UI:I = 0xbb8

.field private static final DELAY_TIME_TO_HIDE_OPENING_ANIMATION:I = 0x320

.field private static final DELAY_TIME_TO_RESET_TOUCH_FOCUS:I = 0x2328

.field private static final DELAY_TIME_TO_RESET_TOUCH_FOCUS_FROM_SHUTTER:I = 0xbb8

.field private static final DELAY_TIME_TO_TURNOFF_MASKING_EFFECT:I = 0x3e8

.field private static final EFFECT_GUIDE_HEIGHT_MAX:I = 0x3

.field private static final EFFECT_GUIDE_HEIGHT_MIN:I = 0x1

.field private static final EFFECT_GUIDE_WIDTH_MAX:I = 0x2

.field private static final EFFECT_GUIDE_WIDTH_MIN:I = 0x0

.field private static final GUIDE_STATE_MOVING:I = 0x2

.field private static final GUIDE_STATE_NONE:I = 0x0

.field private static final GUIDE_STATE_RESIZING:I = 0x1

.field private static final MESSAGE_FOOD_CHANGE_TO_CAF:I = 0x5

.field private static final MESSAGE_FOOD_HIDE_GUIDE_UI:I = 0x1

.field private static final MESSAGE_FOOD_HIDE_MASKING_EFFECT:I = 0x3

.field private static final MESSAGE_FOOD_RESET_CAF_TIMER_FROM_SHUTTER:I = 0x7

.field private static final MESSAGE_FOOD_RESET_CHANGE_TO_CAF_TIMER:I = 0x6

.field private static final MESSAGE_FOOD_RESET_HIDE_GUIDE_UI_TIMER:I = 0x2

.field private static final MESSAGE_FOOD_RESET_HIDE_MASKING_TIMER:I = 0x4

.field private static final SECIMAGE_COORDINATE_MAX:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Food"

.field private static final TOUCH_INSIDE_AREA:I = 0x7

.field private static final TOUCH_OUTSIDE_AREA:I = 0x0

.field private static final TOUCH_VERTEX_LB:I = 0x2

.field private static final TOUCH_VERTEX_LT:I = 0x1

.field private static final TOUCH_VERTEX_RB:I = 0x4

.field private static final TOUCH_VERTEX_RT:I = 0x3


# instance fields
.field private final CIRCLE_EFFECT_GUIDE_FRAME_HEIGHT:F

.field private final CIRCLE_EFFECT_GUIDE_FRAME_POS_X:F

.field private final CIRCLE_EFFECT_GUIDE_FRAME_POS_Y:F

.field private final CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

.field private final CIRCLE_EFFECT_GUIDE_POS_X:F

.field private final CIRCLE_EFFECT_GUIDE_POS_Y:F

.field private final EFFECT_GUIDE_DEFAULT_HEIGHT:F

.field private final EFFECT_GUIDE_DEFAULT_WIDTH:F

.field private final FOOD_COLOR_TUNE_BUTTON_POS_X:I

.field private final FOOD_COLOR_TUNE_BUTTON_POS_Y:I

.field private final FOOD_COLOR_TUNE_BUTTON_RIGHT_MARGIN:I

.field private final FOOD_COLOR_TUNE_BUTTON_TOP_MARGIN:I

.field private final FOOD_COLOR_TUNE_BUTTON_WIDTH:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final TOUCH_VERTEX_AREA_WIDTH:I

.field private mAmountDeltaX:F

.field private mAmountDeltaY:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

.field private mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

.field private mEffectGuideCenter:Landroid/graphics/PointF;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

.field private mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

.field private mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

.field private mGuideState:I

.field private mIsZoom:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMovePoint:Landroid/graphics/PointF;

.field private mPreviewLeft:F

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewRight:F

.field private mPreviewTop:F

.field private mRealPreviewHeight:F

.field private mRealPreviewWidth:F

.field private mScreenCenter:Landroid/graphics/PointF;

.field private mSelectedVertex:I

.field private mTouchPt:Landroid/graphics/PointF;

.field private mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7

    const v6, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    const v0, 0x7f0b00e0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_RIGHT_MARGIN:I

    const v0, 0x7f0b00e1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_TOP_MARGIN:I

    const v0, 0x7f0b02b7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_WIDTH:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_TOP_MARGIN:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_POS_Y:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_HEIGHT:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_X:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_Y:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_HEIGHT:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_X:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_X:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_Y:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_Y:F

    const v0, 0x7f0b02b9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mTouchPt:Landroid/graphics/PointF;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Food$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Food$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Food;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Food;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Food;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->clearMessageHandler()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/Food;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/Food;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method private clearMessageHandler()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->access$500(Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    return-void
.end method

.method private convertHeight(F)F
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    div-float v0, p1, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private convertPositionForSending(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewWidth:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewTop:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewHeight:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private convertReceivedX(F)F
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewWidth:F

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    add-float/2addr v0, v1

    return v0
.end method

.method private convertReceivedY(F)F
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewHeight:F

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private convertWidth(F)F
    .locals 3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    sub-float v0, p1, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method private decideSelectedVertex(FF)V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, p2

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200aa

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200ac

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpl-float v4, v4, p2

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200a9

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, v4, p1

    if-lez v4, :cond_3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpl-float v4, v4, p2

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200ab

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto/16 :goto_0

    :cond_3
    cmpl-float v4, p1, v1

    if-lez v4, :cond_4

    cmpg-float v4, p1, v2

    if-gez v4, :cond_4

    cmpl-float v4, p2, v3

    if-lez v4, :cond_4

    cmpg-float v4, p2, v0

    if-gez v4, :cond_4

    const/4 v4, 0x7

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto/16 :goto_0
.end method

.method private getEffectGuideMaxSize(I)F
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hideEffectGuide()V
    .locals 2

    const-string v0, "Food"

    const-string v1, "hideEffectGuide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    return-void
.end method

.method private isFrameShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidTouchArea(FF)Z
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewAspectRatio()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x7f0b013c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    const v5, 0x7f0b01d3

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    const v5, 0x7f0b02d4

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    sub-float/2addr v5, v1

    float-to-int v2, v5

    int-to-float v5, v2

    cmpl-float v5, p1, v5

    if-gtz v5, :cond_0

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRight:F

    cmpl-float v5, p1, v5

    if-gtz v5, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private moveEffectGuide(Landroid/graphics/PointF;)V
    .locals 4

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v3

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateBlurEffect()V

    return-void
.end method

.method private moveEffectGuideToCenter()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iput v2, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iput v3, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    return-void
.end method

.method private resetEffectGuide()V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->resizeEffectGuideWithDrag(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getLeft()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getTop()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuideToCenter()V

    return-void
.end method

.method private resizeEffectGuideByDelta(F)V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    mul-float v3, v6, p1

    add-float/2addr v2, v3

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    sub-float v2, v1, v2

    div-float p1, v2, v6

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    neg-float v3, p1

    neg-float v4, p1

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateBlurEffect()V

    return-void

    :cond_1
    cmpl-float v2, p1, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    mul-float v3, v6, p1

    add-float/2addr v2, v3

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    sub-float v2, v0, v2

    div-float p1, v2, v6

    goto :goto_0
.end method

.method private resizeEffectGuideWithDrag(IFF)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v2

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v1

    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    mul-float v4, p3, p2

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    mul-float p3, p2, v7

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    cmpl-float v4, p2, v6

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    mul-float v5, v8, p2

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, v3

    div-float p2, v4, v8

    :cond_0
    :goto_2
    cmpl-float v4, p3, v6

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    mul-float v5, v8, p3

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, v2

    div-float p3, v4, v8

    :cond_1
    :goto_3
    mul-float v4, p2, p3

    cmpg-float v4, v4, v6

    if-gez v4, :cond_7

    :goto_4
    return-void

    :cond_2
    move p3, p2

    goto :goto_0

    :cond_3
    mul-float v4, p3, p2

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    mul-float p2, p3, v7

    goto :goto_0

    :cond_4
    move p2, p3

    goto :goto_0

    :pswitch_1
    mul-float/2addr p3, v7

    goto :goto_1

    :pswitch_2
    mul-float/2addr p2, v7

    goto :goto_1

    :pswitch_3
    mul-float/2addr p2, v7

    mul-float/2addr p3, v7

    goto :goto_1

    :cond_5
    cmpg-float v4, p2, v6

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    mul-float v5, v8, p2

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, v1

    div-float p2, v4, v8

    goto :goto_2

    :cond_6
    cmpg-float v4, p3, v6

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    mul-float v5, v8, p3

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, v0

    div-float p3, v4, v8

    goto :goto_3

    :cond_7
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    sub-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    sub-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, p2, p3, v9}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateBlurEffect()V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setAnimationEffect()V
    .locals 2

    const-string v0, "FOCUS=1"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method private setMaskingEffect(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ENHANCED=1"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ENHANCED=0"

    goto :goto_0
.end method

.method private showEffectGuide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateBlurEffect()V

    return-void
.end method

.method private showSwitchingAnimation()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->setAnimationEffect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateBlurEffect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private turnOffBlurEffect()V
    .locals 4

    const-string v0, "FOOD=0"

    const-string v1, "Food"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBlurEffect String : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method private updateBlurEffect()V
    .locals 9

    const v6, 0x7f0b02b8

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v6

    int-to-float v7, v1

    add-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->convertWidth(F)F

    move-result v2

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v6

    int-to-float v7, v1

    sub-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->convertWidth(F)F

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v6

    int-to-float v7, v1

    sub-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->convertHeight(F)F

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v6

    int-to-float v7, v1

    add-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->convertHeight(F)F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FOOD=1,LE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",TO="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",RI="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",BO="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Food"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEffect String : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateDrawingArea()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    const-string v0, "Food"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview Resolution changed ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRight:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewTop:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRight:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewWidth:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewHeight:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    return-void
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
    .locals 7

    const/16 v6, 0x8d

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "Food"

    const-string v2, "onActivate"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v5, [I

    aput v6, v2, v4

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v4, [I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Food;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const-string v1, "Food"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFoodColorTuneValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodColorTuneValue(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x80

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setFoodShotEventListener(Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v6, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/Engine$AutoFocusListener;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateDrawingArea()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuideToCenter()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showSwitchingAnimation()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->isValidTouchArea(FF)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mTouchPt:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mTouchPt:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    goto :goto_0

    :pswitch_1
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOOD_ADDED_LENS:Z

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    move v1, v2

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const v4, 0x7f0200a8

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    if-nez v3, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setTouchFocusPosition(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->convertPositionForSending(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setFoodBlurPosition(II)V

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOOD_ADDED_LENS:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mTouchPt:Landroid/graphics/PointF;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuide(Landroid/graphics/PointF;)V

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    goto/16 :goto_0

    :pswitch_4
    move v1, v2

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onAutoFocus(IZ)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    if-nez p2, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Food"

    const-string v1, "onAutoFocus : Focus mode is changed as Continuous Auto Focus"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetEffectGuide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuideToCenter()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showSwitchingAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    if-ne v0, v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOOD_ADDED_LENS:Z

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Food"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged: menuId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modeId="

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
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetEffectGuide()V

    if-ne p2, v3, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showEffectGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->turnOffBlurEffect()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8d
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2

    const-string v0, "cam_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    const-string v0, "focus-mode"

    const-string v1, "continuous-picture"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scene-mode"

    const-string v1, "food"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wb-level"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_0

    const-string v0, "phase-af"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x3a98

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_EFFECT_PREVIEW_FPS_MAX:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const-string v0, "effect_hint"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 10

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f0200ad

    const v7, 0x7f0200af

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Food$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Food$2;-><init>(Lcom/sec/android/app/camera/shootingmode/Food;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_HEIGHT:F

    const v6, 0x7f0200a8

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLNinePatch;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onEngineStateChanged(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetEffectGuide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateDrawingArea()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuideToCenter()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showEffectGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onFoodShotComplete([B)V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const-string v9, "Food"

    const-string v10, "onFoodShotComplete"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v13}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v4, v9

    const/16 v9, 0x8

    invoke-static {p1, v9}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v8, v9

    const/16 v9, 0xc

    invoke-static {p1, v9}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v7, v9

    const/16 v9, 0x10

    invoke-static {p1, v9}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v0, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v9

    if-ne v9, v12, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showEffectGuide()V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedX(F)F

    move-result v4

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedX(F)F

    move-result v7

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedY(F)F

    move-result v8

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedY(F)F

    move-result v0

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float v9, v4, v7

    div-float v1, v9, v11

    add-float v9, v8, v0

    div-float v2, v9, v11

    sub-float v9, v7, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuide(Landroid/graphics/PointF;)V

    sub-float v3, v5, v6

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Food;->resizeEffectGuideByDelta(F)V

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v9, v13}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Food"

    const-string v1, "onInactivate()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFoodShotEventListener(Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x8d

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/Engine$AutoFocusListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetEffectGuide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->clearMessageHandler()V

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

.method public onNewImageLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Z103"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Z102"

    const/16 v1, 0x8d

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    const/4 v0, 0x0

    return v0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onShutterKeyLongPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

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
    .locals 12

    const/4 v11, 0x4

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->isFrameShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/camera/shootingmode/Food;->isValidTouchArea(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    :cond_1
    if-ne v0, v6, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v5, v7}, Lcom/sec/android/app/camera/shootingmode/Food;->decideSelectedVertex(FF)V

    :cond_2
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    const/4 v7, 0x7

    if-ne v5, v7, :cond_4

    iput v10, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    :cond_3
    :goto_1
    move v5, v6

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    if-eqz v5, :cond_5

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_0

    :pswitch_1
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-eqz v7, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v1, v5, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v2, v5, v7

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-ne v5, v10, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float v3, v5, v1

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float v4, v5, v2

    if-ne v0, v6, :cond_6

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuide(Landroid/graphics/PointF;)V

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v5, v11}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_7
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-ne v5, v6, :cond_9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_3

    :cond_8
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    invoke-direct {p0, v5, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->resizeEffectGuideWithDrag(IFF)V

    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_2
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    float-to-int v9, v9

    invoke-interface {v7, v8, v9}, Lcom/sec/android/app/camera/interfaces/Engine;->setTouchFocusPosition(II)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v7, v11}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
