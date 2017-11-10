.class public abstract Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "AbstractBaseMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;


# static fields
.field protected static final ANIMATION_DURATION_200:I = 0xc8

.field protected static final ANIMATION_DURATION_300:I = 0x12c

.field protected static final ANIMATION_DURATION_400:I = 0x190

.field protected static final ANIMATION_DURATION_470:I = 0x1d6

.field protected static final ANIMATION_DURATION_570:I = 0x23a


# instance fields
.field private final REVIEW_HIDE_ANIMATION_DURATION:I

.field private final SHOOTINGMODE_TEXT_SIZE_DEFAULT:I

.field private final SHOOTINGMODE_TEXT_SIZE_EXTRA_SMALL:I

.field private final SHOOTINGMODE_TEXT_SIZE_LARGE:I

.field private final SHOOTINGMODE_TEXT_SIZE_SMALL:I

.field protected mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

.field protected mAttachMode:Z

.field protected mBottomParentView:Lcom/samsung/android/glview/GLView;

.field protected mBottomVIButton:Lcom/samsung/android/glview/GLButton;

.field protected mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

.field protected mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

.field protected mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

.field protected mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

.field protected mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

.field protected mDimState:Z

.field protected mDisableIndicators:Z

.field protected mDisableOverlayLayout:Z

.field protected mDisablePageNavigatorsGroup:Z

.field protected mDisableRecordingButton:Z

.field protected mDisableShutterButton:Z

.field protected mDisableSideQuickSetting:Z

.field protected mDisableThumbnailButton:Z

.field protected final mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

.field protected final mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

.field protected mFlingGestureDetector:Landroid/view/GestureDetector;

.field protected mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

.field protected mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

.field protected mMiddleParentView:Lcom/samsung/android/glview/GLView;

.field protected mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

.field protected mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

.field protected mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

.field protected mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

.field protected mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

.field protected mRecordingAnimation:Z

.field protected mRecordingButton:Lcom/samsung/android/glview/GLButton;

.field protected mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mReviewShowing:Z

.field protected mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

.field protected mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field protected mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field protected mShutterButton:Lcom/samsung/android/glview/GLButton;

.field protected mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

.field protected mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

.field protected mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mTopParentView:Lcom/samsung/android/glview/GLView;

.field protected mTopVIButton:Lcom/samsung/android/glview/GLButton;

.field protected mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    new-instance v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;-><init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    const v0, 0x7f0b01cd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_DEFAULT:I

    const v0, 0x7f0b01cf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_LARGE:I

    const v0, 0x7f0b01d0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_SMALL:I

    const v0, 0x7f0b01ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_EXTRA_SMALL:I

    const v0, 0x7f0c000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->REVIEW_HIDE_ANIMATION_DURATION:I

    new-instance v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$2;-><init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShutterButton:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableRecordingButton:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableSideQuickSetting:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableOverlayLayout:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableIndicators:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisablePageNavigatorsGroup:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingAnimation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDimState:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-void
.end method


# virtual methods
.method public enableRecordingAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingAnimation:Z

    return-void
.end method

.method public endShutterProgressWheel()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDimState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setDim(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    return-void
.end method

.method protected abstract getAnchor(I)Lcom/samsung/android/glview/GLImage;
.end method

.method protected getCurrentLocaleModeTextSize()I
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_EXTRA_SMALL:I

    :goto_0
    return v1

    :cond_0
    const-string v1, "da"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_SMALL:I

    goto :goto_0

    :cond_2
    const-string v1, "am"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "as"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_LARGE:I

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_DEFAULT:I

    goto/16 :goto_0
.end method

.method public abstract getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
.end method

.method public getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    return-object v0
.end method

.method public hidePage(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "AbstractMenu"

    const-string v1, "wrong commandId. please check commandId."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->hidePage(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->hidePage(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1d4c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hidePageNavigators()V
    .locals 2

    const-string v0, "AbstractMenu"

    const-string v1, "hidePageNavigators"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideReview(Z)V
    .locals 3

    const-string v1, "AbstractMenu"

    const-string v2, "hideReview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/QuickView;->removeReviewTimeOutCallback()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/QuickView;->isShareViaWorking()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/QuickView;->cancelAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/QuickView;->hideReview()V

    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->REVIEW_HIDE_ANIMATION_DURATION:I

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;-><init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/QuickView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/QuickView;->startAnimation()V

    goto :goto_1
.end method

.method public abstract hideView(I)V
.end method

.method public isDefaultPageSelected()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->isDefaultPageSelected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDimmed(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isDim()Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public isPressed(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isReviewShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    return v0
.end method

.method public isReviewUpdating()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->isReviewUpdating()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShareViaWorking()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->isShareViaWorking()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterProgressWheelVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract makeBaseMenuVIAnimation()V
.end method

.method protected abstract makeRecordingMenuVIAnimation()V
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->disableSwipeEvent()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public registerEAM(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    :cond_2
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0
.end method

.method public requestFocus(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public resetPageNavigatorItem()V
    .locals 2

    const/16 v1, 0x1d4e

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->showPage(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->showPage(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->hidePage(I)V

    goto :goto_1
.end method

.method protected resetView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShutterButton:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableRecordingButton:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableSideQuickSetting:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableOverlayLayout:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableIndicators:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisablePageNavigatorsGroup:Z

    return-void
.end method

.method public setAttachMode(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->unregisterEAM(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->registerEAM(I)V

    goto :goto_0
.end method

.method public setCoverCamera(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string v0, "AbstractMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoverCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/QuickView;->setCoverCamera(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->unregisterEAM(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->makeBaseMenuVIAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->showView(I)V

    :cond_4
    return-void
.end method

.method public setDim(IZ)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FLOATING_CAMERA_BUTTON:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setDim(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mBottomParentView:Lcom/samsung/android/glview/GLView;

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMiddleParentView:Lcom/samsung/android/glview/GLView;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    :goto_1
    if-eqz p3, :cond_2

    iget-object v0, p3, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mTopParentView:Lcom/samsung/android/glview/GLView;

    iput-object p3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->makeRecordingMenuVIAnimation()V

    return-void

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mBottomParentView:Lcom/samsung/android/glview/GLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMiddleParentView:Lcom/samsung/android/glview/GLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mTopParentView:Lcom/samsung/android/glview/GLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    goto :goto_2
.end method

.method protected declared-synchronized setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShutterProgress(I)V
    .locals 6

    int-to-double v2, p1

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setProgress(I)V

    return-void
.end method

.method public setThumbnailOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setThumbnailOrientation(I)V

    :cond_0
    return-void
.end method

.method public setThumbnailUri(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setThumbnailUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public showPage(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "AbstractMenu"

    const-string v1, "wrong commandId. please check commandId."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->showPage(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->showPage(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1d4c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public showPageNavigators()V
    .locals 2

    const-string v0, "AbstractMenu"

    const-string v1, "showPageNavigators"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AbstractMenu"

    const-string v1, "showReview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string v0, "AbstractMenu"

    const-string v1, "bitmap is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->isPressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isLaunchGallery()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getZorderOnTop()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v0

    if-eq v1, v0, :cond_2

    const-string v0, "AbstractMenu"

    const-string v1, "showReview : ignore showReview because another menu is showing now"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->isReviewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/camera/menu/QuickView;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/BaseMenuController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/QuickView;->setCoverCamera(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getPopupMenuRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/menu/QuickView;->updateReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    new-instance v1, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$4;-><init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->setReviewButtonListener(Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->startShowReviewAnimation()V

    goto :goto_0
.end method

.method protected showThumbnailButton()V
    .locals 2

    const-string v0, "AbstractMenu"

    const-string v1, "showThumbnailButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->registerEAM(I)V

    goto :goto_0
.end method

.method public abstract showView(I)V
.end method

.method public startBaseMenuAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    return-void
.end method

.method public startShutterProgressWheel()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDimState:Z

    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    return-void
.end method

.method public unregisterEAM(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    :cond_0
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    :cond_1
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->update()V

    goto :goto_0
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    :cond_0
    return-void
.end method
