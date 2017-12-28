.class public Landroid/preference/InfinitySeekArcView;
.super Landroid/view/View;
.source "InfinitySeekArcView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;
    }
.end annotation


# static fields
.field private static INVALID_PROGRESS_VALUE:I


# instance fields
.field private final mAngleOffset:I

.field private mArcColor:I

.field private mArcPaint:Landroid/graphics/Paint;

.field private mArcRadius:I

.field private mArcRect:Landroid/graphics/RectF;

.field private mArcWidth:I

.field private mClockwise:Z

.field private mEnabled:Z

.field private mMax:I

.field private mOnSeekArcChangeListener:Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;

.field private mProgress:I

.field private mProgressColor:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressSweep:F

.field private mProgressWidth:I

.field private mRotation:I

.field private mRoundedEdges:Z

.field private mStartAngle:I

.field private mSweepAngle:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbXPos:I

.field private mThumbYPos:I

.field private mTouchAngle:D

.field private mTouchIgnoreRadius:F

.field private mTouchInside:Z

.field private mTranslateX:I

.field private mTranslateY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Landroid/preference/InfinitySeekArcView;->INVALID_PROGRESS_VALUE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/preference/InfinitySeekArcView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "progressBarStyle"

    invoke-static {p1, v0}, Landroid/preference/InfinitySet$Utils;->getIDandroidAttr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/InfinitySeekArcView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/InfinitySeekArcView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getProgressForAngle(D)I
    .locals 5

    invoke-direct {p0}, Landroid/preference/InfinitySeekArcView;->valuePerDegree()F

    move-result v1

    float-to-double v2, v1

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    if-gez v0, :cond_0

    sget v0, Landroid/preference/InfinitySeekArcView;->INVALID_PROGRESS_VALUE:I

    :cond_0
    iget v1, p0, Landroid/preference/InfinitySeekArcView;->mMax:I

    if-le v0, v1, :cond_1

    sget v0, Landroid/preference/InfinitySeekArcView;->INVALID_PROGRESS_VALUE:I

    :cond_1
    return v0
.end method

.method private getTouchDegrees(FF)D
    .locals 8

    iget v4, p0, Landroid/preference/InfinitySeekArcView;->mTranslateX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    iget v4, p0, Landroid/preference/InfinitySeekArcView;->mTranslateY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    iget-boolean v4, p0, Landroid/preference/InfinitySeekArcView;->mClockwise:Z

    if-eqz v4, :cond_1

    :goto_0
    float-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v6

    iget v6, p0, Landroid/preference/InfinitySeekArcView;->mRotation:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    const-wide v4, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v4

    :cond_0
    iget v4, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    int-to-double v4, v4

    sub-double/2addr v0, v4

    return-wide v0

    :cond_1
    neg-float v2, v2

    goto :goto_0
.end method

.method private ignoreTouch(FF)Z
    .locals 6

    const/4 v0, 0x0

    iget v4, p0, Landroid/preference/InfinitySeekArcView;->mTranslateX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    iget v4, p0, Landroid/preference/InfinitySeekArcView;->mTranslateY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    iget v4, p0, Landroid/preference/InfinitySeekArcView;->mTouchIgnoreRadius:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, -0x5a

    iput v0, p0, Landroid/preference/InfinitySeekArcView;->mAngleOffset:I

    iput-boolean v1, p0, Landroid/preference/InfinitySeekArcView;->mRoundedEdges:Z

    iput-boolean v2, p0, Landroid/preference/InfinitySeekArcView;->mEnabled:Z

    iput v1, p0, Landroid/preference/InfinitySeekArcView;->mArcRadius:I

    iput v1, p0, Landroid/preference/InfinitySeekArcView;->mProgressSweep:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/preference/InfinitySeekArcView;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->density:F

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "zff_seek_arc_control_selector"

    invoke-static {p1, v8}, Landroid/preference/InfinitySet$Utils;->getIDinternalDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/preference/InfinitySeekArcView;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mProgressWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    iput v8, p0, Landroid/preference/InfinitySeekArcView;->mProgressWidth:I

    if-eqz p2, :cond_0

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mThumb:Landroid/graphics/drawable/Drawable;

    neg-int v9, v6

    neg-int v10, v7

    invoke-virtual {v8, v9, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget v1, p0, Landroid/preference/InfinitySeekArcView;->mArcColor:I

    iget v3, p0, Landroid/preference/InfinitySeekArcView;->mProgressColor:I

    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mProgress:I

    iget v9, p0, Landroid/preference/InfinitySeekArcView;->mMax:I

    if-le v8, v9, :cond_2

    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mMax:I

    :goto_0
    iput v8, p0, Landroid/preference/InfinitySeekArcView;->mProgress:I

    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mProgress:I

    if-gez v8, :cond_3

    const/4 v8, 0x0

    :goto_1
    iput v8, p0, Landroid/preference/InfinitySeekArcView;->mProgress:I

    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    const/16 v9, 0x168

    if-le v8, v9, :cond_4

    const/16 v8, 0x168

    :goto_2
    iput v8, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    if-gez v8, :cond_5

    const/4 v8, 0x0

    :goto_3
    iput v8, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mProgress:I

    int-to-float v8, v8

    iget v9, p0, Landroid/preference/InfinitySeekArcView;->mMax:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iput v8, p0, Landroid/preference/InfinitySeekArcView;->mProgressSweep:F

    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    const/16 v9, 0x168

    if-le v8, v9, :cond_6

    const/4 v8, 0x0

    :goto_4
    iput v8, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    if-gez v8, :cond_7

    const/4 v8, 0x0

    :goto_5
    iput v8, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    iget v9, p0, Landroid/preference/InfinitySeekArcView;->mArcWidth:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    iget v9, p0, Landroid/preference/InfinitySeekArcView;->mProgressWidth:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v8, p0, Landroid/preference/InfinitySeekArcView;->mRoundedEdges:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v8, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_1
    return-void

    :cond_2
    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mProgress:I

    goto/16 :goto_0

    :cond_3
    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mProgress:I

    goto/16 :goto_1

    :cond_4
    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    goto/16 :goto_2

    :cond_5
    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    goto/16 :goto_3

    :cond_6
    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    goto :goto_4

    :cond_7
    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    goto :goto_5
.end method

.method private onProgressRefresh(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/InfinitySeekArcView;->updateProgress(IZ)V

    return-void
.end method

.method private onStartTrackingTouch()V
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mOnSeekArcChangeListener:Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mOnSeekArcChangeListener:Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;

    invoke-interface {v0, p0}, Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;->onStartTrackingTouch(Landroid/preference/InfinitySeekArcView;)V

    :cond_0
    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mOnSeekArcChangeListener:Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mOnSeekArcChangeListener:Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;

    invoke-interface {v0, p0}, Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;->onStopTrackingTouch(Landroid/preference/InfinitySeekArcView;)V

    :cond_0
    return-void
.end method

.method private updateOnTouch(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/preference/InfinitySeekArcView;->ignoreTouch(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v4}, Landroid/preference/InfinitySeekArcView;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/preference/InfinitySeekArcView;->getTouchDegrees(FF)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/preference/InfinitySeekArcView;->mTouchAngle:D

    iget-wide v2, p0, Landroid/preference/InfinitySeekArcView;->mTouchAngle:D

    invoke-direct {p0, v2, v3}, Landroid/preference/InfinitySeekArcView;->getProgressForAngle(D)I

    move-result v1

    invoke-direct {p0, v1, v4}, Landroid/preference/InfinitySeekArcView;->onProgressRefresh(IZ)V

    goto :goto_0
.end method

.method private updateProgress(IZ)V
    .locals 2

    sget v0, Landroid/preference/InfinitySeekArcView;->INVALID_PROGRESS_VALUE:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/preference/InfinitySeekArcView;->mMax:I

    if-le p1, v0, :cond_1

    iget p1, p0, Landroid/preference/InfinitySeekArcView;->mMax:I

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    iput p1, p0, Landroid/preference/InfinitySeekArcView;->mProgress:I

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mOnSeekArcChangeListener:Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mOnSeekArcChangeListener:Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;

    invoke-interface {v0, p0, p1, p2}, Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;->onProgressChanged(Landroid/preference/InfinitySeekArcView;IZ)V

    :cond_3
    int-to-float v0, p1

    iget v1, p0, Landroid/preference/InfinitySeekArcView;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/preference/InfinitySeekArcView;->mProgressSweep:F

    invoke-direct {p0}, Landroid/preference/InfinitySeekArcView;->updateThumbPosition()V

    invoke-virtual {p0}, Landroid/preference/InfinitySeekArcView;->invalidate()V

    goto :goto_0
.end method

.method private updateThumbPosition()V
    .locals 6

    iget v1, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    int-to-float v1, v1

    iget v2, p0, Landroid/preference/InfinitySeekArcView;->mProgressSweep:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/preference/InfinitySeekArcView;->mRotation:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-int v0, v1

    iget v1, p0, Landroid/preference/InfinitySeekArcView;->mArcRadius:I

    int-to-double v2, v1

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/preference/InfinitySeekArcView;->mThumbXPos:I

    iget v1, p0, Landroid/preference/InfinitySeekArcView;->mArcRadius:I

    int-to-double v2, v1

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/preference/InfinitySeekArcView;->mThumbYPos:I

    return-void
.end method

.method private valuePerDegree()F
    .locals 2

    iget v0, p0, Landroid/preference/InfinitySeekArcView;->mMax:I

    int-to-float v0, v0

    iget v1, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v1, p0, Landroid/preference/InfinitySeekArcView;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/InfinitySeekArcView;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekArcView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroid/preference/InfinitySeekArcView;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/preference/InfinitySeekArcView;->invalidate()V

    return-void
.end method

.method public getArcColor()I
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getArcRotation()I
    .locals 1

    iget v0, p0, Landroid/preference/InfinitySeekArcView;->mRotation:I

    return v0
.end method

.method public getArcWidth()I
    .locals 1

    iget v0, p0, Landroid/preference/InfinitySeekArcView;->mArcWidth:I

    return v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Landroid/preference/InfinitySeekArcView;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Landroid/preference/InfinitySeekArcView;->mProgress:I

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getProgressWidth()I
    .locals 1

    iget v0, p0, Landroid/preference/InfinitySeekArcView;->mProgressWidth:I

    return v0
.end method

.method public getStartAngle()I
    .locals 1

    iget v0, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    return v0
.end method

.method public getSweepAngle()I
    .locals 1

    iget v0, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    return v0
.end method

.method public isClockwise()Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/InfinitySeekArcView;->mClockwise:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/InfinitySeekArcView;->mEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/preference/InfinitySeekArcView;->mClockwise:Z

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Landroid/preference/InfinitySeekArcView;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Landroid/preference/InfinitySeekArcView;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    iget v0, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    add-int/lit8 v0, v0, -0x5a

    iget v1, p0, Landroid/preference/InfinitySeekArcView;->mRotation:I

    add-int v6, v0, v1

    iget v7, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    iget-object v1, p0, Landroid/preference/InfinitySeekArcView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v6

    int-to-float v3, v7

    iget-object v5, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/preference/InfinitySeekArcView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v6

    iget v3, p0, Landroid/preference/InfinitySeekArcView;->mProgressSweep:F

    iget-object v5, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Landroid/preference/InfinitySeekArcView;->mEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/preference/InfinitySeekArcView;->mTranslateX:I

    iget v1, p0, Landroid/preference/InfinitySeekArcView;->mThumbXPos:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/preference/InfinitySeekArcView;->mTranslateY:I

    iget v2, p0, Landroid/preference/InfinitySeekArcView;->mThumbYPos:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/preference/InfinitySeekArcView;->getSuggestedMinimumHeight()I

    move-result v7

    invoke-static {v7, p2}, Landroid/preference/InfinitySeekArcView;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/preference/InfinitySeekArcView;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v7, p1}, Landroid/preference/InfinitySeekArcView;->getDefaultSize(II)I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    int-to-float v7, v6

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/preference/InfinitySeekArcView;->mTranslateX:I

    int-to-float v7, v2

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/preference/InfinitySeekArcView;->mTranslateY:I

    invoke-virtual {p0}, Landroid/preference/InfinitySeekArcView;->getPaddingLeft()I

    move-result v7

    sub-int v0, v4, v7

    div-int/lit8 v7, v0, 0x2

    iput v7, p0, Landroid/preference/InfinitySeekArcView;->mArcRadius:I

    div-int/lit8 v7, v2, 0x2

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v7, v8

    int-to-float v5, v7

    div-int/lit8 v7, v6, 0x2

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v7, v8

    int-to-float v3, v7

    iget-object v7, p0, Landroid/preference/InfinitySeekArcView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v8, v0

    add-float/2addr v8, v3

    int-to-float v9, v0

    add-float/2addr v9, v5

    invoke-virtual {v7, v3, v5, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget v7, p0, Landroid/preference/InfinitySeekArcView;->mProgressSweep:F

    float-to-int v7, v7

    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/preference/InfinitySeekArcView;->mRotation:I

    add-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x5a

    iget v7, p0, Landroid/preference/InfinitySeekArcView;->mArcRadius:I

    int-to-double v8, v7

    int-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, p0, Landroid/preference/InfinitySeekArcView;->mThumbXPos:I

    iget v7, p0, Landroid/preference/InfinitySeekArcView;->mArcRadius:I

    int-to-double v8, v7

    int-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, p0, Landroid/preference/InfinitySeekArcView;->mThumbYPos:I

    iget-boolean v7, p0, Landroid/preference/InfinitySeekArcView;->mTouchInside:Z

    invoke-virtual {p0, v7}, Landroid/preference/InfinitySeekArcView;->setTouchInSide(Z)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/preference/InfinitySeekArcView;->mEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinitySeekArcView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Landroid/preference/InfinitySeekArcView;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/preference/InfinitySeekArcView;->updateOnTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/preference/InfinitySeekArcView;->updateOnTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/preference/InfinitySeekArcView;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Landroid/preference/InfinitySeekArcView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/preference/InfinitySeekArcView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Landroid/preference/InfinitySeekArcView;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Landroid/preference/InfinitySeekArcView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/preference/InfinitySeekArcView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setArcColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/preference/InfinitySeekArcView;->invalidate()V

    return-void
.end method

.method public setArcRotation(I)V
    .locals 0

    iput p1, p0, Landroid/preference/InfinitySeekArcView;->mRotation:I

    invoke-direct {p0}, Landroid/preference/InfinitySeekArcView;->updateThumbPosition()V

    return-void
.end method

.method public setArcWidth(I)V
    .locals 2

    iput p1, p0, Landroid/preference/InfinitySeekArcView;->mArcWidth:I

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setClockwise(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/preference/InfinitySeekArcView;->mClockwise:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/preference/InfinitySeekArcView;->mEnabled:Z

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Landroid/preference/InfinitySeekArcView;->mMax:I

    return-void
.end method

.method public setOnSeekArcChangeListener(Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/InfinitySeekArcView;->mOnSeekArcChangeListener:Landroid/preference/InfinitySeekArcView$OnSeekArcChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/InfinitySeekArcView;->updateProgress(IZ)V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/preference/InfinitySeekArcView;->invalidate()V

    return-void
.end method

.method public setProgressWidth(I)V
    .locals 2

    iput p1, p0, Landroid/preference/InfinitySeekArcView;->mProgressWidth:I

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setRoundedEdges(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/preference/InfinitySeekArcView;->mRoundedEdges:Z

    iget-boolean v0, p0, Landroid/preference/InfinitySeekArcView;->mRoundedEdges:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/preference/InfinitySeekArcView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0
.end method

.method public setStartAngle(I)V
    .locals 0

    iput p1, p0, Landroid/preference/InfinitySeekArcView;->mStartAngle:I

    invoke-direct {p0}, Landroid/preference/InfinitySeekArcView;->updateThumbPosition()V

    return-void
.end method

.method public setSweepAngle(I)V
    .locals 0

    iput p1, p0, Landroid/preference/InfinitySeekArcView;->mSweepAngle:I

    invoke-direct {p0}, Landroid/preference/InfinitySeekArcView;->updateThumbPosition()V

    return-void
.end method

.method public setTouchInSide(Z)V
    .locals 4

    iget-object v2, p0, Landroid/preference/InfinitySeekArcView;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Landroid/preference/InfinitySeekArcView;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    iput-boolean p1, p0, Landroid/preference/InfinitySeekArcView;->mTouchInside:Z

    iget-boolean v2, p0, Landroid/preference/InfinitySeekArcView;->mTouchInside:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/preference/InfinitySeekArcView;->mArcRadius:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    iput v2, p0, Landroid/preference/InfinitySeekArcView;->mTouchIgnoreRadius:F

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Landroid/preference/InfinitySeekArcView;->mArcRadius:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Landroid/preference/InfinitySeekArcView;->mTouchIgnoreRadius:F

    goto :goto_0
.end method
