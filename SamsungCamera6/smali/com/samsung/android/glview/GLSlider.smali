.class public Lcom/samsung/android/glview/GLSlider;
.super Lcom/samsung/android/glview/GLView;
.source "GLSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLSlider$SliderChangeListener;
    }
.end annotation


# static fields
.field private static final ORDER_ASCENDING:I = 0xa

.field private static final ORDER_DESCENDING:I = 0xb

.field private static final ORIENTATION_HORIZONTAL:I = 0x1

.field private static final ORIENTATION_VERTICAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLSlider"


# instance fields
.field protected mCurrentStep:I

.field protected mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

.field protected mGaugeMarker:Lcom/samsung/android/glview/GLButton;

.field private mGaugeMarkerBasePositionX:F

.field private mGaugeMarkerBasePositionY:F

.field protected mGaugeMarkerPos:Landroid/graphics/PointF;

.field private mGaugeMarkerVisible:I

.field private mIsNonZeroBase:Z

.field protected mNumOfStep:I

.field private mOrder:I

.field protected mOrientation:I

.field protected mSliderBackground:Lcom/samsung/android/glview/GLView;

.field protected mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

.field protected mStepPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    iput v2, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iput v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    iput v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    if-lez p6, :cond_0

    iput p6, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    :cond_0
    cmpl-float v0, p4, p5

    if-ltz v0, :cond_1

    iput v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLSlider;->setFocusable(Z)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/glview/GLSlider;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V
    .locals 7

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    if-eqz p9, :cond_1

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    :goto_0
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    if-lez p8, :cond_0

    iput p8, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    :cond_0
    cmpl-float v0, p4, p5

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLSlider;->init()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLSlider;->setFocusable(Z)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/glview/GLSlider;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    goto :goto_1
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V
    .locals 7

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    if-eqz p8, :cond_1

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    :goto_0
    if-lez p7, :cond_0

    iput p7, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    :cond_0
    cmpl-float v0, p4, p5

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLSlider;->init()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLSlider;->setFocusable(Z)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/glview/GLSlider;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    goto :goto_1
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    iput v2, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    iput v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    if-lez p4, :cond_0

    iput p4, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    return-void
.end method

.method private setStepIndicatorPosition()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v3

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v2

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    :cond_2
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

.method public expandTouchAreaFromCenter(FF)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    neg-float v0, p1

    neg-float v1, p2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v0

    mul-float v1, p1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v1

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayout(FF)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLButton;->moveLayout(FF)V

    :cond_2
    return-void
.end method

.method protected findNearestStepId(FF)I
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float v2, v3, v5

    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v3

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v1, v3, v5

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float v4, v1, v6

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_9

    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_9

    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v1, v2, v3

    const/4 v0, 0x0

    :goto_2
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float v4, v1, v6

    add-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-lez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gez v3, :cond_8

    move v0, v4

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-lez v3, :cond_9

    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v0, v3, -0x1

    goto/16 :goto_1

    :cond_9
    const/4 v0, -0x1

    goto/16 :goto_1
.end method

.method public getCurrentStep()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v0

    return v0
.end method

.method public getLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->load()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->load()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMarkerVisible()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    return v0
.end method

.method public getNumOfStep()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    return v0
.end method

.method public getStepPosition(I)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    return-object v0
.end method

.method public initSize()V
    .locals 0

    return-void
.end method

.method public moveStep(I)Z
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    if-ltz p1, :cond_4

    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge p1, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-ne v3, v1, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v6, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v8, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v6, v9, v5}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FFZ)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getTranslateX()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLButton;->getTranslateX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-direct {v0, v3, v5, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    :cond_2
    move v3, v4

    goto/16 :goto_0

    :cond_3
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v9, v6, v5}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FFZ)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLButton;->getTranslateY()F

    move-result v6

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLButton;->getTranslateY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-direct {v0, v9, v9, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    goto :goto_1

    :cond_4
    move v3, v5

    goto/16 :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->onAlphaUpdated()V

    :cond_2
    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->draw([FLandroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 9

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v8, :cond_3

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x16

    if-eq v3, v4, :cond_3

    :cond_1
    if-ne v0, v5, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v7, :cond_3

    :cond_2
    if-ne v0, v6, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    :cond_5
    :goto_0
    return v2

    :cond_6
    if-nez v0, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v7, :cond_a

    :cond_7
    if-ne v0, v2, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x15

    if-eq v3, v4, :cond_a

    :cond_8
    if-ne v0, v5, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v8, :cond_a

    :cond_9
    if-ne v0, v6, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_c

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    goto :goto_0

    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->requestFocus()Z

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->onLayoutUpdated()V

    :cond_2
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public onReset()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->reset()V

    :cond_2
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/glview/GLSlider;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/samsung/android/glview/GLSlider;->mapPointReverse([FFF)V

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mTransformedScreenCoordinate:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mTransformedScreenCoordinate:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v0, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-nez v10, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getTop()F

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v11, v11

    add-float v6, v10, v11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    sub-float v4, v10, v11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    add-float v5, v10, v11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v11, v11

    sub-float v7, v10, v11

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v12

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v10, :cond_4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getTop()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/glview/GLSlider;->findNearestStepId(FF)I

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-eq v9, v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0, v9}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    iput v9, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_5
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v10, v6

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v10, v6

    cmpl-float v10, v10, v4

    if-lez v10, :cond_7

    :cond_6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v11, v10, v6

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v12, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    cmpl-float v10, v11, v10

    if-lez v10, :cond_8

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v12, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iput v10, v11, Landroid/graphics/PointF;->y:F

    :goto_2
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    goto/16 :goto_1

    :cond_8
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_14

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getTop()F

    move-result v11

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_a

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getBottom()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_b

    :cond_a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v10, v5

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_d

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/PointF;->x:F

    :goto_3
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v10, :cond_c

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getTop()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/glview/GLSlider;->findNearestStepId(FF)I

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-eq v9, v10, :cond_c

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0, v9}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    iput v9, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    :cond_c
    :goto_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v10, v5

    cmpl-float v10, v10, v7

    if-lez v10, :cond_e

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iput v7, v10, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_e
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_f
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_10

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getRight()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_11

    :cond_10
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v10, v6

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_12

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iput v10, v11, Landroid/graphics/PointF;->y:F

    :goto_5
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v10, :cond_c

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v11, v6

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/glview/GLSlider;->findNearestStepId(FF)I

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-eq v9, v10, :cond_c

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0, v9}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    iput v9, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    goto/16 :goto_4

    :cond_12
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v11, v10, v6

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v12, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    cmpl-float v10, v11, v10

    if-lez v10, :cond_13

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v12, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iput v10, v11, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :cond_13
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :cond_14
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1d

    :cond_15
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v10

    sub-float v10, v2, v10

    sub-float v11, v3, v6

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/glview/GLSlider;->findNearestStepId(FF)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_17

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getTop()F

    move-result v11

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_16

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getBottom()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_19

    :cond_16
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_17
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_19

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_18

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getRight()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_19

    :cond_18
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_19
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v10, :cond_1a

    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-eq v1, v10, :cond_1a

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    :cond_1a
    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1e

    new-instance v8, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/glview/GLSlider$1;

    invoke-direct {v10, p0, v1, v2, v3}, Lcom/samsung/android/glview/GLSlider$1;-><init>(Lcom/samsung/android/glview/GLSlider;IFF)V

    invoke-direct {v8, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v10, "GaugeTranslationThread"

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :cond_1b
    :goto_6
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v10, :cond_1c

    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-eq v1, v10, :cond_1c

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    :cond_1c
    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    :cond_1d
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_1e
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1b

    new-instance v8, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/glview/GLSlider$2;

    invoke-direct {v10, p0, v1}, Lcom/samsung/android/glview/GLSlider$2;-><init>(Lcom/samsung/android/glview/GLSlider;I)V

    invoke-direct {v8, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v10, "GaugeTranslationThread"

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method protected onVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->onVisibilityChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->onVisibilityChanged(I)V

    :cond_2
    return-void
.end method

.method public setCurrentStep(I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_3

    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge p1, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v0

    const-string v1, "GLSlider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-ne v1, v0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v3, v6}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    :cond_1
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v3}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGaugeBar(FFI)V
    .locals 2

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    return-void
.end method

.method public setGaugeBarSize()V
    .locals 10

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getTranslateX()F

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getTranslateY()F

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    invoke-virtual {v4, v5, v7, v6}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    sub-float v5, v0, v5

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    :goto_0
    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v0, v7, v6}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    sub-float/2addr v5, v0

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    add-float v5, v0, v9

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v7, v1, v6}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    sub-float/2addr v5, v1

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    :goto_2
    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    invoke-virtual {v4, v7, v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    sub-float v5, v1, v5

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v7, v1, v6}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    add-float v5, v1, v9

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    sub-float v4, v2, v1

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setGaugeMarker(II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v6, 0x0

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move v3, v2

    move v4, p1

    move v5, p2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iput-object p0, v0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLSlider;->setStepIndicatorPosition()V

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveLayout(FF)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v3

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveLayout(FF)V

    goto :goto_0
.end method

.method public setGaugeZeroStep(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    :cond_1
    return-void
.end method

.method public setMarkerPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public setMarkerVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iput p1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    :cond_0
    return-void
.end method

.method public setOrder(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSliderBackground(FFFFIZ)V
    .locals 7

    if-eqz p6, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    goto :goto_0
.end method

.method public setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    return-void
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method

.method protected translateStepByOrdering(I)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :goto_0
    return p1

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    goto :goto_0
.end method
