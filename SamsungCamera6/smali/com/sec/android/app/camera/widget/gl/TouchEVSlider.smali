.class public Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;
.super Lcom/samsung/android/glview/GLView;
.source "TouchEVSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;
    }
.end annotation


# static fields
.field private static final EV_SLIDER_BAR_ALPHA_VALUE:F = 0.45f

.field private static final EV_SLIDER_BAR_ANIMATION_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "TouchEVSlider"


# instance fields
.field private mAlphaDivideFactor:F

.field private mBasePositionStep:I

.field private mCurrentStep:I

.field private mGaugeMarkerPos:Landroid/graphics/PointF;

.field private mHeight:F

.field private mImage1:Lcom/samsung/android/glview/GLImage;

.field private mImage2:Lcom/samsung/android/glview/GLImage;

.field private mImage3:Lcom/samsung/android/glview/GLImage;

.field private mLastTouchPosY:F

.field private mMarkerHeight:F

.field private mMarkerOffset:F

.field private mMarkerWidth:F

.field private mNumOfStep:I

.field private mOrientation:I

.field private mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

.field private mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

.field protected mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

.field private mSliderEmptyHeight:F

.field private mSliderOffset:F

.field private mStepPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchEVShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFFFFIIF)V
    .locals 8

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderEmptyHeight:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderOffset:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mOrientation:I

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    if-lez p11, :cond_0

    move/from16 v0, p11

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    :cond_0
    iput p7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderEmptyHeight:F

    iput p5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    move/from16 v0, p12

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderOffset:F

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p4

    move v6, p5

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v1, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p4

    move v6, p5

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v1, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    add-int/lit8 v1, p11, -0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->initEVSlider()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    int-to-float v0, p4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderEmptyHeight:F

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderOffset:F

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mOrientation:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v0, p4, -0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    return-void
.end method

.method private initEVSlider()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setStepIndicatorPosition()V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x7f020010

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x7f020011

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x7f020012

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_3
    return-void
.end method

.method private setStepIndicatorPosition()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getWidth()F

    move-result v2

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    :cond_4
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected findNearestStepId(FF)I
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getHeight()F

    move-result v3

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    sub-float v2, v3, v5

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v1, v2, v3

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    add-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gez v3, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-lez v3, :cond_4

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCurrentEVStep()I
    .locals 3

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    sub-int v0, v1, v2

    return v0
.end method

.method public getLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initSize()V
    .locals 0

    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    :cond_4
    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    :cond_4
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onLayoutUpdated()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onLayoutUpdated()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onLayoutUpdated()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    :cond_4
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mOrientation:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->onOrientationChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->onOrientationChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->onOrientationChanged(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->updateEVSliderVI()V

    :cond_3
    return-void
.end method

.method public onReset()V
    .locals 2

    const-string v0, "TouchEVSlider"

    const-string v1, "onReset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    :cond_4
    return-void
.end method

.method public onStartMove(FF)V
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderOffset:F

    sub-float v0, p2, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    sub-float v4, v0, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v3, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getLeft()F

    move-result v2

    sub-float v2, p1, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->findNearestStepId(FF)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;->onStepChanged(I)V

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->updateEVSliderVI()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v3, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    goto :goto_0
.end method

.method public resetEVSliderAlpha()V
    .locals 3

    const v2, 0x3ee66666    # 0.45f

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setCurrentEVStep(I)Z
    .locals 6

    const/4 v2, 0x1

    const-string v1, "TouchEVSlider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentEVStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    if-ne v1, v0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    return-void
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method

.method public startEVSliderAnimation()V
    .locals 4

    const/4 v3, 0x1

    const v2, 0x3ee66666    # 0.45f

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getAlpha()F

    move-result v0

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getAlpha()F

    move-result v0

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    :cond_1
    return-void
.end method

.method public declared-synchronized updateEVSliderVI()V
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getCurrentEVStep()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    sub-int v1, v6, v7

    int-to-float v6, v1

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    mul-float v0, v6, v7

    if-nez v1, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FFZ)V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FFZ)V

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FFZ)V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mOrientation:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_a

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float v7, v2, v11

    sub-float v3, v6, v7

    cmpg-float v6, v3, v10

    if-gtz v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float v7, v2, v11

    add-float v4, v6, v7

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    sub-float v5, v6, v4

    cmpg-float v6, v5, v10

    if-gtz v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    if-gez v1, :cond_8

    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    add-float v7, v9, v0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    add-float v7, v8, v0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_8
    if-lez v1, :cond_1

    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    add-float v7, v8, v0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderEmptyHeight:F

    goto :goto_1

    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v3}, Lcom/samsung/android/glview/GLNinePatch;->setHeight(F)V

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_2

    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v5}, Lcom/samsung/android/glview/GLNinePatch;->setHeight(F)V

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
