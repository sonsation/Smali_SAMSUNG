.class public Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "FoodColorTuneSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu$MainHandler;
    }
.end annotation


# static fields
.field private static final MENU_TIMER_INTERVAL:J = 0xbb8L

.field private static final MSG_TIME_OUT:I = 0x1


# instance fields
.field private final FOOD_LEVEL_NUM_OF_STEP_9:I

.field private final FOOD_SLIDEBAR_HEIGHT:I

.field private final FOOD_SLIDEBAR_POS_X:I

.field private final FOOD_SLIDEBAR_POS_Y:I

.field private final FOOD_SLIDEBAR_WIDTH:I

.field private final SLIDEBAR_TOUCH_AREA_HEIGHT:I

.field private final SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

.field private final SLIDEBAR_TOUCH_AREA_WIDTH:I

.field private final mHandler:Landroid/os/Handler;

.field private mSlider:Lcom/samsung/android/glview/GLSlider;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
    .locals 13

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v8, v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v9, v0

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v12}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    const v0, 0x7f0b01e3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_SLIDEBAR_WIDTH:I

    const v0, 0x7f0b01e1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_SLIDEBAR_HEIGHT:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_SLIDEBAR_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0b01e2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_SLIDEBAR_POS_X:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_SLIDEBAR_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_SLIDEBAR_POS_Y:I

    const v0, 0x7f0b01e6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    const v0, 0x7f0b01e4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    const v0, 0x7f0b01e5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

    const v0, 0x7f0c0049

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_LEVEL_NUM_OF_STEP_9:I

    new-instance v0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->setPreviewTouchEnabled(Z)V

    new-instance v0, Lcom/samsung/android/glview/GLSlider;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0200ae

    iget v7, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->FOOD_LEVEL_NUM_OF_STEP_9:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu$1;-><init>(Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const v1, 0x7f020082

    const v2, 0x7f020083

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onHide()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->stopSliderMenuTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_0
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

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->hideMenu()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onShow()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->restartSliderMenuTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

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
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->stopSliderMenuTimer()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->restartSliderMenuTimer()V

    goto :goto_0
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
