.class public Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "TouchEVSliderGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;
    }
.end annotation


# static fields
.field private static final TOUCH_EV_MOVE_THRESHOLD_DIP:F = 10.0f


# instance fields
.field private final PROEXPOSURE_NUM_OF_STEP:I

.field private final PROEXPOSURE_VALUE_OFFSET:I

.field private final TOUCH_AREA_OFFSET_WIDTH:I

.field private final TOUCH_EV_CONTROL_ICON_HEIGHT:I

.field private final TOUCH_EV_CONTROL_ICON_WIDTH:I

.field private final TOUCH_EV_ICON_HEIGHT:I

.field private final TOUCH_EV_ICON_PADDING:I

.field private final TOUCH_EV_LEVEL_ICON_MARGIN:I

.field private final TOUCH_EV_LEVEL_ICON_POS_X:I

.field private final TOUCH_EV_SLIDEBAR_EMPTY_SPACE_HEIGHT:I

.field private final TOUCH_EV_SLIDEBAR_HEIGHT:I

.field private final TOUCH_EV_SLIDEBAR_POS_X:I

.field private final TOUCH_EV_SLIDEBAR_WIDTH:I

.field private final TOUCH_EV_SLIDE_GROUP_HEIGHT:I

.field private final TOUCH_EV_SLIDE_GROUP_POS_X:I

.field private final TOUCH_EV_SLIDE_GROUP_POS_Y:I

.field private final TOUCH_EV_SLIDE_GROUP_WIDTH:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mIsTouchDragging:Z

.field private mIsTouchStarted:Z

.field private mLastTouchPosY:I

.field private mMinusImage:Lcom/samsung/android/glview/GLImage;

.field private mPlusImage:Lcom/samsung/android/glview/GLImage;

.field private mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTouchEVControlAreaRect:Landroid/graphics/Rect;

.field private mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

.field protected mTouchEVSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

.field private mTouchEVStartMoveThreshold:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 13

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    const v0, 0x7f0b0222

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    const v0, 0x7f0b0220

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_HEIGHT:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0b0221

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_X:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    const v0, 0x7f0b0226

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_WIDTH:I

    const v0, 0x7f0b0224

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    const v0, 0x7f0b0223

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_EMPTY_SPACE_HEIGHT:I

    const v0, 0x7f0b0225

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_POS_X:I

    const v0, 0x7f0b021d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_PADDING:I

    const v0, 0x7f0b021c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    const v0, 0x7f0b021e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    const v0, 0x7f0b021f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_POS_X:I

    const v0, 0x7f0b021b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_WIDTH:I

    const v0, 0x7f0b021a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_HEIGHT:I

    const v0, 0x7f0c0040

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_NUM_OF_STEP:I

    const v0, 0x7f0c0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_VALUE_OFFSET:I

    const v0, 0x7f0b02dc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_AREA_OFFSET_WIDTH:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_AREA_OFFSET_WIDTH:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_X:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_AREA_OFFSET_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVControlAreaRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->setBypassTouch(Z)V

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClickable(Z)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f020014

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x7f020013

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v0, v1

    int-to-float v12, v0

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_EMPTY_SPACE_HEIGHT:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_PADDING:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_HEIGHT:I

    int-to-float v9, v9

    const v10, 0x7f020015

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_NUM_OF_STEP:I

    invoke-direct/range {v0 .. v12}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFFIIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const v1, 0x7f0a00ce

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;-><init>(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    return-object v0
.end method

.method private initTouchEVSlider()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_VALUE_OFFSET:I

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setCurrentEVStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->updateEVSliderVI()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->resetEVSliderAlpha()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideTouchEVSlider()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    return-void
.end method

.method public isTouchEVStartMove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    return-void
.end method

.method public onTouchEVSliderTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVControlAreaRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusArea(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->initTouchEVSlider()V

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->onStartMove(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->startEVSliderAnimation()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeHideTouchEVMessage()V

    move v1, v2

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeMSGToStopTouchAE()V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    :cond_4
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    if-eqz v3, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    move v1, v2

    goto :goto_0

    :pswitch_2
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    if-eqz v3, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v1, v0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    :cond_5
    :goto_1
    move v1, v2

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->onStartMove(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->startEVSliderAnimation()V

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setTouchEVSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

    return-void
.end method

.method public showTouchEVSlider()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->initTouchEVSlider()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    return-void
.end method
