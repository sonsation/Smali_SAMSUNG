.class public Lcom/android/launcher3/common/drag/DragView;
.super Landroid/view/View;
.source "DragView.java"


# static fields
.field public static COLOR_CHANGE_DURATION:I = 0x0

.field public static final EXTRA_VIEW_SCALE_FACTOR:F = 1.0f

.field public static final EXTRA_VIEW_SHOW_DURATION:I = 0xc8

.field public static final VIEW_SHOW_DURATION:I = 0x96

.field public static final VIEW_ZOOM_DURATION:I = 0x96

.field private static sDragAlpha:F


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

.field private mCrossFadeBitmap:Landroid/graphics/Bitmap;

.field private mCrossFadeProgress:F

.field private mCurrentFilter:[F

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragOutline:Landroid/graphics/drawable/Drawable;

.field private mDragRegion:Landroid/graphics/Rect;

.field private mDragVisualizeOffset:Landroid/graphics/Point;

.field private mFilterAnimator:Landroid/animation/ValueAnimator;

.field private mHasDrawn:Z

.field private mIntrinsicIconSize:I

.field private mIsExtraDragView:Z

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mSourceView:Landroid/view/View;

.field private mTargetOffsetX:I

.field private mTargetOffsetY:I

.field private mTopDelta:I

.field private mTouchX:I

.field private mTouchY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x78

    sput v0, Lcom/android/launcher3/common/drag/DragView;->COLOR_CHANGE_DURATION:I

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/launcher3/common/drag/DragView;->sDragAlpha:F

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V
    .locals 12
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "registrationX"    # I
    .param p4, "registrationY"    # I
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "initialScale"    # F

    .prologue
    .line 97
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher3/common/drag/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIFFZ)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIFFZ)V
    .locals 4
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "registrationX"    # I
    .param p4, "registrationY"    # I
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "initialScale"    # F
    .param p10, "scaleFactor"    # F
    .param p11, "extraDragView"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/common/drag/DragView;->mHasDrawn:Z

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/common/drag/DragView;->mCrossFadeProgress:F

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/common/drag/DragView;->mOffsetX:F

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/common/drag/DragView;->mOffsetY:F

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/common/drag/DragView;->mIntrinsicIconSize:I

    .line 103
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 104
    iput-boolean p11, p0, Lcom/android/launcher3/common/drag/DragView;->mIsExtraDragView:Z

    .line 107
    invoke-virtual {p0, p9}, Lcom/android/launcher3/common/drag/DragView;->setScaleX(F)V

    .line 108
    invoke-virtual {p0, p9}, Lcom/android/launcher3/common/drag/DragView;->setScaleY(F)V

    .line 111
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 112
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mAnim:Landroid/animation/ValueAnimator;

    iget-boolean v2, p0, Lcom/android/launcher3/common/drag/DragView;->mIsExtraDragView:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0xc8

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/common/drag/DragView$1;

    invoke-direct {v2, p0, p9, p10}, Lcom/android/launcher3/common/drag/DragView$1;-><init>(Lcom/android/launcher3/common/drag/DragView;FF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 138
    invoke-static {p2, p5, p6, p7, p8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 139
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/drag/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 142
    iput p3, p0, Lcom/android/launcher3/common/drag/DragView;->mRegistrationX:I

    .line 143
    iput p4, p0, Lcom/android/launcher3/common/drag/DragView;->mRegistrationY:I

    .line 146
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 147
    .local v0, "ms":I
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/common/drag/DragView;->measure(II)V

    .line 148
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mPaint:Landroid/graphics/Paint;

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/drag/DragView;->setElevation(F)V

    .line 151
    return-void

    .line 112
    .end local v0    # "ms":I
    :cond_0
    const-wide/16 v2, 0x96

    goto :goto_0

    .line 111
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/drag/DragView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mTargetOffsetX:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/drag/DragView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mTargetOffsetY:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/common/drag/DragView;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mCurrentFilter:[F

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/common/drag/DragView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/common/drag/DragView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragView;
    .param p1, "x1"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/android/launcher3/common/drag/DragView;->mOffsetX:F

    return p1
.end method

.method static synthetic access$302(Lcom/android/launcher3/common/drag/DragView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragView;
    .param p1, "x1"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/android/launcher3/common/drag/DragView;->mOffsetY:F

    return p1
.end method

.method static synthetic access$400()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/launcher3/common/drag/DragView;->sDragAlpha:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/drag/DragView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mTouchX:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/drag/DragView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mRegistrationX:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/common/drag/DragView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mTouchY:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/common/drag/DragView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mRegistrationY:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/launcher3/common/drag/DragView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragView;
    .param p1, "x1"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/android/launcher3/common/drag/DragView;->mCrossFadeProgress:F

    return p1
.end method

.method private animateFilterTo([F)V
    .locals 4
    .param p1, "targetFilter"    # [F

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mCurrentFilter:[F

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 276
    .local v0, "oldFilter":[F
    :goto_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mCurrentFilter:[F

    .line 278
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 281
    :cond_0
    new-instance v1, Landroid/animation/FloatArrayEvaluator;

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragView;->mCurrentFilter:[F

    invoke-direct {v1, v2}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    .line 283
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    sget v2, Lcom/android/launcher3/common/drag/DragView;->COLOR_CHANGE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 284
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/common/drag/DragView$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/drag/DragView$3;-><init>(Lcom/android/launcher3/common/drag/DragView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 292
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 293
    return-void

    .line 275
    .end local v0    # "oldFilter":[F
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mCurrentFilter:[F

    goto :goto_0
.end method

.method public static setColorScale(ILandroid/graphics/ColorMatrix;)V
    .locals 5
    .param p0, "color"    # I
    .param p1, "target"    # Landroid/graphics/ColorMatrix;

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 371
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 372
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 371
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 373
    return-void
.end method


# virtual methods
.method public animateUp()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;-><init>(Landroid/view/View;F)V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateUp()V

    .line 414
    :cond_0
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->cancel()V

    .line 341
    :cond_1
    return-void
.end method

.method public crossFade(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 239
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 240
    .local v0, "va":Landroid/animation/ValueAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    new-instance v1, Lcom/android/launcher3/common/drag/DragView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/drag/DragView$2;-><init>(Lcom/android/launcher3/common/drag/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 248
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 249
    return-void

    .line 239
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getDragOutline()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mDragOutline:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDragRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDragRegionHeight()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getDragRegionLeft()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getDragRegionTop()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getDragRegionWidth()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mIntrinsicIconSize:I

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mOffsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mOffsetY:F

    return v0
.end method

.method public getRegistrationX()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mRegistrationX:I

    return v0
.end method

.method public getRegistrationY()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mRegistrationY:I

    return v0
.end method

.method public getSourceView()Landroid/view/View;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mSourceView:Landroid/view/View;

    return-object v0
.end method

.method public getTopDelta()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mTopDelta:I

    return v0
.end method

.method public hasDrawn()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragView;->mHasDrawn:Z

    return v0
.end method

.method public isExtraDragView()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragView;->mIsExtraDragView:Z

    return v0
.end method

.method move(II)V
    .locals 2
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 355
    iput p1, p0, Lcom/android/launcher3/common/drag/DragView;->mTouchX:I

    .line 356
    iput p2, p0, Lcom/android/launcher3/common/drag/DragView;->mTouchY:I

    .line 358
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mRegistrationX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/launcher3/common/drag/DragView;->mOffsetX:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/drag/DragView;->setTranslationX(F)V

    .line 359
    iget v0, p0, Lcom/android/launcher3/common/drag/DragView;->mRegistrationY:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/launcher3/common/drag/DragView;->mOffsetY:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/drag/DragView;->setTranslationY(F)V

    .line 360
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 216
    iput-boolean v1, p0, Lcom/android/launcher3/common/drag/DragView;->mHasDrawn:Z

    .line 217
    iget v4, p0, Lcom/android/launcher3/common/drag/DragView;->mCrossFadeProgress:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 218
    .local v1, "crossFade":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 219
    iget v4, p0, Lcom/android/launcher3/common/drag/DragView;->mCrossFadeProgress:F

    sub-float v4, v7, v4

    mul-float/2addr v4, v8

    float-to-int v0, v4

    .line 220
    .local v0, "alpha":I
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    .end local v0    # "alpha":I
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 223
    if-eqz v1, :cond_1

    .line 224
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/launcher3/common/drag/DragView;->mCrossFadeProgress:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 226
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 227
    .local v2, "sX":F
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 228
    .local v3, "sY":F
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 229
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 232
    .end local v2    # "sX":F
    .end local v3    # "sY":F
    :cond_1
    return-void

    .line 217
    .end local v1    # "crossFade":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/drag/DragView;->setMeasuredDimension(II)V

    .line 212
    return-void
.end method

.method remove()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 366
    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 367
    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mDragOutline:Landroid/graphics/drawable/Drawable;

    .line 368
    return-void
.end method

.method public resetLayoutParams()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/drag/DragView;->mOffsetY:F

    iput v0, p0, Lcom/android/launcher3/common/drag/DragView;->mOffsetX:F

    .line 345
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragView;->requestLayout()V

    .line 346
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragView;->invalidate()V

    .line 304
    return-void
.end method

.method public setColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 252
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 253
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher3/common/drag/DragView;->mPaint:Landroid/graphics/Paint;

    .line 255
    :cond_0
    if-eqz p1, :cond_1

    .line 256
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 257
    .local v0, "m1":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 259
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 260
    .local v1, "m2":Landroid/graphics/ColorMatrix;
    invoke-static {p1, v1}, Lcom/android/launcher3/common/drag/DragView;->setColorScale(ILandroid/graphics/ColorMatrix;)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 263
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/common/drag/DragView;->animateFilterTo([F)V

    .line 272
    .end local v0    # "m1":Landroid/graphics/ColorMatrix;
    .end local v1    # "m2":Landroid/graphics/ColorMatrix;
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragView;->mCurrentFilter:[F

    if-nez v2, :cond_2

    .line 266
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 267
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragView;->invalidate()V

    goto :goto_0

    .line 269
    :cond_2
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/common/drag/DragView;->animateFilterTo([F)V

    goto :goto_0
.end method

.method public setCrossFadeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "crossFadeBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    .line 236
    return-void
.end method

.method public setDragOutline(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dragOutline"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragView;->mDragOutline:Landroid/graphics/drawable/Drawable;

    .line 377
    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 195
    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 187
    return-void
.end method

.method public setIntrinsicIconSize(I)V
    .locals 0
    .param p1, "iconSize"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/android/launcher3/common/drag/DragView;->mIntrinsicIconSize:I

    .line 155
    return-void
.end method

.method public setSourceView(Landroid/view/View;)V
    .locals 0
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragView;->mSourceView:Landroid/view/View;

    .line 390
    return-void
.end method

.method public setTargetOffset(II)V
    .locals 0
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/android/launcher3/common/drag/DragView;->mTargetOffsetX:I

    .line 385
    iput p2, p0, Lcom/android/launcher3/common/drag/DragView;->mTargetOffsetY:I

    .line 386
    return-void
.end method

.method public setTopDelta(I)V
    .locals 0
    .param p1, "topDelta"    # I

    .prologue
    .line 401
    iput p1, p0, Lcom/android/launcher3/common/drag/DragView;->mTopDelta:I

    .line 402
    return-void
.end method

.method public show(II)V
    .locals 3
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    .line 316
    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    .line 317
    .local v0, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    .line 318
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    .line 319
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/drag/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iput p1, p0, Lcom/android/launcher3/common/drag/DragView;->mTouchX:I

    .line 323
    iput p2, p0, Lcom/android/launcher3/common/drag/DragView;->mTouchY:I

    .line 324
    iget v1, p0, Lcom/android/launcher3/common/drag/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/drag/DragView;->setTranslationX(F)V

    .line 325
    iget v1, p0, Lcom/android/launcher3/common/drag/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/drag/DragView;->setTranslationY(F)V

    .line 327
    new-instance v1, Lcom/android/launcher3/common/drag/DragView$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/drag/DragView$4;-><init>(Lcom/android/launcher3/common/drag/DragView;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/drag/DragView;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method
