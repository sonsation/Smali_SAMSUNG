.class public Lcom/sec/android/app/camera/menu/OverlayHelp;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "OverlayHelp.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/OverlayHelpController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final ANIMATION_CUT_DURATION:I = 0x3e8

.field private static final FADE_ANIMATION_DURATION:I = 0xa7

.field private static final FRAME_HOLD_DURATION:I = 0x3e8

.field private static final HIDE_ANIMATION_DURATION:I = 0x12c

.field private static final KEY_HRM_SENSOR_CAPTURE_GUIDE_ENABLED:Ljava/lang/String; = "pref_global_hrm_sensor_capture_guide_enabled"

.field private static final KEY_INTERACTION_GUIDE_ENABLED:Ljava/lang/String; = "pref_global_interaction_guide_enabled"

.field private static final KEY_PALM_CAPTURE_GUIDE_ENABLED:Ljava/lang/String; = "pref_global_palm_capture_guide_enabled"

.field private static final NUM_OF_PAGES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OverlayHelp"


# instance fields
.field private final BUTTON_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

.field private final BUTTON_BOTTOM_MARGIN_LAND:I

.field private final BUTTON_BOTTOM_MARGIN_PORT:I

.field private final BUTTON_LFET_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_PORT:I

.field private final HRM_SENSOR_CAPTURE_TEXT_HEIGHT_FOR_MOBILE_KEYBOARD:I

.field private final HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_PORT:I

.field private final HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_FOR_MOBILE_KEYBOARD:I

.field private final HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_PORT:I

.field private final INTERACTION_DESCRIPTION_HEIGHT_LAND:I

.field private final INTERACTION_DESCRIPTION_HEIGHT_PORT:I

.field private final INTERACTION_IMAGE_BOTTOM_MARGIN_LAND:I

.field private final INTERACTION_IMAGE_BOTTOM_MARGIN_PORT:I

.field private final INTERACTION_IMAGE_TOP_MARGIN_LAND:I

.field private final INTERACTION_IMAGE_TOP_MARGIN_PORT:I

.field private final INTERACTION_PAGER_HEIGHT_LAND:I

.field private final INTERACTION_PAGER_HEIGHT_PORT:I

.field private final INTERACTION_PAGER_TOP_MARGIN_LAND:I

.field private final INTERACTION_PAGER_TOP_MARGIN_PORT:I

.field private final INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_LAND:I

.field private final INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_PORT:I

.field private mActive:Z

.field private mBaseLayout:Landroid/view/ViewGroup;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mCurrentIndex:I

.field private mHRMSensorCaptureGuideView:Landroid/view/View;

.field private mInteractionGuideView:Landroid/view/View;

.field private mIslastPageReached:Z

.field private mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

.field private mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

.field private mPageIndicator:Landroid/widget/LinearLayout;

.field private mPageIndicatorItem:[Landroid/view/View;

.field private mPalmCaptureGuideView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/menu/MenuManagerImpl;FF)V
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const v0, 0x7f0b02c7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_HEIGHT_PORT:I

    const v0, 0x7f0b0020

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_HEIGHT_LAND:I

    const v0, 0x7f0b0022

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_TOP_MARGIN_PORT:I

    const v0, 0x7f0b0021

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_TOP_MARGIN_LAND:I

    const v0, 0x7f0b02c6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_TOP_MARGIN_PORT:I

    const v0, 0x7f0b02c4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_TOP_MARGIN_LAND:I

    const v0, 0x7f0b02c5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_BOTTOM_MARGIN_PORT:I

    const v0, 0x7f0b02c3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_BOTTOM_MARGIN_LAND:I

    const v0, 0x7f0b0348

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_DESCRIPTION_HEIGHT_PORT:I

    const v0, 0x7f0b0347

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_DESCRIPTION_HEIGHT_LAND:I

    const v0, 0x7f0b02c2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_PORT:I

    const v0, 0x7f0b02c1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_LAND:I

    const v0, 0x7f0b034e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_FOR_MOBILE_KEYBOARD:I

    const v0, 0x7f0b034a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_PORT:I

    const v0, 0x7f0b0349

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_LAND:I

    const v0, 0x7f0b034d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_PORT:I

    const v0, 0x7f0b034c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_LAND:I

    const v0, 0x7f0b034b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_HEIGHT_FOR_MOBILE_KEYBOARD:I

    const v0, 0x7f0b001f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_PORT:I

    const v0, 0x7f0b034f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_LAND:I

    const v0, 0x7f0b001e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_PORT:I

    const v0, 0x7f0b02c0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_LAND:I

    const v0, 0x7f0b0345

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_LFET_MARGIN_LAND:I

    const v0, 0x7f0b0346

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeHRMSensorCaptureGuide()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isNeedShowHRMSensorCaptureGuide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createHRMSensorCaptureGuide()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isNeedShowPalmCaptureGuide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createPalmCaptureGuide()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/menu/OverlayHelp;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/menu/OverlayHelp;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->updatePageIndicator(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->setPalmCaptureGuideEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removePalmCaptureGuide()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_TOP_MARGIN_LAND:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_BOTTOM_MARGIN_LAND:I

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_DESCRIPTION_HEIGHT_LAND:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_TOP_MARGIN_PORT:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_BOTTOM_MARGIN_PORT:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_DESCRIPTION_HEIGHT_PORT:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->setHRMSensorCaptureGuideEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->setInteractionGuideEnabled(Z)V

    return-void
.end method

.method private createHRMSensorCaptureGuide()V
    .locals 9

    const-string v6, "OverlayHelp"

    const-string v7, "createHRMSensorCaptureGuide"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f040009

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/menu/OverlayHelp$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$4;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v6, 0x7f100028

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v6, Lcom/sec/android/app/camera/menu/OverlayHelp$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$5;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f100024

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_FOR_MOBILE_KEYBOARD:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f100026

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_HEIGHT_FOR_MOBILE_KEYBOARD:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/camera/menu/OverlayHelp$6;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$6;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createInteractionGuide()V
    .locals 8

    const/4 v6, 0x0

    const-string v5, "OverlayHelp"

    const-string v7, "createInteractionGuide"

    invoke-static {v5, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04000b

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$7;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$7;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v5, 0x7f10002d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$8;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$8;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    const v5, 0x7f10002e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    move v3, v2

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v2

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    aget-object v5, v5, v2

    new-instance v7, Lcom/sec/android/app/camera/menu/OverlayHelp$9;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/app/camera/menu/OverlayHelp$9;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    :goto_1
    iput v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/OverlayHelp;->updatePageIndicator(I)V

    const v5, 0x7f10002c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/sec/android/app/camera/menu/OverlayHelp$10;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$10;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/menu/OverlayHelp$11;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$11;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private createPalmCaptureGuide()V
    .locals 7

    const-string v4, "OverlayHelp"

    const-string v5, "createPalmCaptureGuide"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f04000f

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$12;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$12;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    const v5, 0x7f100038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/camera/menu/OverlayHelp$13;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$13;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    const v5, 0x7f100036

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_HEIGHT_FOR_MOBILE_KEYBOARD:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$14;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$14;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isHRMSensorCaptureGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInteractionGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "pref_global_interaction_guide_enabled"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedShowHRMSensorCaptureGuide()Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isHRMSensorCaptureGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedShowPalmCaptureGuide()Z
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isPalmCaptureGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPalmCaptureGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "pref_global_palm_capture_guide_enabled"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshHRMSensorCaptureGuideGuide(I)V
    .locals 11

    const v10, 0x7f100026

    const v9, 0x7f100025

    const v6, 0x7f100024

    const/16 v8, 0xd

    const/16 v7, 0xb

    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    const v6, 0x7f100028

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v5, 0x7f0b0350

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    const v6, 0x7f100028

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private refreshInteractionGuide(I)V
    .locals 8

    const v7, 0x7f10002d

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/16 v4, 0xd

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_HEIGHT_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_TOP_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_LFET_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v3, v1, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->refreshPagerItem(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_HEIGHT_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_TOP_MARGIN_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private refreshPalmCaptureGuideGuide(I)V
    .locals 11

    const v10, 0x7f100035

    const v6, 0x7f100034

    const/16 v9, 0xd

    const/16 v8, 0xb

    const/16 v7, 0x9

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    const v6, 0x7f100036

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    const v6, 0x7f100038

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_LFET_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_0
    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    const v6, 0x7f100036

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    const v6, 0x7f100038

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_2
.end method

.method private removeHRMSensorCaptureGuide()V
    .locals 2

    const-string v0, "OverlayHelp"

    const-string v1, "removeHRMSensorCaptureGuide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$15;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeInteractionGuide()V
    .locals 2

    const-string v0, "OverlayHelp"

    const-string v1, "removeInteractionGuide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$16;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removePalmCaptureGuide()V
    .locals 2

    const-string v0, "OverlayHelp"

    const-string v1, "removePalmCaptureGuide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$17;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$17;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setHRMSensorCaptureGuideEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHRMSensorCaptureGuideEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setInteractionGuideEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_interaction_guide_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInteractionGuideEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_interaction_guide_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setPalmCaptureGuideEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_palm_capture_guide_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPalmCaptureGuideEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_palm_capture_guide_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private updatePageIndicator(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "OverlayHelp"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeHRMSensorCaptureGuide()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removePalmCaptureGuide()V

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    return-void
.end method

.method public hideHelp(Z)V
    .locals 4

    const-string v1, "OverlayHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideHelp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->enableFocusNavigation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->registerEAM(I)V

    if-eqz p1, :cond_3

    const/16 v1, 0x12c

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$2;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$3;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeHRMSensorCaptureGuide()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removePalmCaptureGuide()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    return v0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isNeedShowHRMSensorCaptureGuide()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createHRMSensorCaptureGuide()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isNeedShowPalmCaptureGuide()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createPalmCaptureGuide()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->hideHelp(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;->onOverlayHelpHide()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public refreshOverlayHelp(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xae

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->refreshInteractionGuide(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->refreshHRMSensorCaptureGuideGuide(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->refreshPalmCaptureGuideGuide(I)V

    goto :goto_0
.end method

.method public setOverlayHelpHideListener(Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    return-void
.end method

.method public showHelp(I)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    if-eqz v0, :cond_1

    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHelp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " previous help "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already showing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHelp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->disableFocusNavigation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->unregisterEAM(I)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xae

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createInteractionGuide()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createHRMSensorCaptureGuide()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createPalmCaptureGuide()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
